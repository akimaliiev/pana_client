import 'package:dio/dio.dart';
import 'api_config.dart';
import 'models/customer_profile.dart';

class ApiException implements Exception {
  final String message; final int? httpCode; final int? code;
  ApiException(this.message, {this.httpCode, this.code});
  @override String toString() => 'ApiException($httpCode/$code): $message';
}

class UnauthorizedException extends ApiException {
  UnauthorizedException(String msg, {int? code})
      : super(msg, httpCode: 401, code: code);
}

class UserApi {
  UserApi({Dio? dio})
      : _dio = dio ??
            Dio(BaseOptions(
              baseUrl: ApiConfig.baseUrl,
              connectTimeout: const Duration(seconds: 15),
              receiveTimeout: const Duration(seconds: 20),
            ));

  final Dio _dio;

  Future<CustomerProfile> getProfile(String accessToken) async {
    try {
      final res = await _dio.get(
        '/app/v1/customer/profile',
        options: Options(headers: {
          'x-api-key': ApiConfig.apiKey,
          'Authorization': 'Bearer $accessToken',
        }),
      );

      final data = (res.data as Map)['data'] as Map<String, dynamic>;
      return CustomerProfile.fromJson(data);
    } on DioException catch (e) {
      final http = e.response?.statusCode;
      final body = e.response?.data;
      final apiCode = (body is Map) ? body['code'] as int? : null;
      final msg = (body is Map) ? body['message']?.toString() : e.message;

      if (http == 401) {
        throw UnauthorizedException(msg ?? 'Not authorized', code: apiCode);
      }
      throw ApiException(msg ?? 'Request failed', httpCode: http, code: apiCode);
    }
  }
}
