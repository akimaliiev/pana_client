part of 'splash_bloc.dart';

class SplashState {
  final bool isEndsOnboarding;
  final bool hasSession;

  bool get needOnboarding => !isEndsOnboarding;

  bool get needAuth => !hasSession;

  const SplashState({
    required this.isEndsOnboarding,
    required this.hasSession,
  });

  const SplashState.initial()
      : isEndsOnboarding = false,
        hasSession = false;

  SplashState copyWith({
    bool? isEndsOnboarding,
    bool? hasSession,
  }) {
    return SplashState(
      isEndsOnboarding: isEndsOnboarding ?? this.isEndsOnboarding,
      hasSession: hasSession ?? this.hasSession,
    );
  }
}
