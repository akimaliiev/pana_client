import 'package:equatable/equatable.dart';
import 'user_profile_event.dart';

final class UserProfileState extends Equatable {
  const UserProfileState({
    required this.displayName,
    required this.roleLabel,
    required this.language,
    required this.currency,
    required this.pushEnabled,
    required this.emailEnabled,
    required this.appVersion,
  });

  final String displayName;
  final String roleLabel;         // «Гость»
  final LanguageOption language;
  final CurrencyOption currency;
  final bool pushEnabled;
  final bool emailEnabled;
  final String appVersion;

  factory UserProfileState.initial() => const UserProfileState(
        displayName: 'Гость',
        roleLabel: 'Гость',
        language: LanguageOption.ru,
        currency: CurrencyOption.kzt,
        pushEnabled: false,
        emailEnabled: false,
        appVersion: '',
      );

  UserProfileState copyWith({
    String? displayName,
    String? roleLabel,
    LanguageOption? language,
    CurrencyOption? currency,
    bool? pushEnabled,
    bool? emailEnabled,
    String? appVersion,
  }) {
    return UserProfileState(
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
        displayName,
        roleLabel,
        language,
        currency,
        pushEnabled,
        emailEnabled,
        appVersion,
      ];
}
