part of auth_models;

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @Default(0) int id,
    @Default(0) int localeId,
    @Default('') String role,
    @Default('') String deviceId,
    @Default('') String uuid,
    @Default('') String status,
    @Default(false) bool emailVerified,
    @Default(false) bool phoneVerified,
    String? name,
    String? lastName,
    String? patronymic,
    String? email,
    String? phone,
    String? dob,
    String? sex,
    String? avatar,
    int? cityId,
    int? currencyId,
  }) = _UserModel;

  const UserModel._();

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
