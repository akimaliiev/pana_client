import 'package:core_ui/core_ui.dart';
import 'package:pinput/pinput.dart';

class AppCodeField extends StatelessWidget {
  final String? errorText;
  final ValueChanged<String> onCompleted;

  const AppCodeField({
    required this.onCompleted,
    this.errorText,
    super.key,
  });

  static const double _pinSize = AppDimens.defaultInputHeight;

  @override
  Widget build(BuildContext context) {
    final AppColorsTheme colors = context.colors;

    final PinTheme defaultPinTheme = PinTheme(
      width: _pinSize,
      height: _pinSize,
      textStyle: AppFonts.h3,
      decoration: BoxDecoration(
        color: colors.primary,
        borderRadius: BorderRadius.circular(AppDimens.borderRadiusSmallest),
        border: Border.all(color: colors.border.primary, width: AppDimens.defaultBorderWidth * 2),
      ),
    );

    return Pinput(
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: defaultPinTheme,
      submittedPinTheme: defaultPinTheme,
      onCompleted: onCompleted,
      errorText: errorText,
      forceErrorState: errorText != null,
    );
  }
}
