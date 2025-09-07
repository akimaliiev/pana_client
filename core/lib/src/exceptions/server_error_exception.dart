part of exceptions;

class ServerErrorException extends DioException implements Exception {
  final String? errorMessage;

  ServerErrorException({required this.errorMessage, required super.requestOptions});

  @override
  String toString() =>
      "'${requestOptions.uri}' with data ${requestOptions.data}, headers: ${requestOptions.headers} and message: $errorMessage";
}
