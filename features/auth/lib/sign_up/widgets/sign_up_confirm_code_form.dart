import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';

class SignUpConfirmCodeForm extends StatelessWidget {
  final String phone;
  final VoidCallback onResend;
  final ValueChanged<String> onComplete;
  final bool hasCodeError;

  const SignUpConfirmCodeForm({
    required this.phone,
    required this.onResend,
    required this.onComplete,
    required this.hasCodeError,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AppLocalization localization = context.localization;
    final AppColorsTheme colors = context.colors;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDimens.borderRadiusMedium),
            gradient: colors.background.accentGradient,
          ),
          child: const AppIcon.data(LucideIcons.tablet).call(color: colors.text.invertedPrimary),
        ),
        const SizedBox(height: AppDimens.spacerMedium),
        Text(
          localization.signIn_confirmCode_title,
          style: AppFonts.h2,
        ),
        const SizedBox(height: AppDimens.spacerSmall),
        InputCodeForm(
          phoneNumber: phone,
          onCodeCompleted: onComplete,
          onResendRequested: onResend,
          hasError: hasCodeError,
        ),
      ],
    );
  }
}
