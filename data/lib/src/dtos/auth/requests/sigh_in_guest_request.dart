part of auth_requests;

@freezed
abstract class SignInGuestRequest with _$SignInGuestRequest {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory SignInGuestRequest({
    required String deviceId,
  }) = _SignInGuestRequest;

  const SignInGuestRequest._();

  factory SignInGuestRequest.fromJson(Map<String, dynamic> json) =>
      _$SignInGuestRequestFromJson(json);
}
