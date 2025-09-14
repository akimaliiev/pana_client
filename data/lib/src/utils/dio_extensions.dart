import 'package:dio/dio.dart';

extension ResponseErrorsCodes on Response<dynamic> {
  bool get isClientError => statusCode! >= 400 && statusCode! < 500;
  bool get isUnauthorizedError => statusCode == 401;
  bool get isForbiddenError => statusCode == 403;
  bool get isNotFoundError => statusCode == 404;
  bool get isLogicError => statusCode == 422;
  bool get isServerError => statusCode! >= 500 && statusCode! < 600;
}
