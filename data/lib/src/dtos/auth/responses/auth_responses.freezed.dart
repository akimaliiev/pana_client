// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_responses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SendTokenResponse {
  int get customerId;
  String get verificationType;
  int get expiresInSeconds;

  /// Create a copy of SendTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SendTokenResponseCopyWith<SendTokenResponse> get copyWith =>
      _$SendTokenResponseCopyWithImpl<SendTokenResponse>(
          this as SendTokenResponse, _$identity);

  /// Serializes this SendTokenResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendTokenResponse &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.verificationType, verificationType) ||
                other.verificationType == verificationType) &&
            (identical(other.expiresInSeconds, expiresInSeconds) ||
                other.expiresInSeconds == expiresInSeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, customerId, verificationType, expiresInSeconds);

  @override
  String toString() {
    return 'SendTokenResponse(customerId: $customerId, verificationType: $verificationType, expiresInSeconds: $expiresInSeconds)';
  }
}

/// @nodoc
abstract mixin class $SendTokenResponseCopyWith<$Res> {
  factory $SendTokenResponseCopyWith(
          SendTokenResponse value, $Res Function(SendTokenResponse) _then) =
      _$SendTokenResponseCopyWithImpl;
  @useResult
  $Res call({int customerId, String verificationType, int expiresInSeconds});
}

