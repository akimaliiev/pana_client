part of auth_requests;

@freezed
abstract class VerifyCodeRequest with _$VerifyCodeRequest {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory VerifyCodeRequest({
    required int customerId,
    required String code,
  }) = _VerifyCodeRequest;

  const VerifyCodeRequest._();

  factory VerifyCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyCodeRequestFromJson(json);
}
