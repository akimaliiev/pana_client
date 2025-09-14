// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TokenDto {
  String get accessToken;
  String get refreshToken;
  int get expiresIn;

  /// Create a copy of TokenDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TokenDtoCopyWith<TokenDto> get copyWith =>
      _$TokenDtoCopyWithImpl<TokenDto>(this as TokenDto, _$identity);

  /// Serializes this TokenDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TokenDto &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, refreshToken, expiresIn);

  @override
  String toString() {
    return 'TokenDto(accessToken: $accessToken, refreshToken: $refreshToken, expiresIn: $expiresIn)';
  }
}

/// @nodoc
abstract mixin class $TokenDtoCopyWith<$Res> {
  factory $TokenDtoCopyWith(TokenDto value, $Res Function(TokenDto) _then) =
      _$TokenDtoCopyWithImpl;
  @useResult
  $Res call({String accessToken, String refreshToken, int expiresIn});
}

/// @nodoc
class _$TokenDtoCopyWithImpl<$Res> implements $TokenDtoCopyWith<$Res> {
  _$TokenDtoCopyWithImpl(this._self, this._then);

  final TokenDto _self;
  final $Res Function(TokenDto) _then;

  /// Create a copy of TokenDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? expiresIn = null,
  }) {
    return _then(_self.copyWith(
      accessToken: null == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _self.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [TokenDto].
extension TokenDtoPatterns on TokenDto {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TokenDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TokenDto() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TokenDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TokenDto():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TokenDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TokenDto() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String accessToken, String refreshToken, int expiresIn)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TokenDto() when $default != null:
        return $default(_that.accessToken, _that.refreshToken, _that.expiresIn);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String accessToken, String refreshToken, int expiresIn)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TokenDto():
        return $default(_that.accessToken, _that.refreshToken, _that.expiresIn);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String accessToken, String refreshToken, int expiresIn)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TokenDto() when $default != null:
        return $default(_that.accessToken, _that.refreshToken, _that.expiresIn);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _TokenDto extends TokenDto {
  const _TokenDto(
      {required this.accessToken,
      required this.refreshToken,
      required this.expiresIn})
      : super._();
  factory _TokenDto.fromJson(Map<String, dynamic> json) =>
      _$TokenDtoFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final int expiresIn;

  /// Create a copy of TokenDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TokenDtoCopyWith<_TokenDto> get copyWith =>
      __$TokenDtoCopyWithImpl<_TokenDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TokenDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokenDto &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, refreshToken, expiresIn);

  @override
  String toString() {
    return 'TokenDto(accessToken: $accessToken, refreshToken: $refreshToken, expiresIn: $expiresIn)';
  }
}

/// @nodoc
abstract mixin class _$TokenDtoCopyWith<$Res>
    implements $TokenDtoCopyWith<$Res> {
  factory _$TokenDtoCopyWith(_TokenDto value, $Res Function(_TokenDto) _then) =
      __$TokenDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String accessToken, String refreshToken, int expiresIn});
}

/// @nodoc
class __$TokenDtoCopyWithImpl<$Res> implements _$TokenDtoCopyWith<$Res> {
  __$TokenDtoCopyWithImpl(this._self, this._then);

  final _TokenDto _self;
  final $Res Function(_TokenDto) _then;

