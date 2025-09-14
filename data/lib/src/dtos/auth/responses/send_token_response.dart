part of auth_responses;

@freezed
abstract class SendTokenResponse with _$SendTokenResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory SendTokenResponse({
    required int customerId,
    required String verificationType,
    required int expiresInSeconds,
  }) = _SendTokenResponse;

  const SendTokenResponse._();

  factory SendTokenResponse.fromJson(Map<String, dynamic> json) => _$SendTokenResponseFromJson(json);
}