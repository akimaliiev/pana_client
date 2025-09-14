// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_requests.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RefreshTokenRequest {
  String get refreshToken;

  /// Create a copy of RefreshTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RefreshTokenRequestCopyWith<RefreshTokenRequest> get copyWith =>
      _$RefreshTokenRequestCopyWithImpl<RefreshTokenRequest>(
          this as RefreshTokenRequest, _$identity);

  /// Serializes this RefreshTokenRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RefreshTokenRequest &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  @override
  String toString() {
    return 'RefreshTokenRequest(refreshToken: $refreshToken)';
  }
}

/// @nodoc
abstract mixin class $RefreshTokenRequestCopyWith<$Res> {
  factory $RefreshTokenRequestCopyWith(
          RefreshTokenRequest value, $Res Function(RefreshTokenRequest) _then) =
      _$RefreshTokenRequestCopyWithImpl;
  @useResult
  $Res call({String refreshToken});
}

/// @nodoc
class _$RefreshTokenRequestCopyWithImpl<$Res>
    implements $RefreshTokenRequestCopyWith<$Res> {
  _$RefreshTokenRequestCopyWithImpl(this._self, this._then);

  final RefreshTokenRequest _self;
  final $Res Function(RefreshTokenRequest) _then;

  /// Create a copy of RefreshTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_self.copyWith(
      refreshToken: null == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [RefreshTokenRequest].
extension RefreshTokenRequestPatterns on RefreshTokenRequest {
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
    TResult Function(_RefreshTokenRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RefreshTokenRequest() when $default != null:
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
    TResult Function(_RefreshTokenRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RefreshTokenRequest():
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
    TResult? Function(_RefreshTokenRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RefreshTokenRequest() when $default != null:
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
    TResult Function(String refreshToken)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RefreshTokenRequest() when $default != null:
        return $default(_that.refreshToken);
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
    TResult Function(String refreshToken) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RefreshTokenRequest():
        return $default(_that.refreshToken);
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
    TResult? Function(String refreshToken)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RefreshTokenRequest() when $default != null:
        return $default(_that.refreshToken);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _RefreshTokenRequest extends RefreshTokenRequest {
  const _RefreshTokenRequest({required this.refreshToken}) : super._();
  factory _RefreshTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenRequestFromJson(json);

  @override
  final String refreshToken;

  /// Create a copy of RefreshTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RefreshTokenRequestCopyWith<_RefreshTokenRequest> get copyWith =>
      __$RefreshTokenRequestCopyWithImpl<_RefreshTokenRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RefreshTokenRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RefreshTokenRequest &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  @override
  String toString() {
    return 'RefreshTokenRequest(refreshToken: $refreshToken)';
  }
}

/// @nodoc
abstract mixin class _$RefreshTokenRequestCopyWith<$Res>
    implements $RefreshTokenRequestCopyWith<$Res> {
  factory _$RefreshTokenRequestCopyWith(_RefreshTokenRequest value,
          $Res Function(_RefreshTokenRequest) _then) =
      __$RefreshTokenRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String refreshToken});
}

/// @nodoc
class __$RefreshTokenRequestCopyWithImpl<$Res>
    implements _$RefreshTokenRequestCopyWith<$Res> {
  __$RefreshTokenRequestCopyWithImpl(this._self, this._then);

  final _RefreshTokenRequest _self;
  final $Res Function(_RefreshTokenRequest) _then;

  /// Create a copy of RefreshTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_RefreshTokenRequest(
      refreshToken: null == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$ResendCodeRequest {
  int get customerId;

  /// Create a copy of ResendCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResendCodeRequestCopyWith<ResendCodeRequest> get copyWith =>
      _$ResendCodeRequestCopyWithImpl<ResendCodeRequest>(
          this as ResendCodeRequest, _$identity);

  /// Serializes this ResendCodeRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResendCodeRequest &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customerId);

  @override
  String toString() {
    return 'ResendCodeRequest(customerId: $customerId)';
  }
}

/// @nodoc
abstract mixin class $ResendCodeRequestCopyWith<$Res> {
  factory $ResendCodeRequestCopyWith(
          ResendCodeRequest value, $Res Function(ResendCodeRequest) _then) =
      _$ResendCodeRequestCopyWithImpl;
  @useResult
  $Res call({int customerId});
}

/// @nodoc
class _$ResendCodeRequestCopyWithImpl<$Res>
    implements $ResendCodeRequestCopyWith<$Res> {
  _$ResendCodeRequestCopyWithImpl(this._self, this._then);

  final ResendCodeRequest _self;
  final $Res Function(ResendCodeRequest) _then;

  /// Create a copy of ResendCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
  }) {
    return _then(_self.copyWith(
      customerId: null == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [ResendCodeRequest].
extension ResendCodeRequestPatterns on ResendCodeRequest {
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
    TResult Function(_ResendCodeRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResendCodeRequest() when $default != null:
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
    TResult Function(_ResendCodeRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResendCodeRequest():
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
    TResult? Function(_ResendCodeRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResendCodeRequest() when $default != null:
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
    TResult Function(int customerId)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResendCodeRequest() when $default != null:
        return $default(_that.customerId);
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
    TResult Function(int customerId) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResendCodeRequest():
        return $default(_that.customerId);
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
    TResult? Function(int customerId)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResendCodeRequest() when $default != null:
        return $default(_that.customerId);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _ResendCodeRequest extends ResendCodeRequest {
  const _ResendCodeRequest({required this.customerId}) : super._();
  factory _ResendCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$ResendCodeRequestFromJson(json);

  @override
  final int customerId;

  /// Create a copy of ResendCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResendCodeRequestCopyWith<_ResendCodeRequest> get copyWith =>
      __$ResendCodeRequestCopyWithImpl<_ResendCodeRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResendCodeRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResendCodeRequest &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customerId);

  @override
  String toString() {
    return 'ResendCodeRequest(customerId: $customerId)';
  }
}

/// @nodoc
abstract mixin class _$ResendCodeRequestCopyWith<$Res>
    implements $ResendCodeRequestCopyWith<$Res> {
  factory _$ResendCodeRequestCopyWith(
          _ResendCodeRequest value, $Res Function(_ResendCodeRequest) _then) =
      __$ResendCodeRequestCopyWithImpl;
  @override
  @useResult
  $Res call({int customerId});
}

/// @nodoc
class __$ResendCodeRequestCopyWithImpl<$Res>
    implements _$ResendCodeRequestCopyWith<$Res> {
  __$ResendCodeRequestCopyWithImpl(this._self, this._then);

  final _ResendCodeRequest _self;
  final $Res Function(_ResendCodeRequest) _then;

  /// Create a copy of ResendCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? customerId = null,
  }) {
    return _then(_ResendCodeRequest(
      customerId: null == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$SignInGuestRequest {
  String get deviceId;

  /// Create a copy of SignInGuestRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignInGuestRequestCopyWith<SignInGuestRequest> get copyWith =>
      _$SignInGuestRequestCopyWithImpl<SignInGuestRequest>(
          this as SignInGuestRequest, _$identity);

  /// Serializes this SignInGuestRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInGuestRequest &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deviceId);

  @override
  String toString() {
    return 'SignInGuestRequest(deviceId: $deviceId)';
  }
}

/// @nodoc
abstract mixin class $SignInGuestRequestCopyWith<$Res> {
  factory $SignInGuestRequestCopyWith(
          SignInGuestRequest value, $Res Function(SignInGuestRequest) _then) =
      _$SignInGuestRequestCopyWithImpl;
  @useResult
  $Res call({String deviceId});
}

/// @nodoc
class _$SignInGuestRequestCopyWithImpl<$Res>
    implements $SignInGuestRequestCopyWith<$Res> {
  _$SignInGuestRequestCopyWithImpl(this._self, this._then);

  final SignInGuestRequest _self;
  final $Res Function(SignInGuestRequest) _then;

  /// Create a copy of SignInGuestRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
  }) {
    return _then(_self.copyWith(
      deviceId: null == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SignInGuestRequest].
extension SignInGuestRequestPatterns on SignInGuestRequest {
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
    TResult Function(_SignInGuestRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SignInGuestRequest() when $default != null:
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
    TResult Function(_SignInGuestRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignInGuestRequest():
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
    TResult? Function(_SignInGuestRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignInGuestRequest() when $default != null:
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
    TResult Function(String deviceId)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SignInGuestRequest() when $default != null:
        return $default(_that.deviceId);
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
    TResult Function(String deviceId) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignInGuestRequest():
        return $default(_that.deviceId);
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
    TResult? Function(String deviceId)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignInGuestRequest() when $default != null:
        return $default(_that.deviceId);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _SignInGuestRequest extends SignInGuestRequest {
  const _SignInGuestRequest({required this.deviceId}) : super._();
  factory _SignInGuestRequest.fromJson(Map<String, dynamic> json) =>
      _$SignInGuestRequestFromJson(json);

  @override
  final String deviceId;

  /// Create a copy of SignInGuestRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SignInGuestRequestCopyWith<_SignInGuestRequest> get copyWith =>
      __$SignInGuestRequestCopyWithImpl<_SignInGuestRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SignInGuestRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInGuestRequest &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deviceId);

  @override
  String toString() {
    return 'SignInGuestRequest(deviceId: $deviceId)';
  }
}

/// @nodoc
abstract mixin class _$SignInGuestRequestCopyWith<$Res>
    implements $SignInGuestRequestCopyWith<$Res> {
  factory _$SignInGuestRequestCopyWith(
          _SignInGuestRequest value, $Res Function(_SignInGuestRequest) _then) =
      __$SignInGuestRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String deviceId});
}

/// @nodoc
class __$SignInGuestRequestCopyWithImpl<$Res>
    implements _$SignInGuestRequestCopyWith<$Res> {
  __$SignInGuestRequestCopyWithImpl(this._self, this._then);

  final _SignInGuestRequest _self;
  final $Res Function(_SignInGuestRequest) _then;

  /// Create a copy of SignInGuestRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? deviceId = null,
  }) {
    return _then(_SignInGuestRequest(
      deviceId: null == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$SignUpRequest {
  String get email;
  String get firstName;
  String get lastName;
  bool get acceptNewsletter;

  /// Create a copy of SignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignUpRequestCopyWith<SignUpRequest> get copyWith =>
      _$SignUpRequestCopyWithImpl<SignUpRequest>(
          this as SignUpRequest, _$identity);

  /// Serializes this SignUpRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpRequest &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.acceptNewsletter, acceptNewsletter) ||
                other.acceptNewsletter == acceptNewsletter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, firstName, lastName, acceptNewsletter);

  @override
  String toString() {
    return 'SignUpRequest(email: $email, firstName: $firstName, lastName: $lastName, acceptNewsletter: $acceptNewsletter)';
  }
}

/// @nodoc
abstract mixin class $SignUpRequestCopyWith<$Res> {
  factory $SignUpRequestCopyWith(
          SignUpRequest value, $Res Function(SignUpRequest) _then) =
      _$SignUpRequestCopyWithImpl;
  @useResult
  $Res call(
      {String email, String firstName, String lastName, bool acceptNewsletter});
}

/// @nodoc
class _$SignUpRequestCopyWithImpl<$Res>
    implements $SignUpRequestCopyWith<$Res> {
  _$SignUpRequestCopyWithImpl(this._self, this._then);

  final SignUpRequest _self;
  final $Res Function(SignUpRequest) _then;

  /// Create a copy of SignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? acceptNewsletter = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      acceptNewsletter: null == acceptNewsletter
          ? _self.acceptNewsletter
          : acceptNewsletter // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [SignUpRequest].
extension SignUpRequestPatterns on SignUpRequest {
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
    TResult Function(_SignUpRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SignUpRequest() when $default != null:
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
    TResult Function(_SignUpRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignUpRequest():
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
    TResult? Function(_SignUpRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignUpRequest() when $default != null:
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
    TResult Function(String email, String firstName, String lastName,
            bool acceptNewsletter)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SignUpRequest() when $default != null:
        return $default(_that.email, _that.firstName, _that.lastName,
            _that.acceptNewsletter);
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
    TResult Function(String email, String firstName, String lastName,
            bool acceptNewsletter)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignUpRequest():
        return $default(_that.email, _that.firstName, _that.lastName,
            _that.acceptNewsletter);
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
    TResult? Function(String email, String firstName, String lastName,
            bool acceptNewsletter)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignUpRequest() when $default != null:
        return $default(_that.email, _that.firstName, _that.lastName,
            _that.acceptNewsletter);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _SignUpRequest extends SignUpRequest {
  const _SignUpRequest(
      {required this.email,
      required this.firstName,
      required this.lastName,
      required this.acceptNewsletter})
      : super._();
  factory _SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestFromJson(json);

  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final bool acceptNewsletter;

  /// Create a copy of SignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SignUpRequestCopyWith<_SignUpRequest> get copyWith =>
      __$SignUpRequestCopyWithImpl<_SignUpRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SignUpRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpRequest &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.acceptNewsletter, acceptNewsletter) ||
                other.acceptNewsletter == acceptNewsletter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, firstName, lastName, acceptNewsletter);

  @override
  String toString() {
    return 'SignUpRequest(email: $email, firstName: $firstName, lastName: $lastName, acceptNewsletter: $acceptNewsletter)';
  }
}

/// @nodoc
abstract mixin class _$SignUpRequestCopyWith<$Res>
    implements $SignUpRequestCopyWith<$Res> {
  factory _$SignUpRequestCopyWith(
          _SignUpRequest value, $Res Function(_SignUpRequest) _then) =
      __$SignUpRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String email, String firstName, String lastName, bool acceptNewsletter});
}

/// @nodoc
class __$SignUpRequestCopyWithImpl<$Res>
    implements _$SignUpRequestCopyWith<$Res> {
  __$SignUpRequestCopyWithImpl(this._self, this._then);

  final _SignUpRequest _self;
  final $Res Function(_SignUpRequest) _then;

  /// Create a copy of SignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? acceptNewsletter = null,
  }) {
    return _then(_SignUpRequest(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      acceptNewsletter: null == acceptNewsletter
          ? _self.acceptNewsletter
          : acceptNewsletter // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$SendTokenRequest {
  String get phone;
  String get deviceId;

  /// Create a copy of SendTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SendTokenRequestCopyWith<SendTokenRequest> get copyWith =>
      _$SendTokenRequestCopyWithImpl<SendTokenRequest>(
          this as SendTokenRequest, _$identity);

  /// Serializes this SendTokenRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendTokenRequest &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phone, deviceId);

  @override
  String toString() {
    return 'SendTokenRequest(phone: $phone, deviceId: $deviceId)';
  }
}

/// @nodoc
abstract mixin class $SendTokenRequestCopyWith<$Res> {
  factory $SendTokenRequestCopyWith(
          SendTokenRequest value, $Res Function(SendTokenRequest) _then) =
      _$SendTokenRequestCopyWithImpl;
  @useResult
  $Res call({String phone, String deviceId});
}

/// @nodoc
class _$SendTokenRequestCopyWithImpl<$Res>
    implements $SendTokenRequestCopyWith<$Res> {
  _$SendTokenRequestCopyWithImpl(this._self, this._then);

  final SendTokenRequest _self;
  final $Res Function(SendTokenRequest) _then;

  /// Create a copy of SendTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? deviceId = null,
  }) {
    return _then(_self.copyWith(
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SendTokenRequest].
extension SendTokenRequestPatterns on SendTokenRequest {
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
    TResult Function(_SendTokenRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SendTokenRequest() when $default != null:
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
    TResult Function(_SendTokenRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SendTokenRequest():
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
    TResult? Function(_SendTokenRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SendTokenRequest() when $default != null:
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
    TResult Function(String phone, String deviceId)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SendTokenRequest() when $default != null:
        return $default(_that.phone, _that.deviceId);
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
    TResult Function(String phone, String deviceId) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SendTokenRequest():
        return $default(_that.phone, _that.deviceId);
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
    TResult? Function(String phone, String deviceId)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SendTokenRequest() when $default != null:
        return $default(_that.phone, _that.deviceId);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _SendTokenRequest extends SendTokenRequest {
  const _SendTokenRequest({required this.phone, required this.deviceId})
      : super._();
  factory _SendTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$SendTokenRequestFromJson(json);

  @override
  final String phone;
  @override
  final String deviceId;

  /// Create a copy of SendTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SendTokenRequestCopyWith<_SendTokenRequest> get copyWith =>
      __$SendTokenRequestCopyWithImpl<_SendTokenRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SendTokenRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendTokenRequest &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phone, deviceId);

  @override
  String toString() {
    return 'SendTokenRequest(phone: $phone, deviceId: $deviceId)';
  }
}

/// @nodoc
abstract mixin class _$SendTokenRequestCopyWith<$Res>
    implements $SendTokenRequestCopyWith<$Res> {
  factory _$SendTokenRequestCopyWith(
          _SendTokenRequest value, $Res Function(_SendTokenRequest) _then) =
      __$SendTokenRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String phone, String deviceId});
}

/// @nodoc
class __$SendTokenRequestCopyWithImpl<$Res>
    implements _$SendTokenRequestCopyWith<$Res> {
  __$SendTokenRequestCopyWithImpl(this._self, this._then);

  final _SendTokenRequest _self;
  final $Res Function(_SendTokenRequest) _then;

  /// Create a copy of SendTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phone = null,
    Object? deviceId = null,
  }) {
    return _then(_SendTokenRequest(
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$VerifyCodeRequest {
  int get customerId;
  String get code;

  /// Create a copy of VerifyCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerifyCodeRequestCopyWith<VerifyCodeRequest> get copyWith =>
      _$VerifyCodeRequestCopyWithImpl<VerifyCodeRequest>(
          this as VerifyCodeRequest, _$identity);

  /// Serializes this VerifyCodeRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerifyCodeRequest &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customerId, code);

  @override
  String toString() {
    return 'VerifyCodeRequest(customerId: $customerId, code: $code)';
  }
}

/// @nodoc
abstract mixin class $VerifyCodeRequestCopyWith<$Res> {
  factory $VerifyCodeRequestCopyWith(
          VerifyCodeRequest value, $Res Function(VerifyCodeRequest) _then) =
      _$VerifyCodeRequestCopyWithImpl;
  @useResult
  $Res call({int customerId, String code});
}

/// @nodoc
class _$VerifyCodeRequestCopyWithImpl<$Res>
    implements $VerifyCodeRequestCopyWith<$Res> {
  _$VerifyCodeRequestCopyWithImpl(this._self, this._then);

  final VerifyCodeRequest _self;
  final $Res Function(VerifyCodeRequest) _then;

  /// Create a copy of VerifyCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? code = null,
  }) {
    return _then(_self.copyWith(
      customerId: null == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [VerifyCodeRequest].
extension VerifyCodeRequestPatterns on VerifyCodeRequest {
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
    TResult Function(_VerifyCodeRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifyCodeRequest() when $default != null:
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
    TResult Function(_VerifyCodeRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyCodeRequest():
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
    TResult? Function(_VerifyCodeRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyCodeRequest() when $default != null:
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
    TResult Function(int customerId, String code)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifyCodeRequest() when $default != null:
        return $default(_that.customerId, _that.code);
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
    TResult Function(int customerId, String code) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyCodeRequest():
        return $default(_that.customerId, _that.code);
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
    TResult? Function(int customerId, String code)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyCodeRequest() when $default != null:
        return $default(_that.customerId, _that.code);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _VerifyCodeRequest extends VerifyCodeRequest {
  const _VerifyCodeRequest({required this.customerId, required this.code})
      : super._();
  factory _VerifyCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyCodeRequestFromJson(json);

  @override
  final int customerId;
  @override
  final String code;

  /// Create a copy of VerifyCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VerifyCodeRequestCopyWith<_VerifyCodeRequest> get copyWith =>
      __$VerifyCodeRequestCopyWithImpl<_VerifyCodeRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VerifyCodeRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifyCodeRequest &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customerId, code);

  @override
  String toString() {
    return 'VerifyCodeRequest(customerId: $customerId, code: $code)';
  }
}

/// @nodoc
abstract mixin class _$VerifyCodeRequestCopyWith<$Res>
    implements $VerifyCodeRequestCopyWith<$Res> {
  factory _$VerifyCodeRequestCopyWith(
          _VerifyCodeRequest value, $Res Function(_VerifyCodeRequest) _then) =
      __$VerifyCodeRequestCopyWithImpl;
  @override
  @useResult
  $Res call({int customerId, String code});
}

/// @nodoc
class __$VerifyCodeRequestCopyWithImpl<$Res>
    implements _$VerifyCodeRequestCopyWith<$Res> {
  __$VerifyCodeRequestCopyWithImpl(this._self, this._then);

  final _VerifyCodeRequest _self;
  final $Res Function(_VerifyCodeRequest) _then;

  /// Create a copy of VerifyCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? customerId = null,
    Object? code = null,
  }) {
    return _then(_VerifyCodeRequest(
      customerId: null == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
