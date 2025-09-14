import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:navigation/navigation.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final AppRouter _appRouter;
  final AuthRepository _authRepository;

  SplashBloc({
    required AppRouter appRouter,
    required AuthRepository authRepository,
  })  : _appRouter = appRouter,
        _authRepository = authRepository,
        super(const SplashState.initial()) {
    on<Initialize>(_onInitialize);
  }

  Future<void> _onInitialize(
    Initialize event,
    Emitter<SplashState> emit,
  ) async {
    final bool hasSession = await _authRepository.hasSession;

    emit(
      state.copyWith(hasSession: hasSession),
    );

    await _entrypointProcessing(emit);
  }

  Future<void> _entrypointProcessing(Emitter<SplashState> emit) async {
    //TODO(Denis): Navigate Onboarding

    if (state.needAuth) {
      await _appRouter.navigateAuth();
    } else {
      await _appRouter.navigateMain();
    }
  }
}
