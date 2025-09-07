part of exceptions;

class LogicException extends DioException implements Exception {
  final String? errorMessage;
  final List<String>? validationReasons;
  final Map<String, dynamic>? data;

  final String reason;

  LogicException({
    required this.errorMessage,
    required this.reason,
    this.validationReasons,
    this.data,
    required super.requestOptions,
  });

  bool containsValidationError(String validationError) =>
      validationReasons?.any((String reason) => RegExp(validationError).hasMatch(reason)) ?? false;

  @override
  String toString() =>
      "'${requestOptions.uri}' with data ${requestOptions.data}, headers: ${requestOptions.headers}, message: $errorMessage, validationError: $validationReasons and reason $reason";
}
