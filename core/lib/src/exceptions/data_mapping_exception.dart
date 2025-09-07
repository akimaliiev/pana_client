part of exceptions;

class DataMappingException implements Exception {
  final String? errorMessage;
  final StackTrace errorStackTrace;
  final Map<String, dynamic> model;
  final Map<String, dynamic> response;

  DataMappingException({
    required this.errorMessage,
    required this.errorStackTrace,
    required this.model,
    required this.response,
  });

  @override
  String toString() => "'$errorMessage' on stackTrace: $errorStackTrace with model: $model and response: $response";
}
