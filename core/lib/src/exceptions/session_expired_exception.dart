part of exceptions;

class SessionExpiredException extends DioException implements Exception {
  SessionExpiredException({required super.requestOptions});

  @override
  String toString() =>
      "'${requestOptions.uri}' with data ${requestOptions.data} and headers: ${requestOptions.headers}";
}
