import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/gestures.dart';

class SignUpInputPhoneForm extends StatelessWidget {
  final ValueChanged<PhoneNumber> onPhoneChanged;
  final String? phoneError;

  final VoidCallback onSignInGuest;
  final VoidCallback onSendCode;
  final VoidCallback onNavigateSignIn;

  final ElementState sendCodeButtonState;

  const SignUpInputPhoneForm({
    required this.onSignInGuest,
    required this.onPhoneChanged,
    required this.phoneError,
    required this.sendCodeButtonState,
    required this.onSendCode,
    required this.onNavigateSignIn,
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
            gradient: context.colors.background.accentGradient,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const AppIcon.data(LucideIcons.plane)
                  .call(color: colors.text.invertedPrimary),
              const SizedBox(width: 4),
              const AppIcon.data(LucideIcons.map).call(color: colors.text.invertedPrimary),
            ],
          ),
        ),
        const SizedBox(height: AppDimens.spacerLarge),
        Text(
          localization.signUp_inputPhone_title,
          style: AppFonts.h3.copyWith(color: colors.text.primary),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppDimens.spacerSmall),
        Text(
          localization.signUp_inputPhone_subtitle,
          style: AppFonts.h4.copyWith(color: colors.text.secondary),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppDimens.spacerLargest),
        AppPhoneField(
          onChangePhoneNumber: onPhoneChanged,
          errorText: phoneError,
        ),
        const SizedBox(height: AppDimens.spacerSmall),
        AppElevatedButton(
          title: localization.signUp_inputPhone_action_sendCode,
          state: sendCodeButtonState,
          style: AppElevatedButtonStyle.accent,
          onTap: onSendCode,
        ),
        const SizedBox(height: AppDimens.spacerMedium),
        AppElevatedButton(
          title: localization.signUp_inputPhone_action_signInGuest,
          onTap: onSignInGuest,
        ),
        const SizedBox(height: AppDimens.spacerLarge),
        Center(
          child: RichText(
            text: TextSpan(
              style: AppFonts.h5.copyWith(color: colors.text.secondary),
              children: <InlineSpan>[
                TextSpan(text: '${localization.signUp_inputPhone_action_signIn_hint} '),
                TextSpan(
                  text: localization.signUp_inputPhone_action_signIn_title,
                  style: TextStyle(
                    color: colors.text.accent,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = onNavigateSignIn,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
