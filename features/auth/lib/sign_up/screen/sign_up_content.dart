import 'package:auth/sign_up/bloc/sign_up_bloc.dart';
import 'package:auth/sign_up/widgets/sign_up_confirm_code_form.dart';
import 'package:auth/sign_up/widgets/sign_up_input_phone_form.dart';
import 'package:auth/sign_up/widgets/sign_up_user_data_form.dart';
import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';

class SignUpContent extends StatelessWidget {
  const SignUpContent({super.key});

  String? _mapEmailError(EmailErrorType errorType, AppLocalization localization) =>
      switch (errorType) {
        EmailErrorType.invalid => localization.auth_error_invalidEmail,
        EmailErrorType.none => null,
      };

  String? _mapFirstNameError(FirstNameErrorType errorType, AppLocalization localization) =>
      switch (errorType) {
        FirstNameErrorType.invalidLength => localization.auth_error_nameInvalidLength,
        FirstNameErrorType.invalidChars => localization.auth_error_nameInvalidChars,
        FirstNameErrorType.none => null,
      };

  String? _mapLastNameError(LastNameErrorType errorType, AppLocalization localization) =>
      switch (errorType) {
        LastNameErrorType.invalidLength => localization.auth_error_lastNameInvalidLength,
        LastNameErrorType.invalidChars => localization.auth_error_lastNameInvalidChars,
        LastNameErrorType.none => null,
      };

  String? _mapPhoneError(PhoneErrorType errorType, AppLocalization localization) =>
      switch (errorType) {
        PhoneErrorType.invalid => localization.auth_error_invalidPhone,
        PhoneErrorType.none => null,
      };

  @override
  Widget build(BuildContext context) {
    final AppColorsTheme colors = context.colors;
    final SignUpBloc bloc = context.read<SignUpBloc>();
    final AppLocalization localization = context.localization;

    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (BuildContext context, SignUpState state) {
        return AppScaffold(
          backgroundGradient: colors.background.primaryGradient,
          hasScrollBody: false,
          content: Center(
            child: switch (state.screenState) {
              SignUpScreenState.inputPhone => SignUpInputPhoneForm(
                  onSignInGuest: () => bloc.add(const SignInGuest()),
                  onPhoneChanged: (PhoneNumber phoneNumber) =>
                      bloc.add(ChangePhone(phoneNumber)),
                  phoneError: _mapPhoneError(state.phoneErrorType, localization),
                  sendCodeButtonState: state.sendCodeButtonState,
                  onSendCode: () => bloc.add(const SendCode()),
                  onNavigateSignIn: () => bloc.add(const NavigateSignIn()),
                ),
              SignUpScreenState.confirmCode => SignUpConfirmCodeForm(
                  phone: state.phone?.completeNumber ?? '',
                  onResend: () => bloc.add(const ResendCode()),
                  onComplete: (String code) => bloc.add(VerifyCode(code)),
                  hasCodeError: state.hasCodeError,
                ),
              SignUpScreenState.userData => SignUpUserDataForm(
                  localization: localization,
                  isPolicyAccepted: state.isPolicyAccepted,
                  isNewsAccepted: state.isNewsAccepted,
                  emailError: _mapEmailError(state.emailErrorType, localization),
                  firstNameError: _mapFirstNameError(state.firstNameErrorType, localization),
                  lastNameError: _mapLastNameError(state.lastNameErrorType, localization),
                  phoneError: _mapPhoneError(state.phoneErrorType, localization),
                  onEmailChanged: (String value) => bloc.add(ChangeEmail(value)),
                  onFirstNameChanged: (String value) => bloc.add(ChangeFirstName(value)),
                  onLastNameChanged: (String value) => bloc.add(ChangeLastName(value)),
                  onPhoneChanged: (PhoneNumber value) => bloc.add(ChangePhone(value)),
                  onPolicyStatusChanged: () => bloc.add(const ChangePolicyStatus()),
                  onNewsStatusChanged: () => bloc.add(const ChangeNewsStatus()),
                  onUsageRules: () => bloc.add(const NavigateUsageRules()),
                  onPrivacy: () => bloc.add(const NavigatePrivacy()),
                  onSignUp: () => bloc.add(const SignUp()),
                  signUpButtonState: state.signUpButtonState,
                ),
            },
          ),
        );
      },
    );
  }
}