/// @nodoc
class _$SendTokenResponseCopyWithImpl<$Res>
    implements $SendTokenResponseCopyWith<$Res> {
  _$SendTokenResponseCopyWithImpl(this._self, this._then);

  final SendTokenResponse _self;
  final $Res Function(SendTokenResponse) _then;

  /// Create a copy of SendTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? verificationType = null,
    Object? expiresInSeconds = null,
  }) {
    return _then(_self.copyWith(
      customerId: null == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      verificationType: null == verificationType
          ? _self.verificationType
          : verificationType // ignore: cast_nullable_to_non_nullable
              as String,
      expiresInSeconds: null == expiresInSeconds
          ? _self.expiresInSeconds
          : expiresInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [SendTokenResponse].
extension SendTokenResponsePatterns on SendTokenResponse {
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
    TResult Function(_SendTokenResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SendTokenResponse() when $default != null:
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
    TResult Function(_SendTokenResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SendTokenResponse():
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
    TResult? Function(_SendTokenResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SendTokenResponse() when $default != null:
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
            int customerId, String verificationType, int expiresInSeconds)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SendTokenResponse() when $default != null:
        return $default(
            _that.customerId, _that.verificationType, _that.expiresInSeconds);
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
            int customerId, String verificationType, int expiresInSeconds)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SendTokenResponse():
        return $default(
            _that.customerId, _that.verificationType, _that.expiresInSeconds);
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
            int customerId, String verificationType, int expiresInSeconds)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SendTokenResponse() when $default != null:
        return $default(
            _that.customerId, _that.verificationType, _that.expiresInSeconds);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _SendTokenResponse extends SendTokenResponse {
  const _SendTokenResponse(
      {required this.customerId,
      required this.verificationType,
      required this.expiresInSeconds})
      : super._();
  factory _SendTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$SendTokenResponseFromJson(json);

  @override
  final int customerId;
  @override
  final String verificationType;
  @override
  final int expiresInSeconds;

  /// Create a copy of SendTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SendTokenResponseCopyWith<_SendTokenResponse> get copyWith =>
      __$SendTokenResponseCopyWithImpl<_SendTokenResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SendTokenResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendTokenResponse &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.verificationType, verificationType) ||
                other.verificationType == verificationType) &&
            (identical(other.expiresInSeconds, expiresInSeconds) ||
                other.expiresInSeconds == expiresInSeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, customerId, verificationType, expiresInSeconds);

  @override
  String toString() {
    return 'SendTokenResponse(customerId: $customerId, verificationType: $verificationType, expiresInSeconds: $expiresInSeconds)';
  }
}

/// @nodoc
abstract mixin class _$SendTokenResponseCopyWith<$Res>
    implements $SendTokenResponseCopyWith<$Res> {
  factory _$SendTokenResponseCopyWith(
          _SendTokenResponse value, $Res Function(_SendTokenResponse) _then) =
      __$SendTokenResponseCopyWithImpl;
  @override
  @useResult
  $Res call({int customerId, String verificationType, int expiresInSeconds});
}

/// @nodoc
class __$SendTokenResponseCopyWithImpl<$Res>
    implements _$SendTokenResponseCopyWith<$Res> {
  __$SendTokenResponseCopyWithImpl(this._self, this._then);

  final _SendTokenResponse _self;
  final $Res Function(_SendTokenResponse) _then;

  /// Create a copy of SendTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? customerId = null,
    Object? verificationType = null,
    Object? expiresInSeconds = null,
  }) {
    return _then(_SendTokenResponse(
      customerId: null == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      verificationType: null == verificationType
          ? _self.verificationType
          : verificationType // ignore: cast_nullable_to_non_nullable
              as String,
      expiresInSeconds: null == expiresInSeconds
          ? _self.expiresInSeconds
          : expiresInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$SignUpResponse {
  UserDto get customer;
  TokenDto get token;

  /// Create a copy of SignUpResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignUpResponseCopyWith<SignUpResponse> get copyWith =>
      _$SignUpResponseCopyWithImpl<SignUpResponse>(
          this as SignUpResponse, _$identity);

  /// Serializes this SignUpResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpResponse &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customer, token);

  @override
  String toString() {
    return 'SignUpResponse(customer: $customer, token: $token)';
  }
}

/// @nodoc
abstract mixin class $SignUpResponseCopyWith<$Res> {
  factory $SignUpResponseCopyWith(
          SignUpResponse value, $Res Function(SignUpResponse) _then) =
      _$SignUpResponseCopyWithImpl;
  @useResult
  $Res call({UserDto customer, TokenDto token});

  $UserDtoCopyWith<$Res> get customer;
  $TokenDtoCopyWith<$Res> get token;
}

/// @nodoc
class _$SignUpResponseCopyWithImpl<$Res>
    implements $SignUpResponseCopyWith<$Res> {
  _$SignUpResponseCopyWithImpl(this._self, this._then);

  final SignUpResponse _self;
  final $Res Function(SignUpResponse) _then;

  /// Create a copy of SignUpResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
    Object? token = null,
  }) {
    return _then(_self.copyWith(
      customer: null == customer
          ? _self.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as UserDto,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenDto,
    ));
  }

  /// Create a copy of SignUpResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get customer {
    return $UserDtoCopyWith<$Res>(_self.customer, (value) {
      return _then(_self.copyWith(customer: value));
    });
  }

  /// Create a copy of SignUpResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenDtoCopyWith<$Res> get token {
    return $TokenDtoCopyWith<$Res>(_self.token, (value) {
      return _then(_self.copyWith(token: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SignUpResponse].
extension SignUpResponsePatterns on SignUpResponse {
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
    TResult Function(_SignUpResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SignUpResponse() when $default != null:
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
    TResult Function(_SignUpResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignUpResponse():
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
    TResult? Function(_SignUpResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignUpResponse() when $default != null:
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
    TResult Function(UserDto customer, TokenDto token)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SignUpResponse() when $default != null:
        return $default(_that.customer, _that.token);
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
    TResult Function(UserDto customer, TokenDto token) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignUpResponse():
        return $default(_that.customer, _that.token);
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
    TResult? Function(UserDto customer, TokenDto token)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignUpResponse() when $default != null:
        return $default(_that.customer, _that.token);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _SignUpResponse extends SignUpResponse {
  const _SignUpResponse({required this.customer, required this.token})
      : super._();
  factory _SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);

  @override
  final UserDto customer;
  @override
  final TokenDto token;

  /// Create a copy of SignUpResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SignUpResponseCopyWith<_SignUpResponse> get copyWith =>
      __$SignUpResponseCopyWithImpl<_SignUpResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SignUpResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpResponse &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customer, token);

  @override
  String toString() {
    return 'SignUpResponse(customer: $customer, token: $token)';
  }
}

/// @nodoc
abstract mixin class _$SignUpResponseCopyWith<$Res>
    implements $SignUpResponseCopyWith<$Res> {
  factory _$SignUpResponseCopyWith(
          _SignUpResponse value, $Res Function(_SignUpResponse) _then) =
      __$SignUpResponseCopyWithImpl;
  @override
  @useResult
  $Res call({UserDto customer, TokenDto token});

  @override
  $UserDtoCopyWith<$Res> get customer;
  @override
  $TokenDtoCopyWith<$Res> get token;
}

/// @nodoc
class __$SignUpResponseCopyWithImpl<$Res>
    implements _$SignUpResponseCopyWith<$Res> {
  __$SignUpResponseCopyWithImpl(this._self, this._then);

  final _SignUpResponse _self;
  final $Res Function(_SignUpResponse) _then;

  /// Create a copy of SignUpResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? customer = null,
    Object? token = null,
  }) {
    return _then(_SignUpResponse(
      customer: null == customer
          ? _self.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as UserDto,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenDto,
    ));
  }

  /// Create a copy of SignUpResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get customer {
    return $UserDtoCopyWith<$Res>(_self.customer, (value) {
      return _then(_self.copyWith(customer: value));
    });
  }

  /// Create a copy of SignUpResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenDtoCopyWith<$Res> get token {
    return $TokenDtoCopyWith<$Res>(_self.token, (value) {
      return _then(_self.copyWith(token: value));
    });
  }
}

/// @nodoc
mixin _$VerifyCodeResponse {
  UserDto get customer;
  TokenDto get token;

  /// Create a copy of VerifyCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerifyCodeResponseCopyWith<VerifyCodeResponse> get copyWith =>
      _$VerifyCodeResponseCopyWithImpl<VerifyCodeResponse>(
          this as VerifyCodeResponse, _$identity);

  /// Serializes this VerifyCodeResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerifyCodeResponse &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customer, token);

  @override
  String toString() {
    return 'VerifyCodeResponse(customer: $customer, token: $token)';
  }
}

/// @nodoc
abstract mixin class $VerifyCodeResponseCopyWith<$Res> {
  factory $VerifyCodeResponseCopyWith(
          VerifyCodeResponse value, $Res Function(VerifyCodeResponse) _then) =
      _$VerifyCodeResponseCopyWithImpl;
  @useResult
  $Res call({UserDto customer, TokenDto token});

  $UserDtoCopyWith<$Res> get customer;
  $TokenDtoCopyWith<$Res> get token;
}

/// @nodoc
class _$VerifyCodeResponseCopyWithImpl<$Res>
    implements $VerifyCodeResponseCopyWith<$Res> {
  _$VerifyCodeResponseCopyWithImpl(this._self, this._then);

  final VerifyCodeResponse _self;
  final $Res Function(VerifyCodeResponse) _then;

  /// Create a copy of VerifyCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
    Object? token = null,
  }) {
    return _then(_self.copyWith(
      customer: null == customer
          ? _self.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as UserDto,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenDto,
    ));
  }

  /// Create a copy of VerifyCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get customer {
    return $UserDtoCopyWith<$Res>(_self.customer, (value) {
      return _then(_self.copyWith(customer: value));
    });
  }

  /// Create a copy of VerifyCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenDtoCopyWith<$Res> get token {
    return $TokenDtoCopyWith<$Res>(_self.token, (value) {
      return _then(_self.copyWith(token: value));
    });
  }
}

