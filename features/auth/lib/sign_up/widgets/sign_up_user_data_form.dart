import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/gestures.dart';

class SignUpUserDataForm extends StatefulWidget {
  final AppLocalization localization;
  final ValueChanged<String> onEmailChanged;
  final ValueChanged<String> onFirstNameChanged;
  final ValueChanged<String> onLastNameChanged;
  final ValueChanged<PhoneNumber> onPhoneChanged;
  final VoidCallback onPolicyStatusChanged;
  final VoidCallback onNewsStatusChanged;
  final VoidCallback onUsageRules;
  final VoidCallback onPrivacy;
  final VoidCallback onSignUp;
  final bool isPolicyAccepted;
  final bool isNewsAccepted;
  final String? emailError;
  final String? firstNameError;
  final String? lastNameError;
  final String? phoneError;

  final ElementState signUpButtonState;

  const SignUpUserDataForm({
    required this.localization,
    required this.onEmailChanged,
    required this.onFirstNameChanged,
    required this.onLastNameChanged,
    required this.onPhoneChanged,
    required this.isPolicyAccepted,
    required this.isNewsAccepted,
    required this.emailError,
    required this.firstNameError,
    required this.lastNameError,
    required this.phoneError,
    required this.onPolicyStatusChanged,
    required this.onNewsStatusChanged,
    required this.onUsageRules,
    required this.onPrivacy,
    required this.signUpButtonState,
    required this.onSignUp,
    super.key,
  });

  @override
  State<SignUpUserDataForm> createState() => _SignUpUserDataFormState();
}

class _SignUpUserDataFormState extends State<SignUpUserDataForm> {
  late final TextEditingController _emailController;
  late final TextEditingController _firstNameController;
  late final TextEditingController _lastNameController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController()
      ..addListener(() => widget.onEmailChanged(_emailController.text));

    _firstNameController = TextEditingController()
      ..addListener(() => widget.onFirstNameChanged(_firstNameController.text));

    _lastNameController = TextEditingController()
      ..addListener(() => widget.onLastNameChanged(_lastNameController.text));
  }

  @override
  Widget build(BuildContext context) {
    final AppColorsTheme colors = context.colors;
    final AppLocalization localization = widget.localization;

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
        AppTextField(
          controller: _emailController,
          title: localization.field_email_title,
          hint: localization.field_email_hint,
          keyboardType: TextInputType.emailAddress,
          isRequired: true,
          error: widget.emailError,
        ),
        const SizedBox(height: AppDimens.spacerMedium),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: AppTextField(
                controller: _firstNameController,
                title: localization.field_firstName_title,
                hint: localization.field_firstName_hint,
                keyboardType: TextInputType.name,
                isRequired: true,
                error: widget.firstNameError,
              ),
            ),
            const SizedBox(width: AppDimens.spacerMedium),
            Expanded(
              child: AppTextField(
                controller: _lastNameController,
                title: localization.field_lastName_title,
                hint: localization.field_lastName_hint,
                keyboardType: TextInputType.name,
                isRequired: true,
                error: widget.lastNameError,
              ),
            ),
          ],
        ),
        const SizedBox(height: AppDimens.spacerLarge),
        AppCheckbox(
          value: widget.isPolicyAccepted,
          onChanged: (_) => widget.onPolicyStatusChanged(),
          child: RichText(
            text: TextSpan(
              style: AppFonts.h6.copyWith(color: colors.text.primary, height: 1.5),
              children: <InlineSpan>[
                TextSpan(text: '${localization.signUp_userData_agreeWith} '),
                TextSpan(
                  text: localization.signUp_userData_termsLink,
                  style: TextStyle(color: colors.text.accent, decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()..onTap = widget.onUsageRules,
                ),
                TextSpan(text: ' ${localization.common_and} '),
                TextSpan(
                  text: localization.signUp_userData_privacyLink,
                  style: TextStyle(color: colors.text.accent, decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()..onTap = widget.onPrivacy,
                ),
                TextSpan(text: ' *', style: TextStyle(color: colors.text.error)),
              ],
            ),
          ),
        ),
        const SizedBox(height: AppDimens.spacerSmall),
        AppCheckbox(
          value: widget.isNewsAccepted,
          onChanged: (_) => widget.onNewsStatusChanged(),
          child: Text(
            localization.signUp_userData_marketingAgreement,
            style: AppFonts.h6.copyWith(color: colors.text.secondary, height: 1.5),
          ),
        ),
        const SizedBox(height: AppDimens.spacerLarge),
        AppElevatedButton(
          title: localization.signUp_userData_action_signUp,
          state: widget.signUpButtonState,
          style: AppElevatedButtonStyle.accent,
          onTap: widget.onSignUp,
        ),
      ],
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();

    super.dispose();
  }
}
