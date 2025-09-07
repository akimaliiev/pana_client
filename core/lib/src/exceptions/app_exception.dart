part of exceptions;

class AppException implements Exception {
  final String message;

  const AppException({
    required this.message,
  });

  const AppException.unknown() : message = 'Unknown Error!';

  @override
  String toString() => message;
}
