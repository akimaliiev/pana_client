part of exceptions;

class ForbiddenException extends DioException implements Exception {
  final String? errorMessage;

  ForbiddenException({required this.errorMessage, required super.requestOptions});

  @override
  String toString() =>
      "'${requestOptions.uri}' with data ${requestOptions.data}, headers: ${requestOptions.headers} and message: $errorMessage";
}
