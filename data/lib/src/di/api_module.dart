import 'package:core/core.dart';
import 'package:data/src/interceptors/interceptors.dart';
import 'package:data/src/providers/api/api_provider.dart';
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';

@module
abstract class ApiModule {
  @Named('BaseUrl')
  @singleton
  String get baseUrl => dotenv.env['BASE_URL']!;

  @Named('Headers')
  @singleton
  Map<String, dynamic> get headers => <String, dynamic>{
        'Content-Type': 'application/json',
      };

  @injectable
  ApiProvider apiProvider(
    AppEventNotifier appEventNotifier,
    @Named('BaseUrl') String baseUrl,
    @Named('Headers') Map<String, dynamic> headers,
    TokenRepository tokenRepository,
  ) {
    final InternetConnectionInterceptor internetConnectionInterceptor =
        InternetConnectionInterceptor(appEventNotifier: appEventNotifier);

    final ApiProvider result = ApiProvider(
      dio: Dio(),
      appEventNotifier: appEventNotifier,
      baseUrl: baseUrl,
      headers: headers,
      internetConnectionInterceptor: internetConnectionInterceptor,
      tokenRepository: tokenRepository,
    );

    return result;
  }

  @singleton
  Dio dio(ApiProvider apiProvider) => apiProvider.provider;
}
