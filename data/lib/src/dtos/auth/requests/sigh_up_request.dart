part of auth_requests;

@freezed
abstract class SignUpRequest with _$SignUpRequest {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory SignUpRequest({
    required String email,
    required String firstName,
    required String lastName,
    required bool acceptNewsletter,
  }) = _SignUpRequest;

  const SignUpRequest._();

  factory SignUpRequest.fromJson(Map<String, dynamic> json) => _$SignUpRequestFromJson(json);
}
