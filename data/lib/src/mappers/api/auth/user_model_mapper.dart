part of auth_mappers;

extension UserModelMapper on UserDto {
  UserModel get toDomain => UserModel(
        id: id,
        name: name,
        localeId: localeId,
        deviceId: deviceId,
        uuid: uuid,
        status: status,
        emailVerified: emailVerified,
        phoneVerified: phoneVerified,
        lastName: lastName,
        patronymic: patronymic,
        email: email,
        phone: phone,
        dob: dob,
        sex: sex,
        avatar: avatar,
        cityId: cityId,
        currencyId: currencyId,
      );
}
