part of interceptors;

class AuthInterceptor extends Interceptor {
  final Dio _dio;
  final AppEventNotifier _appEventNotifier;
  final TokenRepository _tokenRepository;

  static const List<String> _exactPublicRoutes = <String>[];

  static const List<String> _prefixPublicRoutes = <String>[];

  const AuthInterceptor({
    required Dio dio,
    required AppEventNotifier appEventNotifier,
    required TokenRepository tokenRepository,
  })  : _dio = dio,
        _appEventNotifier = appEventNotifier,
        _tokenRepository = tokenRepository;

  bool _isPublic(String path) =>
      _exactPublicRoutes.contains(path) ||
      _prefixPublicRoutes.any((String route) => path.startsWith(route));

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    if (_isPublic(options.uri.path)) return handler.next(options);

    final String? accessToken = await _tokenRepository.accessToken;
    if (accessToken != null) options.headers['Authorization'] = 'Bearer $accessToken';

    return handler.next(options);
  }

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    if (_isPublic(err.requestOptions.uri.path)) return handler.next(err);

    if ((err.response?.statusCode == 401 || err.response?.statusCode == 403) &&
        err.requestOptions.uri.path != '/app/v1/customer/auth/refresh') {
      try {
        final String? newAccessToken = await _refreshToken();

        if (newAccessToken != null) {
          err.requestOptions.headers['Authorization'] = 'Bearer $newAccessToken';
          final Response<dynamic> response = await _dio.fetch(err.requestOptions);

          return handler.resolve(response);
        } else {
          _appEventNotifier.notify(const SessionExpiredEvent());

          return handler.reject(err);
        }
      } on DioException {
        _appEventNotifier.notify(const SessionExpiredEvent());

        return handler.reject(err);
      }
    }

    return handler.next(err);
  }

  Future<String?> _refreshToken() async {
    final String? refreshToken = await _tokenRepository.refreshToken;
    if (refreshToken == null) return null;

    try {
      final Response<Map<String, dynamic>> response = await Dio().post(
        '/app/v1/customer/auth/refresh',
        data: <String, String>{
          'refresh_token': refreshToken,
        },
      );

      if (response.statusCode == 200) {
        final String? newAccessToken = response.data?['access_token'];
        final String? newRefreshToken = response.data?['refresh_token'];

        if (newAccessToken == null || newRefreshToken == null) return null;

        await _tokenRepository.saveTokens(
          accessToken: newAccessToken,
          refreshToken: newRefreshToken,
        );

        return newAccessToken;
      }
    } catch (e) {
      _appEventNotifier.notify(const SessionExpiredEvent());
    }

    return null;
  }
}
