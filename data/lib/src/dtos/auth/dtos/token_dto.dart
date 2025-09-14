part of auth_dtos;

@freezed
abstract class TokenDto with _$TokenDto {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory TokenDto({
    required String accessToken,
    required String refreshToken,
    required int expiresIn,
  }) = _TokenDto;

  const TokenDto._();

  factory TokenDto.fromJson(Map<String, dynamic> json) => _$TokenDtoFromJson(json);
}