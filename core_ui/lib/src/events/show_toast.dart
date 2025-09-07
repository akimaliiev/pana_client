part of events;

final class ShowToast extends CoreUiEvent {
  final String message;
  final ToastType type;
  final String? error;

  const ShowToast({
    required this.message,
    required this.type,
    this.error,
  });
}
