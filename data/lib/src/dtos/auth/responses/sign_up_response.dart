part of auth_responses;

@freezed
abstract class SignUpResponse with _$SignUpResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory SignUpResponse({
    required UserDto customer,
    required TokenDto token,
  }) = _SignUpResponse;

  const SignUpResponse._();

  factory SignUpResponse.fromJson(Map<String, dynamic> json) => _$SignUpResponseFromJson(json);
}