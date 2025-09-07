part of exceptions;

class SourceException extends DioException implements Exception {
  final String? errorMessage;

  SourceException({required this.errorMessage, required super.requestOptions});

  @override
  String toString() =>
      "'${requestOptions.uri}' with data ${requestOptions.data}, headers: ${requestOptions.headers} and message: $errorMessage";
}
