part of 'sign_up_bloc.dart';

abstract class SignUpEvent {
  const SignUpEvent();
}

class ChangeEmail extends SignUpEvent {
  final String value;

  const ChangeEmail(this.value);
}

class ChangeFirstName extends SignUpEvent {
  final String value;

  const ChangeFirstName(this.value);
}

class ChangeLastName extends SignUpEvent {
  final String value;

  const ChangeLastName(this.value);
}

class ChangePhone extends SignUpEvent {
  final PhoneNumber value;

  const ChangePhone(this.value);
}

class ResendCode extends SignUpEvent {
  const ResendCode();
}

class SendCode extends SignUpEvent {
  const SendCode();
}

class VerifyCode extends SignUpEvent {
  final String value;

  const VerifyCode(this.value);
}

class ChangePolicyStatus extends SignUpEvent {
  const ChangePolicyStatus();
}

class ChangeNewsStatus extends SignUpEvent {
  const ChangeNewsStatus();
}

class SignUp extends SignUpEvent {
  const SignUp();
}

class SignInGuest extends SignUpEvent {
  const SignInGuest();
}

class NavigateSignIn extends SignUpEvent {
  const NavigateSignIn();
}

class NavigateUsageRules extends SignUpEvent {
  const NavigateUsageRules();
}

class NavigatePrivacy extends SignUpEvent {
  const NavigatePrivacy();
}
