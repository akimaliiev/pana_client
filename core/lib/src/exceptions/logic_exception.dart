part of exceptions;

class LogicException extends DioException implements Exception {
  final String? errorMessage;
  final Map<String, dynamic>? data;

  LogicException({
    required this.errorMessage,
    required super.requestOptions,
    this.data,
  });

  @override
  String toString() =>
      "'${requestOptions.uri}' with data ${requestOptions.data}, headers: ${requestOptions.headers}, message: $message";
}
