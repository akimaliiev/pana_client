import 'dart:developer';

import 'package:core/core.dart';
import 'package:data/src/interceptors/interceptors.dart';
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiProvider {
  final Dio _dio;
  static const String _networkKey = 'Network';

  ApiProvider({
    required String baseUrl,
    required Dio dio,
    required Map<String, dynamic> headers,
    required InternetConnectionInterceptor internetConnectionInterceptor,
    required TokenRepository tokenRepository,
    required AppEventNotifier appEventNotifier,
  }) : _dio = dio {
    _dio.options.baseUrl = baseUrl;

    _dio.options.headers.addAll(headers);

    _dio.interceptors.addAll(
      <Interceptor>[
        internetConnectionInterceptor,
        AuthInterceptor(
          dio: dio,
          appEventNotifier: appEventNotifier,
          tokenRepository: tokenRepository,
        ),
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          maxWidth: 120,
          compact: false,
          logPrint: (Object object) => log(object.toString(), name: _networkKey),
        ),
      ],
    );
  }

  Dio get provider => _dio;
}
