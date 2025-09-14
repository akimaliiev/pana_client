import 'dart:async';

import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:navigation/navigation.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AppLocalization _localization;
  final AppRouter _appRouter;
  final AppEventNotifier _appEventNotifier;
  final AuthRepository _authRepository;

  SignInBloc({
    required AppLocalization localization,
    required AppRouter appRouter,
    required AppEventNotifier appEventNotifier,
    required AuthRepository authRepository,
  })  : _localization = localization,
        _appRouter = appRouter,
        _appEventNotifier = appEventNotifier,
        _authRepository = authRepository,
        super(const SignInState.initial()) {
    on<ChangePhone>(_onPhoneChanged);
    on<SendCode>(_onSendCode);
    on<ResendCode>(_onResendCode);
    on<VerifyCode>(_onVerifyCode);
    on<SignInGuest>(_onSignInGuest);
    on<NavigateSignUp>(_onNavigateSignUp);
  }

  void _onPhoneChanged(ChangePhone event, Emitter<SignInState> emit) {
    emit(
      state.copyWith(
        phone: event.value,
        phoneErrorType: PhoneErrorType.none,
      ),
    );
  }

  Future<void> _onSendCode(
    SendCode event,
    Emitter<SignInState> emit,
  ) async {
    if (!_isPhoneFormValid(emit)) return;

    emit(state.copyWith(state: FragmentState.partLoading));

    try {
      await _authRepository.sendCode(phone: state.phone!.completeNumber);

      emit(state.copyWith(screenState: SignInScreenState.confirmCode));
    } catch (e) {
      _appEventNotifier.notify(ShowErrorToast(exception: e));
    } finally {
      emit(state.copyWith(state: FragmentState.active));
    }
  }

  Future<void> _onResendCode(
    ResendCode event,
    Emitter<SignInState> emit,
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
    Emitter<SignInState> emit,
  ) async {
    emit(state.copyWith(state: FragmentState.partLoading));

    try {
      await _authRepository.verifyCode(code: event.value);

      await _appRouter.navigateMain();
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

  Future<void> _onSignInGuest(SignInGuest event, Emitter<SignInState> emit) async {
    try {
      await _authRepository.signInGuest();

      await _appRouter.navigateMain();
    } catch (e) {
      _appEventNotifier.notify(ShowErrorToast(exception: e));
    }
  }

  Future<void> _onNavigateSignUp(NavigateSignUp event, Emitter<SignInState> emit) =>
      _appRouter.navigateSignUp(useReplace: true);

  bool _isPhoneFormValid(Emitter<SignInState> emit) {
    try {
      state.phone?.isValidNumber();
    } catch (_) {
      emit(state.copyWith(phoneErrorType: PhoneErrorType.invalid));
      return false;
    }

    return true;
  }
}
