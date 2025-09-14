import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/gestures.dart';

class SignInInputPhoneForm extends StatelessWidget {
  final ValueChanged<PhoneNumber> onPhoneChanged;
  final String? phoneError;

  final VoidCallback onSignInGuest;
  final VoidCallback onSendCode;
  final VoidCallback onNavigateSignUp;

  final ElementState sendCodeButtonState;

  const SignInInputPhoneForm({
    required this.onSignInGuest,
    required this.onPhoneChanged,
    required this.phoneError,
    required this.sendCodeButtonState,
    required this.onSendCode,
    required this.onNavigateSignUp,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AppLocalization localization = context.localization;
    final AppColorsTheme colors = context.colors;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AppIcons.logo.call(size: 160),
        const SizedBox(height: AppDimens.spacerLarge),
        Text(
          localization.signIn_inputPhone_title,
          style: AppFonts.h3.copyWith(color: colors.text.primary),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppDimens.spacerSmall),
        Text(
          localization.signIn_inputPhone_subtitle,
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
          title: localization.signIn_inputPhone_action_sendCode,
          state: sendCodeButtonState,
          style: AppElevatedButtonStyle.accent,
          onTap: onSendCode,
        ),
        const SizedBox(height: AppDimens.spacerMedium),
        AppElevatedButton(
          title: localization.signIn_inputPhone_action_signInGuest,
          onTap: onSignInGuest,
        ),
        const SizedBox(height: AppDimens.spacerLarge),
        Center(
          child: RichText(
            text: TextSpan(
              style: AppFonts.h5.copyWith(color: colors.text.secondary),
              children: <InlineSpan>[
                TextSpan(text: '${localization.signIn_inputPhone_noAccount} '),
                TextSpan(
                  text: localization.signIn_inputPhone_action_signUp,
                  style: TextStyle(
                    color: colors.text.accent,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = onNavigateSignUp,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
