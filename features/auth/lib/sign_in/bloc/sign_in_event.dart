part of 'sign_in_bloc.dart';

abstract class SignInEvent {
  const SignInEvent();
}

class ChangePhone extends SignInEvent {
  final PhoneNumber value;

  const ChangePhone(this.value);
}

class SendCode extends SignInEvent {
  const SendCode();
}

class ResendCode extends SignInEvent {
  const ResendCode();
}

class VerifyCode extends SignInEvent {
  final String value;

  const VerifyCode(this.value);
}

class SignInGuest extends SignInEvent {
  const SignInGuest();
}

class NavigateSignUp extends SignInEvent {
  const NavigateSignUp();
}
