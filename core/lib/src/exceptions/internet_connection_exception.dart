part of exceptions;

class InternetConnectionException extends DioException implements Exception {
  final String? errorMessage;

  InternetConnectionException({required this.errorMessage, required super.requestOptions});

  @override
  String toString() =>
      "'${requestOptions.uri}' with data ${requestOptions.data}, headers: ${requestOptions.headers} and message: $errorMessage";
}
