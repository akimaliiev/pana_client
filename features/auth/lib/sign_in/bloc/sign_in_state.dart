part of 'sign_in_bloc.dart';

enum SignInScreenState { inputPhone, confirmCode }

enum PhoneErrorType { none, invalid }

enum CodeErrorType { none, invalid }

class SignInState {
  final FragmentState state;
  final SignInScreenState screenState;

  final PhoneNumber? phone;

  final PhoneErrorType phoneErrorType;
  final CodeErrorType codeErrorType;

  ElementState get sendCodeButtonState {
    if (state == FragmentState.partLoading) {
      return ElementState.loading;
    } else if (phoneErrorType == PhoneErrorType.none) {
      return ElementState.enabled;
    }

    return ElementState.disabled;
  }

  bool get hasCodeError => codeErrorType != CodeErrorType.none;

  const SignInState({
    this.state = FragmentState.active,
    this.screenState = SignInScreenState.inputPhone,
    this.phoneErrorType = PhoneErrorType.none,
    this.codeErrorType = CodeErrorType.none,
    this.phone,
  });

  const SignInState.initial()
      : state = FragmentState.active,
        screenState = SignInScreenState.inputPhone,
        phoneErrorType = PhoneErrorType.none,
        codeErrorType = CodeErrorType.none,
        phone = null;

  SignInState copyWith({
    FragmentState? state,
    SignInScreenState? screenState,
    PhoneNumber? phone,
    PhoneErrorType? phoneErrorType,
    CodeErrorType? codeErrorType,
  }) {
    return SignInState(
      state: state ?? this.state,
      screenState: screenState ?? this.screenState,
      phone: phone ?? this.phone,
      phoneErrorType: phoneErrorType ?? this.phoneErrorType,
      codeErrorType: codeErrorType ?? this.codeErrorType,
    );
  }
}
