part of auth_dtos;

@freezed
abstract class UserDto with _$UserDto {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory UserDto({
    required int id,
    required int localeId,
    required String role,
    required String deviceId,
    required String uuid,
    required String status,
    required bool emailVerified,
    required bool phoneVerified,
    required String? name,
    required String? lastName,
    required String? patronymic,
    required String? email,
    required String? phone,
    required String? dob,
    required String? sex,
    required String? avatar,
    required int? cityId,
    required int? currencyId,
  }) = _UserDto;

  const UserDto._();

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
}
