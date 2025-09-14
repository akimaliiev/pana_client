part of auth_responses;

@freezed
abstract class SignInGuestResponse with _$SignInGuestResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory SignInGuestResponse({
    required UserDto customer,
    required TokenDto token,
  }) = _SignInGuestResponse;

  const SignInGuestResponse._();

  factory SignInGuestResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInGuestResponseFromJson(json);
}
