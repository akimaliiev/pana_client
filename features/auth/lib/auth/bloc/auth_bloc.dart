import 'dart:async';

import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:navigation/navigation.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AppLocalization _localization;

  final AppRouter _appRouter;
  final AppEventNotifier _appEventNotifier;
  final AuthRepository _authRepository;

  AuthBloc({
    required AppLocalization localization,
    required AppRouter appRouter,
    required AppEventNotifier appEventNotifier,
    required AuthRepository authRepository,
  })  : _localization = localization,
        _appRouter = appRouter,
        _appEventNotifier = appEventNotifier,
        _authRepository = authRepository,
        super(const AuthState()) {
    on<SignInGuest>(_onSignInGuest);
    on<NavigateSignIn>(_onNavigateSignIn);
    on<NavigateSignUp>(_onNavigateSignUp);
  }

  Future<void> _onSignInGuest(
    SignInGuest event,
    Emitter<AuthState> emit,
  ) async {
    try {
      await _authRepository.signInGuest();

      await _appRouter.navigateMain();
    } catch (e) {
      _appEventNotifier.notify(ShowErrorToast(exception: e));
    }
  }

  Future<void> _onNavigateSignIn(NavigateSignIn event, Emitter<AuthState> emit) async {
    await _appRouter.navigateSignIn();
  }

  Future<void> _onNavigateSignUp(NavigateSignUp event, Emitter<AuthState> emit) async {
    await _appRouter.navigateSignUp();
  }
}
