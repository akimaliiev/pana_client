part of interceptors;

class InternetConnectionInterceptor extends Interceptor {
  final AppEventNotifier _appEventNotifier;

  const InternetConnectionInterceptor({
    required AppEventNotifier appEventNotifier,
  }) : _appEventNotifier = appEventNotifier;

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final List<ConnectivityResult> connectivityResult = await Connectivity().checkConnectivity();

    if (connectivityResult.contains(ConnectivityResult.none)) {
      _appEventNotifier.notify(const InternetConnectionLostEvent());

      return handler.reject(
        DioException(
          requestOptions: options,
          message: 'No Internet Connection',
          type: DioExceptionType.connectionError,
        ),
      );
    }

    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.type == DioExceptionType.connectionError ||
        err.type == DioExceptionType.connectionTimeout) {
      _appEventNotifier.notify(const InternetConnectionLostEvent());
    }

    return handler.next(err);
  }
}
