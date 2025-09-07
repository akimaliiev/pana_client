import 'package:core_ui/core_ui.dart';

final class AppAlertDialogItem {
  final String text;
  final AppTextButtonStyle style;
  final Widget? tailing;
  final bool isEnabled;
  final bool isExpanded;
  final VoidCallback onPressed;

  const AppAlertDialogItem({
    required this.text,
    required this.onPressed,
    this.style = AppTextButtonStyle.primary,
    this.isEnabled = true,
    this.isExpanded = false,
    this.tailing,
  });
}