/// Adds pattern-matching-related methods to [VerifyCodeResponse].
extension VerifyCodeResponsePatterns on VerifyCodeResponse {
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
    TResult Function(_VerifyCodeResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifyCodeResponse() when $default != null:
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
    TResult Function(_VerifyCodeResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyCodeResponse():
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
    TResult? Function(_VerifyCodeResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyCodeResponse() when $default != null:
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
    TResult Function(UserDto customer, TokenDto token)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifyCodeResponse() when $default != null:
        return $default(_that.customer, _that.token);
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
    TResult Function(UserDto customer, TokenDto token) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyCodeResponse():
        return $default(_that.customer, _that.token);
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
    TResult? Function(UserDto customer, TokenDto token)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyCodeResponse() when $default != null:
        return $default(_that.customer, _that.token);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _VerifyCodeResponse extends VerifyCodeResponse {
  const _VerifyCodeResponse({required this.customer, required this.token})
      : super._();
  factory _VerifyCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyCodeResponseFromJson(json);

  @override
  final UserDto customer;
  @override
  final TokenDto token;

  /// Create a copy of VerifyCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VerifyCodeResponseCopyWith<_VerifyCodeResponse> get copyWith =>
      __$VerifyCodeResponseCopyWithImpl<_VerifyCodeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VerifyCodeResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifyCodeResponse &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customer, token);

  @override
  String toString() {
    return 'VerifyCodeResponse(customer: $customer, token: $token)';
  }
}

/// @nodoc
abstract mixin class _$VerifyCodeResponseCopyWith<$Res>
    implements $VerifyCodeResponseCopyWith<$Res> {
  factory _$VerifyCodeResponseCopyWith(
          _VerifyCodeResponse value, $Res Function(_VerifyCodeResponse) _then) =
      __$VerifyCodeResponseCopyWithImpl;
  @override
  @useResult
  $Res call({UserDto customer, TokenDto token});

  @override
  $UserDtoCopyWith<$Res> get customer;
  @override
  $TokenDtoCopyWith<$Res> get token;
}

/// @nodoc
class __$VerifyCodeResponseCopyWithImpl<$Res>
    implements _$VerifyCodeResponseCopyWith<$Res> {
  __$VerifyCodeResponseCopyWithImpl(this._self, this._then);

  final _VerifyCodeResponse _self;
  final $Res Function(_VerifyCodeResponse) _then;

  /// Create a copy of VerifyCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? customer = null,
    Object? token = null,
  }) {
    return _then(_VerifyCodeResponse(
      customer: null == customer
          ? _self.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as UserDto,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenDto,
    ));
  }

  /// Create a copy of VerifyCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get customer {
    return $UserDtoCopyWith<$Res>(_self.customer, (value) {
      return _then(_self.copyWith(customer: value));
    });
  }