  /// Create a copy of TokenDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? expiresIn = null,
  }) {
    return _then(_TokenDto(
      accessToken: null == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _self.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$UserDto {
  int get id;
  int get localeId;
  String get role;
  String get deviceId;
  String get uuid;
  String get status;
  bool get emailVerified;
  bool get phoneVerified;
  String? get name;
  String? get lastName;
  String? get patronymic;
  String? get email;
  String? get phone;
  String? get dob;
  String? get sex;
  String? get avatar;
  int? get cityId;
  int? get currencyId;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<UserDto> get copyWith =>
      _$UserDtoCopyWithImpl<UserDto>(this as UserDto, _$identity);

  /// Serializes this UserDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.localeId, localeId) ||
                other.localeId == localeId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.phoneVerified, phoneVerified) ||
                other.phoneVerified == phoneVerified) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.patronymic, patronymic) ||
                other.patronymic == patronymic) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.currencyId, currencyId) ||
                other.currencyId == currencyId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      localeId,
      role,
      deviceId,
      uuid,
      status,
      emailVerified,
      phoneVerified,
      name,
      lastName,
      patronymic,
      email,
      phone,
      dob,
      sex,
      avatar,
      cityId,
      currencyId);

  @override
  String toString() {
    return 'UserDto(id: $id, localeId: $localeId, role: $role, deviceId: $deviceId, uuid: $uuid, status: $status, emailVerified: $emailVerified, phoneVerified: $phoneVerified, name: $name, lastName: $lastName, patronymic: $patronymic, email: $email, phone: $phone, dob: $dob, sex: $sex, avatar: $avatar, cityId: $cityId, currencyId: $currencyId)';
  }
}

/// @nodoc
abstract mixin class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) _then) =
      _$UserDtoCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      int localeId,
      String role,
      String deviceId,
      String uuid,
      String status,
      bool emailVerified,
      bool phoneVerified,
      String? name,
      String? lastName,
      String? patronymic,
      String? email,
      String? phone,
      String? dob,
      String? sex,
      String? avatar,
      int? cityId,
      int? currencyId});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._self, this._then);

  final UserDto _self;
  final $Res Function(UserDto) _then;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? localeId = null,
    Object? role = null,
    Object? deviceId = null,
    Object? uuid = null,
    Object? status = null,
    Object? emailVerified = null,
    Object? phoneVerified = null,
    Object? name = freezed,
    Object? lastName = freezed,
    Object? patronymic = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? dob = freezed,
    Object? sex = freezed,
    Object? avatar = freezed,
    Object? cityId = freezed,
    Object? currencyId = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      localeId: null == localeId
          ? _self.localeId
          : localeId // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _self.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerified: null == emailVerified
          ? _self.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneVerified: null == phoneVerified
          ? _self.phoneVerified
          : phoneVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      patronymic: freezed == patronymic
          ? _self.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _self.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: freezed == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _self.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyId: freezed == currencyId
          ? _self.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserDto].
