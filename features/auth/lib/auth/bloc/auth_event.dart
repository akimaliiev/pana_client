part of 'auth_bloc.dart';

abstract class AuthEvent{
  const AuthEvent();
}

class SignInGuest extends AuthEvent {
  const SignInGuest();
}

class NavigateSignIn extends AuthEvent {
  const NavigateSignIn();
}
class NavigateSignUp extends AuthEvent {
  const NavigateSignUp();
}