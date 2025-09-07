part of exceptions;

class NotContainsAllDataException implements Exception {
  final String? errorMessage;

  NotContainsAllDataException({required this.errorMessage});

  @override
  String toString() => "'$errorMessage'";
}