  /// Create a copy of VerifyCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenDtoCopyWith<$Res> get token {
    return $TokenDtoCopyWith<$Res>(_self.token, (value) {
      return _then(_self.copyWith(token: value));
    });
  }
}

/// @nodoc
mixin _$SignInGuestResponse {
  UserDto get customer;
  TokenDto get token;

  /// Create a copy of SignInGuestResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignInGuestResponseCopyWith<SignInGuestResponse> get copyWith =>
      _$SignInGuestResponseCopyWithImpl<SignInGuestResponse>(
          this as SignInGuestResponse, _$identity);

  /// Serializes this SignInGuestResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInGuestResponse &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customer, token);

  @override
  String toString() {
    return 'SignInGuestResponse(customer: $customer, token: $token)';
  }
}

/// @nodoc
abstract mixin class $SignInGuestResponseCopyWith<$Res> {
  factory $SignInGuestResponseCopyWith(
          SignInGuestResponse value, $Res Function(SignInGuestResponse) _then) =
      _$SignInGuestResponseCopyWithImpl;
  @useResult
  $Res call({UserDto customer, TokenDto token});

  $UserDtoCopyWith<$Res> get customer;
  $TokenDtoCopyWith<$Res> get token;
}

/// @nodoc
class _$SignInGuestResponseCopyWithImpl<$Res>
    implements $SignInGuestResponseCopyWith<$Res> {
  _$SignInGuestResponseCopyWithImpl(this._self, this._then);

  final SignInGuestResponse _self;
  final $Res Function(SignInGuestResponse) _then;

  /// Create a copy of SignInGuestResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
    Object? token = null,
  }) {
    return _then(_self.copyWith(
      customer: null == customer
          ? _self.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as UserDto,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenDto,
    ));
  }

  /// Create a copy of SignInGuestResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get customer {
    return $UserDtoCopyWith<$Res>(_self.customer, (value) {
      return _then(_self.copyWith(customer: value));
    });
  }

  /// Create a copy of SignInGuestResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenDtoCopyWith<$Res> get token {
    return $TokenDtoCopyWith<$Res>(_self.token, (value) {
      return _then(_self.copyWith(token: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SignInGuestResponse].
extension SignInGuestResponsePatterns on SignInGuestResponse {
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
    TResult Function(_SignInGuestResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SignInGuestResponse() when $default != null:
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
    TResult Function(_SignInGuestResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignInGuestResponse():
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
    TResult? Function(_SignInGuestResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignInGuestResponse() when $default != null:
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
    TResult Function(UserDto customer, TokenDto token)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SignInGuestResponse() when $default != null:
        return $default(_that.customer, _that.token);
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
    TResult Function(UserDto customer, TokenDto token) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignInGuestResponse():
        return $default(_that.customer, _that.token);
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
    TResult? Function(UserDto customer, TokenDto token)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignInGuestResponse() when $default != null:
        return $default(_that.customer, _that.token);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _SignInGuestResponse extends SignInGuestResponse {
  const _SignInGuestResponse({required this.customer, required this.token})
      : super._();
  factory _SignInGuestResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInGuestResponseFromJson(json);

  @override
  final UserDto customer;
  @override
  final TokenDto token;

  /// Create a copy of SignInGuestResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SignInGuestResponseCopyWith<_SignInGuestResponse> get copyWith =>
      __$SignInGuestResponseCopyWithImpl<_SignInGuestResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SignInGuestResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInGuestResponse &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customer, token);

  @override
  String toString() {
    return 'SignInGuestResponse(customer: $customer, token: $token)';
  }
}

/// @nodoc
abstract mixin class _$SignInGuestResponseCopyWith<$Res>
    implements $SignInGuestResponseCopyWith<$Res> {
  factory _$SignInGuestResponseCopyWith(_SignInGuestResponse value,
          $Res Function(_SignInGuestResponse) _then) =
      __$SignInGuestResponseCopyWithImpl;
  @override
  @useResult
  $Res call({UserDto customer, TokenDto token});

  @override
  $UserDtoCopyWith<$Res> get customer;
  @override
  $TokenDtoCopyWith<$Res> get token;
}

/// @nodoc
class __$SignInGuestResponseCopyWithImpl<$Res>
    implements _$SignInGuestResponseCopyWith<$Res> {
  __$SignInGuestResponseCopyWithImpl(this._self, this._then);

  final _SignInGuestResponse _self;
  final $Res Function(_SignInGuestResponse) _then;

  /// Create a copy of SignInGuestResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? customer = null,
    Object? token = null,
  }) {
    return _then(_SignInGuestResponse(
      customer: null == customer
          ? _self.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as UserDto,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenDto,
    ));
  }

  /// Create a copy of SignInGuestResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get customer {
    return $UserDtoCopyWith<$Res>(_self.customer, (value) {
      return _then(_self.copyWith(customer: value));
    });
  }

  /// Create a copy of SignInGuestResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenDtoCopyWith<$Res> get token {
    return $TokenDtoCopyWith<$Res>(_self.token, (value) {
      return _then(_self.copyWith(token: value));
    });
  }
}

// dart format on
