import 'dart:async';

import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:navigation/navigation.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AppLocalization _localization;
  final AppRouter _appRouter;
  final AppEventNotifier _appEventNotifier;
  final AuthRepository _authRepository;

  SignUpBloc({
    required AppLocalization localization,
    required AppRouter appRouter,
    required AppEventNotifier appEventNotifier,
    required AuthRepository authRepository,
  })  : _localization = localization,
        _appRouter = appRouter,
        _appEventNotifier = appEventNotifier,
        _authRepository = authRepository,
        super(const SignUpState.initial()) {
    on<ChangeEmail>(_onChangeEmail);
    on<ChangeFirstName>(_onChangeFirstName);
    on<ChangeLastName>(_onChangeLastName);
    on<ChangePhone>(_onChangePhone);
    on<ChangePolicyStatus>(_onChangePolicyStatus);
    on<ChangeNewsStatus>(_onChangeNewsStatus);
    on<SendCode>(_onSendCode);
    on<ResendCode>(_onResendCode);
    on<VerifyCode>(_onVerifyCode);
    on<SignUp>(_onSignUp);
    on<SignInGuest>(_onSignInGuest);
    on<NavigateSignIn>(_onNavigateSignIn);
    on<NavigateUsageRules>(_onNavigateUsageRules);
    on<NavigatePrivacy>(_onNavigatePrivacy);
  }

  void _onChangeEmail(ChangeEmail event, Emitter<SignUpState> emit) => emit(
        state.copyWith(
          email: event.value,
          emailErrorType: EmailErrorType.none,
        ),
      );

  void _onChangeFirstName(ChangeFirstName event, Emitter<SignUpState> emit) => emit(
        state.copyWith(
          firstName: event.value,
          firstNameErrorType: FirstNameErrorType.none,
        ),
      );

  void _onChangeLastName(ChangeLastName event, Emitter<SignUpState> emit) => emit(
        state.copyWith(
          lastName: event.value,
          lastNameErrorType: LastNameErrorType.none,
        ),
      );

  void _onChangePhone(ChangePhone event, Emitter<SignUpState> emit) => emit(
        state.copyWith(
          phone: event.value,
          phoneErrorType: PhoneErrorType.none,
        ),
      );

  void _onChangePolicyStatus(ChangePolicyStatus event, Emitter<SignUpState> emit) => emit(
        state.copyWith(isPolicyAccepted: !state.isPolicyAccepted),
      );

  void _onChangeNewsStatus(ChangeNewsStatus event, Emitter<SignUpState> emit) => emit(
        state.copyWith(isNewsAccepted: !state.isNewsAccepted),
      );

  Future<void> _onSendCode(
    SendCode event,
    Emitter<SignUpState> emit,
  ) async {
    if (!_isPhoneFormValid(emit)) return;

    emit(state.copyWith(state: FragmentState.partLoading));

    try {
      await _authRepository.sendCode(phone: state.phone!.completeNumber);

      emit(state.copyWith(screenState: SignUpScreenState.confirmCode));
    } catch (e) {
      _appEventNotifier.notify(ShowErrorToast(exception: e));
    } finally {
      emit(state.copyWith(state: FragmentState.active));
    }
  }

  Future<void> _onResendCode(
    ResendCode event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(state: FragmentState.partLoading));

    try {
      await _authRepository.resendVerificationCode();
    } catch (e) {
      _appEventNotifier.notify(ShowErrorToast(exception: e));
    } finally {
      emit(state.copyWith(state: FragmentState.active));
    }
  }

  Future<void> _onVerifyCode(
    VerifyCode event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(state: FragmentState.partLoading));

    try {
      await _authRepository.verifyCode(code: event.value);

      emit(state.copyWith(screenState: SignUpScreenState.userData));
    } on ClientErrorException catch (e) {
      if (e.errorMessage == 'The verification code is invalid.') {
        emit(state.copyWith(codeErrorType: CodeErrorType.invalid));
      }
    } catch (e) {
      _appEventNotifier.notify(ShowErrorToast(exception: e));
    } finally {
      emit(state.copyWith(state: FragmentState.active));
    }
  }

  Future<void> _onSignUp(
    SignUp event,
    Emitter<SignUpState> emit,
  ) async {
    final bool isFormValid = _isUserDataFormValid(emit);

    if (!isFormValid) return;

    try {
      await _authRepository.signUp(
        email: state.email,
        firstName: state.firstName,
        lastName: state.lastName,
        acceptNewsletter: state.isNewsAccepted,
      );

      await _appRouter.navigateMain();
    } catch (e) {
      _appEventNotifier.notify(ShowErrorToast(exception: e));
    }
  }

  Future<void> _onSignInGuest(SignInGuest event, Emitter<SignUpState> emit) async {
    try {
      await _authRepository.signInGuest();

      await _appRouter.navigateMain();
    } catch (e) {
      _appEventNotifier.notify(ShowErrorToast(exception: e));
    }
  }

  Future<void> _onNavigateSignIn(NavigateSignIn event, Emitter<SignUpState> emit) =>
      _appRouter.navigateSignIn(useReplace: true);

  Future<void> _onNavigateUsageRules(NavigateUsageRules event, Emitter<SignUpState> emit) =>
      _appRouter.navigateUsageRules();

  Future<void> _onNavigatePrivacy(NavigatePrivacy event, Emitter<SignUpState> emit) =>
      _appRouter.navigatePrivacy();

  bool _isPhoneFormValid(Emitter<SignUpState> emit) {
    try {
      state.phone?.isValidNumber();
    } catch (_) {
      emit(state.copyWith(phoneErrorType: PhoneErrorType.invalid));
      return false;
    }

    return true;
  }

  bool _isUserDataFormValid(Emitter<SignUpState> emit) {
    final String email = state.email.trim();
    final String firstName = state.firstName.trim();
    final String lastName = state.lastName.trim();

    final RegExp emailRegExp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    final RegExp nameRegExp = RegExp(r'^[\p{L}-]+$', unicode: true);

    EmailErrorType? emailError;
    FirstNameErrorType? firstNameError;
    LastNameErrorType? lastNameError;

    if (email.isEmpty ||
        email.length > 254 ||
        email.contains(' ') ||
        !emailRegExp.hasMatch(email)) {
      emailError = EmailErrorType.invalid;
    }

    if (firstName.isEmpty || firstName.length < 2 || firstName.length > 50) {
      firstNameError = FirstNameErrorType.invalidLength;
    } else if (!nameRegExp.hasMatch(firstName)) {
      firstNameError = FirstNameErrorType.invalidChars;
    }

    if (lastName.isEmpty || lastName.length < 2 || lastName.length > 50) {
      lastNameError = LastNameErrorType.invalidLength;
    } else if (!nameRegExp.hasMatch(lastName)) {
      lastNameError = LastNameErrorType.invalidChars;
    }

    final bool isValid = emailError == null && firstNameError == null && lastNameError == null;

    emit(
      state.copyWith(
        emailErrorType: emailError ?? EmailErrorType.none,
        firstNameErrorType: firstNameError ?? FirstNameErrorType.none,
        lastNameErrorType: lastNameError ?? LastNameErrorType.none,
      ),
    );

    return isValid;
  }
}
