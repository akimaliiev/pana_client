import 'package:equatable/equatable.dart';

enum LanguageOption { ru, kk, en }
enum CurrencyOption { kzt, usd, eur }

sealed class UserProfileEvent extends Equatable {
  const UserProfileEvent();
  @override
  List<Object?> get props => const [];
}

final class UserProfileLoadRequested extends UserProfileEvent {
  const UserProfileLoadRequested();
}

final class UserProfileLanguageChanged extends UserProfileEvent {
  const UserProfileLanguageChanged(this.value);
  final LanguageOption value;
  @override
  List<Object?> get props => [value];
}

final class UserProfileCurrencyChanged extends UserProfileEvent {
  const UserProfileCurrencyChanged(this.value);
  final CurrencyOption value;
  @override
  List<Object?> get props => [value];
}

final class UserProfilePushToggled extends UserProfileEvent {
  const UserProfilePushToggled(this.enabled);
  final bool enabled;
  @override
  List<Object?> get props => [enabled];
}

final class UserProfileEmailToggled extends UserProfileEvent {
  const UserProfileEmailToggled(this.enabled);
  final bool enabled;
  @override
  List<Object?> get props => [enabled];
}
