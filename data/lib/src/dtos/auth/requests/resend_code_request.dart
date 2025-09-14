part of auth_requests;

@freezed
abstract class ResendCodeRequest with _$ResendCodeRequest {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory ResendCodeRequest({
    required int customerId,
  }) = _ResendCodeRequest;

  const ResendCodeRequest._();

  factory ResendCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$ResendCodeRequestFromJson(json);
}
