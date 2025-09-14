part of events;

final class ShowErrorToast extends CoreUiEvent {
  final dynamic exception;
  final String? message;

  const ShowErrorToast({
    required this.exception,
    this.message,
  });
}
