import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'user_profile_event.dart';
import 'user_profile_state.dart';

class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  UserProfileBloc() : super(UserProfileState.initial()) {
    on<UserProfileLoadRequested>(_onLoad);
    on<UserProfileLanguageChanged>((e, emit) => emit(state.copyWith(language: e.value)));
    on<UserProfileCurrencyChanged>((e, emit) => emit(state.copyWith(currency: e.value)));
    on<UserProfilePushToggled>((e, emit) => emit(state.copyWith(pushEnabled: e.enabled)));
    on<UserProfileEmailToggled>((e, emit) => emit(state.copyWith(emailEnabled: e.enabled)));
  }

  Future<void> _onLoad(UserProfileLoadRequested event, Emitter<UserProfileState> emit) async {
    try {
      final info = await PackageInfo.fromPlatform();
      emit(state.copyWith(appVersion: '${info.version}+${info.buildNumber}'));
    } catch (_) {
    }
  }
}

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:user_profile/src/data/user_api.dart';
// import '../data/user_repository.dart';
// import '../data/models/customer_profile.dart';
// import 'user_profile_event.dart';
// import 'user_profile_state.dart';

// class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
//   UserProfileBloc({UserRepository? repository})
//       : _repo = repository ?? UserRepository(),
//         super(UserProfileState.initial()) {
//     on<UserProfileLoadRequested>(_onLoad);
//     on<UserProfileLanguageChanged>((e, emit) => emit(state.copyWith(language: e.value)));
//     on<UserProfileCurrencyChanged>((e, emit) => emit(state.copyWith(currency: e.value)));
//     on<UserProfilePushToggled>((e, emit) => emit(state.copyWith(pushEnabled: e.enabled)));
//     on<UserProfileEmailToggled>((e, emit) => emit(state.copyWith(emailEnabled: e.enabled)));
//   }

//   final UserRepository _repo;

//   Future<void> _onLoad(UserProfileLoadRequested e, Emitter<UserProfileState> emit) async {
//     emit(state.copyWith(isLoading: true, error: null, authExpired: false));
//     try {
//       final CustomerProfile p = await _repo.loadProfile();

//       final displayName = (p.name?.trim().isNotEmpty ?? false) ? p.name!.trim() : 'Гость';
//       final role = p.role.isNotEmpty ? p.role : 'guest';

//       emit(state.copyWith(
//         isLoading: false,
//         displayName: displayName,
//         roleLabel: role == 'customer' ? 'Гость' : role, // map as you need
//         phone: p.phone,
//         email: p.email,
//         // you can also map locale/currency from p.localeId / p.currencyId if needed
//       ));
//     } on UnauthorizedException {
//       emit(state.copyWith(isLoading: false, authExpired: true));
//     } catch (err) {
//       emit(state.copyWith(isLoading: false, error: err.toString()));
//     }
//   }
// }
