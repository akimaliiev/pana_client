import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../data/user_api.dart';
import 'user_profile_event.dart';
import 'user_profile_state.dart';
import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:navigation/navigation.dart';
import '../data/user_repository.dart';

class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final AppLocalization _localization;
  final AppRouter _appRouter;
  final AppEventNotifier _appEventNotifier;
  final UserRepository _userRepository;

  UserProfileBloc({
    required AppLocalization localization,
    required AppRouter appRouter,
    required AppEventNotifier appEventNotifier,
    required UserRepository userRepository,
  })  : _localization = localization,
        _appRouter = appRouter,
        _appEventNotifier = appEventNotifier,
        _userRepository = userRepository,
        super(UserProfileState.initial()) {
    on<UserProfileLoadRequested>(_onLoad);
    on<UserProfileLanguageChanged>(_onLanguageChanged);
    on<UserProfileCurrencyChanged>(_onCurrencyChanged);
    on<UserProfilePushToggled>(_onPushToggled);
    on<UserProfileEmailToggled>(_onEmailToggled);
  }
  Future<void> _onLoad(
    UserProfileLoadRequested event,
    Emitter<UserProfileState> emit,
  ) async {
    emit(state.copyWith(state: FragmentState.partLoading));

    try {
      final info = await PackageInfo.fromPlatform();
      final profile = await _userRepository.loadProfile();

      emit(
        state.copyWith(
          state: FragmentState.active,
          appVersion: '${info.version}+${info.buildNumber}',
          displayName: (profile.name?.trim().isNotEmpty ?? false)
              ? profile.name!.trim()
              : 'Гость',
          roleLabel: profile.role.isNotEmpty ? profile.role : 'Гость',
        ),
      );
    } on UnauthorizedException catch (e) {
      _appEventNotifier.notify(ShowErrorToast(exception: e));
      emit(state.copyWith(state: FragmentState.active));
    } on ApiException catch (e) {
      _appEventNotifier.notify(ShowErrorToast(exception: e));
      emit(state.copyWith(state: FragmentState.active));
    } catch (e) {
      _appEventNotifier.notify(ShowErrorToast(exception: e));
      emit(state.copyWith(state: FragmentState.active));
    }
  }

  void _onLanguageChanged(
    UserProfileLanguageChanged event,
    Emitter<UserProfileState> emit,
  ) {
    emit(state.copyWith(language: event.value));
  }

  void _onCurrencyChanged(
    UserProfileCurrencyChanged event,
    Emitter<UserProfileState> emit,
  ) {
    emit(state.copyWith(currency: event.value));
  }

  void _onPushToggled(
    UserProfilePushToggled event,
    Emitter<UserProfileState> emit,
  ) {
    emit(state.copyWith(pushEnabled: event.enabled));
  }

  void _onEmailToggled(
    UserProfileEmailToggled event,
    Emitter<UserProfileState> emit,
  ) {
    emit(state.copyWith(emailEnabled: event.enabled));
  }
}
