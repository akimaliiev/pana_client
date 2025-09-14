part of auth_responses;

@freezed
abstract class VerifyCodeResponse with _$VerifyCodeResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory VerifyCodeResponse({
    required UserDto customer,
    required TokenDto token,
  }) = _VerifyCodeResponse;

  const VerifyCodeResponse._();

  factory VerifyCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyCodeResponseFromJson(json);
}
