part of auth_requests;

@freezed
abstract class SendTokenRequest with _$SendTokenRequest {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory SendTokenRequest({
    required String phone,
    required String deviceId,
  }) = _SendTokenRequest;

  const SendTokenRequest._();

  factory SendTokenRequest.fromJson(Map<String, dynamic> json) => _$SendTokenRequestFromJson(json);
}
