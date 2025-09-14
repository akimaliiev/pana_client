part of auth_requests;

@freezed
abstract class RefreshTokenRequest with _$RefreshTokenRequest {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory RefreshTokenRequest({
    required String refreshToken,
  }) = _RefreshTokenRequest;

  const RefreshTokenRequest._();

  factory RefreshTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenRequestFromJson(json);
}
