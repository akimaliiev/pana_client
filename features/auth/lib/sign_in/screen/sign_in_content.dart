import 'package:auth/sign_in/bloc/sign_in_bloc.dart';
import 'package:auth/sign_in/widgets/sign_in_confirm_code_form.dart';
import 'package:auth/sign_in/widgets/sign_in_input_phone_form.dart';
import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';

class SignInContent extends StatelessWidget {
  const SignInContent({super.key});

  @override
  Widget build(BuildContext context) {
    final AppColorsTheme colors = context.colors;
    final SignInBloc bloc = context.read<SignInBloc>();
    final AppLocalization localization = context.localization;

    return BlocBuilder<SignInBloc, SignInState>(
      builder: (BuildContext context, SignInState state) {
        return AppScaffold(
          backgroundGradient: colors.background.primaryGradient,
          hasScrollBody: false,
          content: Center(
            child: switch (state.screenState) {
              SignInScreenState.inputPhone => SignInInputPhoneForm(
                  onSignInGuest: () => bloc.add(const SignInGuest()),
                  onPhoneChanged: (PhoneNumber phoneNumber) => bloc.add(ChangePhone(phoneNumber)),
                  phoneError: _mapPhoneError(state.phoneErrorType, localization),
                  sendCodeButtonState: state.sendCodeButtonState,
                  onSendCode: () => bloc.add(const SendCode()),
                  onNavigateSignUp: () => bloc.add(const NavigateSignUp()),
                ),
              SignInScreenState.confirmCode => SignInConfirmCodeForm(
                  phoneNumber: state.phone?.completeNumber ?? '',
                  onResend: () => bloc.add(const ResendCode()),
                  onComplete: (String code) => bloc.add(VerifyCode(code)),
                  hasCodeError: state.hasCodeError,
                ),
            },
          ),
        );
      },
    );
  }

  String? _mapPhoneError(PhoneErrorType errorType, AppLocalization localization) {
    return errorType == PhoneErrorType.invalid ? localization.auth_error_invalidPhone : null;
  }
}
