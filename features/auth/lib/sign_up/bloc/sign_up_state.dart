part of 'sign_up_bloc.dart';

enum SignUpScreenState { inputPhone, confirmCode, userData }

enum PhoneErrorType { none, invalid }

enum CodeErrorType { none, invalid }

enum EmailErrorType { none, invalid }

enum FirstNameErrorType { none, invalidLength, invalidChars }

enum LastNameErrorType { none, invalidLength, invalidChars }

class SignUpState {
  final FragmentState state;
  final SignUpScreenState screenState;

  final String email;
  final String firstName;
  final String lastName;
  final PhoneNumber? phone;
  final bool isPolicyAccepted;
  final bool isNewsAccepted;

  final EmailErrorType emailErrorType;
  final FirstNameErrorType firstNameErrorType;
  final LastNameErrorType lastNameErrorType;
  final PhoneErrorType phoneErrorType;
  final CodeErrorType codeErrorType;

  ElementState get signUpButtonState {
    if (emailErrorType == EmailErrorType.none &&
        firstNameErrorType == FirstNameErrorType.none &&
        lastNameErrorType == LastNameErrorType.none &&
        isPolicyAccepted &&
        email.isNotEmpty &&
        (phone?.number.isNotEmpty ?? false)) {
      return ElementState.enabled;
    } else {
      return ElementState.disabled;
    }
  }

  ElementState get sendCodeButtonState {
    if (state == FragmentState.partLoading) {
      return ElementState.loading;
    } else if (phoneErrorType == PhoneErrorType.none) {
      return ElementState.enabled;
    }

    return ElementState.disabled;
  }

  bool get hasCodeError => codeErrorType != CodeErrorType.none;

  const SignUpState({
    this.state = FragmentState.active,
    this.screenState = SignUpScreenState.inputPhone,
    this.isPolicyAccepted = false,
    this.isNewsAccepted = false,
    this.firstName = '',
    this.lastName = '',
    this.email = '',
    this.emailErrorType = EmailErrorType.none,
    this.firstNameErrorType = FirstNameErrorType.none,
    this.lastNameErrorType = LastNameErrorType.none,
    this.phoneErrorType = PhoneErrorType.none,
    this.codeErrorType = CodeErrorType.none,
    this.phone,
  });

  const SignUpState.initial()
      : state = FragmentState.active,
        screenState = SignUpScreenState.inputPhone,
        isPolicyAccepted = false,
        isNewsAccepted = false,
        phone = null,
        firstName = '',
        lastName = '',
        email = '',
        emailErrorType = EmailErrorType.none,
        firstNameErrorType = FirstNameErrorType.none,
        lastNameErrorType = LastNameErrorType.none,
        phoneErrorType = PhoneErrorType.none,
        codeErrorType = CodeErrorType.none;

  SignUpState copyWith({
    FragmentState? state,
    SignUpScreenState? screenState,
    String? email,
    String? firstName,
    String? lastName,
    PhoneNumber? phone,
    bool? isPolicyAccepted,
    bool? isNewsAccepted,
    EmailErrorType? emailErrorType,
    FirstNameErrorType? firstNameErrorType,
    LastNameErrorType? lastNameErrorType,
    PhoneErrorType? phoneErrorType,
    CodeErrorType? codeErrorType,
  }) {
    return SignUpState(
      state: state ?? this.state,
      screenState: screenState ?? this.screenState,
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phone: phone ?? this.phone,
      isPolicyAccepted: isPolicyAccepted ?? this.isPolicyAccepted,
      isNewsAccepted: isNewsAccepted ?? this.isNewsAccepted,
      emailErrorType: emailErrorType ?? this.emailErrorType,
      firstNameErrorType: firstNameErrorType ?? this.firstNameErrorType,
      lastNameErrorType: lastNameErrorType ?? this.lastNameErrorType,
      phoneErrorType: phoneErrorType ?? this.phoneErrorType,
      codeErrorType: codeErrorType ?? this.codeErrorType,
    );
  }
}
