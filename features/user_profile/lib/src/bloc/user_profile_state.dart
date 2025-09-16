import 'package:equatable/equatable.dart';
import 'package:core_ui/core_ui.dart';
import 'user_profile_event.dart';

final class UserProfileState extends Equatable {
  const UserProfileState({
    this.state = FragmentState.active,
    required this.displayName,
    required this.roleLabel,
    required this.language,
    required this.currency,
    required this.pushEnabled,
    required this.emailEnabled,
    required this.appVersion,
  });

  final FragmentState state;

  final String displayName;
  final String roleLabel;
  final LanguageOption language;
  final CurrencyOption currency;
  final bool pushEnabled;
  final bool emailEnabled;
  final String appVersion;

  bool get isLoading => state == FragmentState.partLoading;

  factory UserProfileState.initial() => const UserProfileState(
        state: FragmentState.active,
        displayName: 'Гость',
        roleLabel: 'Гость',
        language: LanguageOption.ru,
        currency: CurrencyOption.kzt,
        pushEnabled: false,
        emailEnabled: false,
        appVersion: '',
      );

  UserProfileState copyWith({
    FragmentState? state,
    String? displayName,
    String? roleLabel,
    LanguageOption? language,
    CurrencyOption? currency,
    bool? pushEnabled,
    bool? emailEnabled,
    String? appVersion,
  }) {
    return UserProfileState(
      state: state ?? this.state,
      displayName: displayName ?? this.displayName,
      roleLabel: roleLabel ?? this.roleLabel,
      language: language ?? this.language,
      currency: currency ?? this.currency,
      pushEnabled: pushEnabled ?? this.pushEnabled,
      emailEnabled: emailEnabled ?? this.emailEnabled,
      appVersion: appVersion ?? this.appVersion,
    );
  }

  @override
  List<Object?> get props => [
        state,
        displayName,
        roleLabel,
        language,
        currency,
        pushEnabled,
        emailEnabled,
        appVersion,
      ];
}