extension UserDtoPatterns on UserDto {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserDto() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserDto():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserDto() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id,
            int localeId,
            String role,
            String deviceId,
            String uuid,
            String status,
            bool emailVerified,
            bool phoneVerified,
            String? name,
            String? lastName,
            String? patronymic,
            String? email,
            String? phone,
            String? dob,
            String? sex,
            String? avatar,
            int? cityId,
            int? currencyId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserDto() when $default != null:
        return $default(
            _that.id,
            _that.localeId,
            _that.role,
            _that.deviceId,
            _that.uuid,
            _that.status,
            _that.emailVerified,
            _that.phoneVerified,
            _that.name,
            _that.lastName,
            _that.patronymic,
            _that.email,
            _that.phone,
            _that.dob,
            _that.sex,
            _that.avatar,
            _that.cityId,
            _that.currencyId);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id,
            int localeId,
            String role,
            String deviceId,
            String uuid,
            String status,
            bool emailVerified,
            bool phoneVerified,
            String? name,
            String? lastName,
            String? patronymic,
            String? email,
            String? phone,
            String? dob,
            String? sex,
            String? avatar,
            int? cityId,
            int? currencyId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserDto():
        return $default(
            _that.id,
            _that.localeId,
            _that.role,
            _that.deviceId,
            _that.uuid,
            _that.status,
            _that.emailVerified,
            _that.phoneVerified,
            _that.name,
            _that.lastName,
            _that.patronymic,
            _that.email,
            _that.phone,
            _that.dob,
            _that.sex,
            _that.avatar,
            _that.cityId,
            _that.currencyId);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id,
            int localeId,
            String role,
            String deviceId,
            String uuid,
            String status,
            bool emailVerified,
            bool phoneVerified,
            String? name,
            String? lastName,
            String? patronymic,
            String? email,
            String? phone,
            String? dob,
            String? sex,
            String? avatar,
            int? cityId,
            int? currencyId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserDto() when $default != null:
        return $default(
            _that.id,
            _that.localeId,
            _that.role,
            _that.deviceId,
            _that.uuid,
            _that.status,
            _that.emailVerified,
            _that.phoneVerified,
            _that.name,
            _that.lastName,
            _that.patronymic,
            _that.email,
            _that.phone,
            _that.dob,
            _that.sex,
            _that.avatar,
            _that.cityId,
            _that.currencyId);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _UserDto extends UserDto {
  const _UserDto(
      {required this.id,
      required this.localeId,
      required this.role,
      required this.deviceId,
      required this.uuid,
      required this.status,
      required this.emailVerified,
      required this.phoneVerified,
      required this.name,
      required this.lastName,
      required this.patronymic,
      required this.email,
      required this.phone,
      required this.dob,
      required this.sex,
      required this.avatar,
      required this.cityId,
      required this.currencyId})
      : super._();
  factory _UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  @override
  final int id;
  @override
  final int localeId;
  @override
  final String role;
  @override
  final String deviceId;
  @override
  final String uuid;
  @override
  final String status;
  @override
  final bool emailVerified;
  @override
  final bool phoneVerified;
  @override
  final String? name;
  @override
  final String? lastName;
  @override
  final String? patronymic;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? dob;
  @override
  final String? sex;
  @override
  final String? avatar;
  @override
  final int? cityId;
  @override
  final int? currencyId;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.localeId, localeId) ||
                other.localeId == localeId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.phoneVerified, phoneVerified) ||
                other.phoneVerified == phoneVerified) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.patronymic, patronymic) ||
                other.patronymic == patronymic) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.currencyId, currencyId) ||
                other.currencyId == currencyId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      localeId,
      role,
      deviceId,
      uuid,
      status,
      emailVerified,
      phoneVerified,
      name,
      lastName,
      patronymic,
      email,
      phone,
      dob,
      sex,
      avatar,
      cityId,
      currencyId);

  @override
  String toString() {
    return 'UserDto(id: $id, localeId: $localeId, role: $role, deviceId: $deviceId, uuid: $uuid, status: $status, emailVerified: $emailVerified, phoneVerified: $phoneVerified, name: $name, lastName: $lastName, patronymic: $patronymic, email: $email, phone: $phone, dob: $dob, sex: $sex, avatar: $avatar, cityId: $cityId, currencyId: $currencyId)';
  }
}

/// @nodoc
abstract mixin class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) _then) =
      __$UserDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      int localeId,
      String role,
      String deviceId,
      String uuid,
      String status,
      bool emailVerified,
      bool phoneVerified,
      String? name,
      String? lastName,
      String? patronymic,
      String? email,
      String? phone,
      String? dob,
      String? sex,
      String? avatar,
      int? cityId,
      int? currencyId});
}

/// @nodoc
class __$UserDtoCopyWithImpl<$Res> implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(this._self, this._then);

  final _UserDto _self;
  final $Res Function(_UserDto) _then;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? localeId = null,
    Object? role = null,
    Object? deviceId = null,
    Object? uuid = null,
    Object? status = null,
    Object? emailVerified = null,
    Object? phoneVerified = null,
    Object? name = freezed,
    Object? lastName = freezed,
    Object? patronymic = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? dob = freezed,
    Object? sex = freezed,
    Object? avatar = freezed,
    Object? cityId = freezed,
    Object? currencyId = freezed,
  }) {
    return _then(_UserDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      localeId: null == localeId
          ? _self.localeId
          : localeId // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _self.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerified: null == emailVerified
          ? _self.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneVerified: null == phoneVerified
          ? _self.phoneVerified
          : phoneVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      patronymic: freezed == patronymic
          ? _self.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _self.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: freezed == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _self.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyId: freezed == currencyId
          ? _self.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
