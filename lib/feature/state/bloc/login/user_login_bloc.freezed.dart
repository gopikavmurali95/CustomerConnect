// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserLoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password, String token)
        loginEvent,
    required TResult Function() loginLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password, String token)?
        loginEvent,
    TResult? Function()? loginLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password, String token)?
        loginEvent,
    TResult Function()? loginLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) loginEvent,
    required TResult Function(_loginLoadingEvent value) loginLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? loginEvent,
    TResult? Function(_loginLoadingEvent value)? loginLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? loginEvent,
    TResult Function(_loginLoadingEvent value)? loginLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginEventCopyWith<$Res> {
  factory $UserLoginEventCopyWith(
          UserLoginEvent value, $Res Function(UserLoginEvent) then) =
      _$UserLoginEventCopyWithImpl<$Res, UserLoginEvent>;
}

/// @nodoc
class _$UserLoginEventCopyWithImpl<$Res, $Val extends UserLoginEvent>
    implements $UserLoginEventCopyWith<$Res> {
  _$UserLoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginEventImplCopyWith<$Res> {
  factory _$$LoginEventImplCopyWith(
          _$LoginEventImpl value, $Res Function(_$LoginEventImpl) then) =
      __$$LoginEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String password, String token});
}

/// @nodoc
class __$$LoginEventImplCopyWithImpl<$Res>
    extends _$UserLoginEventCopyWithImpl<$Res, _$LoginEventImpl>
    implements _$$LoginEventImplCopyWith<$Res> {
  __$$LoginEventImplCopyWithImpl(
      _$LoginEventImpl _value, $Res Function(_$LoginEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? token = null,
  }) {
    return _then(_$LoginEventImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginEventImpl implements LoginEvent {
  const _$LoginEventImpl(
      {required this.username, required this.password, required this.token});

  @override
  final String username;
  @override
  final String password;
  @override
  final String token;

  @override
  String toString() {
    return 'UserLoginEvent.loginEvent(username: $username, password: $password, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password, token);

  /// Create a copy of UserLoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEventImplCopyWith<_$LoginEventImpl> get copyWith =>
      __$$LoginEventImplCopyWithImpl<_$LoginEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password, String token)
        loginEvent,
    required TResult Function() loginLoadingEvent,
  }) {
    return loginEvent(username, password, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password, String token)?
        loginEvent,
    TResult? Function()? loginLoadingEvent,
  }) {
    return loginEvent?.call(username, password, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password, String token)?
        loginEvent,
    TResult Function()? loginLoadingEvent,
    required TResult orElse(),
  }) {
    if (loginEvent != null) {
      return loginEvent(username, password, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) loginEvent,
    required TResult Function(_loginLoadingEvent value) loginLoadingEvent,
  }) {
    return loginEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? loginEvent,
    TResult? Function(_loginLoadingEvent value)? loginLoadingEvent,
  }) {
    return loginEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? loginEvent,
    TResult Function(_loginLoadingEvent value)? loginLoadingEvent,
    required TResult orElse(),
  }) {
    if (loginEvent != null) {
      return loginEvent(this);
    }
    return orElse();
  }
}

abstract class LoginEvent implements UserLoginEvent {
  const factory LoginEvent(
      {required final String username,
      required final String password,
      required final String token}) = _$LoginEventImpl;

  String get username;
  String get password;
  String get token;

  /// Create a copy of UserLoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginEventImplCopyWith<_$LoginEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$loginLoadingEventImplCopyWith<$Res> {
  factory _$$loginLoadingEventImplCopyWith(_$loginLoadingEventImpl value,
          $Res Function(_$loginLoadingEventImpl) then) =
      __$$loginLoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loginLoadingEventImplCopyWithImpl<$Res>
    extends _$UserLoginEventCopyWithImpl<$Res, _$loginLoadingEventImpl>
    implements _$$loginLoadingEventImplCopyWith<$Res> {
  __$$loginLoadingEventImplCopyWithImpl(_$loginLoadingEventImpl _value,
      $Res Function(_$loginLoadingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$loginLoadingEventImpl implements _loginLoadingEvent {
  const _$loginLoadingEventImpl();

  @override
  String toString() {
    return 'UserLoginEvent.loginLoadingEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loginLoadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password, String token)
        loginEvent,
    required TResult Function() loginLoadingEvent,
  }) {
    return loginLoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password, String token)?
        loginEvent,
    TResult? Function()? loginLoadingEvent,
  }) {
    return loginLoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password, String token)?
        loginEvent,
    TResult Function()? loginLoadingEvent,
    required TResult orElse(),
  }) {
    if (loginLoadingEvent != null) {
      return loginLoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) loginEvent,
    required TResult Function(_loginLoadingEvent value) loginLoadingEvent,
  }) {
    return loginLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? loginEvent,
    TResult? Function(_loginLoadingEvent value)? loginLoadingEvent,
  }) {
    return loginLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? loginEvent,
    TResult Function(_loginLoadingEvent value)? loginLoadingEvent,
    required TResult orElse(),
  }) {
    if (loginLoadingEvent != null) {
      return loginLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class _loginLoadingEvent implements UserLoginEvent {
  const factory _loginLoadingEvent() = _$loginLoadingEventImpl;
}

/// @nodoc
mixin _$UserLoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginUserModel? user) userLoginSuccessState,
    required TResult Function() userLoginFailedState,
    required TResult Function() loginLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginUserModel? user)? userLoginSuccessState,
    TResult? Function()? userLoginFailedState,
    TResult? Function()? loginLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginUserModel? user)? userLoginSuccessState,
    TResult Function()? userLoginFailedState,
    TResult Function()? loginLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginSuccessState value)
        userLoginSuccessState,
    required TResult Function(_userLoginFailedState value) userLoginFailedState,
    required TResult Function(LoginLoadingState value) loginLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginSuccessState value)? userLoginSuccessState,
    TResult? Function(_userLoginFailedState value)? userLoginFailedState,
    TResult? Function(LoginLoadingState value)? loginLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginSuccessState value)? userLoginSuccessState,
    TResult Function(_userLoginFailedState value)? userLoginFailedState,
    TResult Function(LoginLoadingState value)? loginLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginStateCopyWith<$Res> {
  factory $UserLoginStateCopyWith(
          UserLoginState value, $Res Function(UserLoginState) then) =
      _$UserLoginStateCopyWithImpl<$Res, UserLoginState>;
}

/// @nodoc
class _$UserLoginStateCopyWithImpl<$Res, $Val extends UserLoginState>
    implements $UserLoginStateCopyWith<$Res> {
  _$UserLoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserLoginSuccessStateImplCopyWith<$Res> {
  factory _$$UserLoginSuccessStateImplCopyWith(
          _$UserLoginSuccessStateImpl value,
          $Res Function(_$UserLoginSuccessStateImpl) then) =
      __$$UserLoginSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginUserModel? user});
}

/// @nodoc
class __$$UserLoginSuccessStateImplCopyWithImpl<$Res>
    extends _$UserLoginStateCopyWithImpl<$Res, _$UserLoginSuccessStateImpl>
    implements _$$UserLoginSuccessStateImplCopyWith<$Res> {
  __$$UserLoginSuccessStateImplCopyWithImpl(_$UserLoginSuccessStateImpl _value,
      $Res Function(_$UserLoginSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$UserLoginSuccessStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LoginUserModel?,
    ));
  }
}

/// @nodoc

class _$UserLoginSuccessStateImpl implements UserLoginSuccessState {
  const _$UserLoginSuccessStateImpl({required this.user});

  @override
  final LoginUserModel? user;

  @override
  String toString() {
    return 'UserLoginState.userLoginSuccessState(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginSuccessStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of UserLoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginSuccessStateImplCopyWith<_$UserLoginSuccessStateImpl>
      get copyWith => __$$UserLoginSuccessStateImplCopyWithImpl<
          _$UserLoginSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginUserModel? user) userLoginSuccessState,
    required TResult Function() userLoginFailedState,
    required TResult Function() loginLoadingState,
  }) {
    return userLoginSuccessState(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginUserModel? user)? userLoginSuccessState,
    TResult? Function()? userLoginFailedState,
    TResult? Function()? loginLoadingState,
  }) {
    return userLoginSuccessState?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginUserModel? user)? userLoginSuccessState,
    TResult Function()? userLoginFailedState,
    TResult Function()? loginLoadingState,
    required TResult orElse(),
  }) {
    if (userLoginSuccessState != null) {
      return userLoginSuccessState(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginSuccessState value)
        userLoginSuccessState,
    required TResult Function(_userLoginFailedState value) userLoginFailedState,
    required TResult Function(LoginLoadingState value) loginLoadingState,
  }) {
    return userLoginSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginSuccessState value)? userLoginSuccessState,
    TResult? Function(_userLoginFailedState value)? userLoginFailedState,
    TResult? Function(LoginLoadingState value)? loginLoadingState,
  }) {
    return userLoginSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginSuccessState value)? userLoginSuccessState,
    TResult Function(_userLoginFailedState value)? userLoginFailedState,
    TResult Function(LoginLoadingState value)? loginLoadingState,
    required TResult orElse(),
  }) {
    if (userLoginSuccessState != null) {
      return userLoginSuccessState(this);
    }
    return orElse();
  }
}

abstract class UserLoginSuccessState implements UserLoginState {
  const factory UserLoginSuccessState({required final LoginUserModel? user}) =
      _$UserLoginSuccessStateImpl;

  LoginUserModel? get user;

  /// Create a copy of UserLoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLoginSuccessStateImplCopyWith<_$UserLoginSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$userLoginFailedStateImplCopyWith<$Res> {
  factory _$$userLoginFailedStateImplCopyWith(_$userLoginFailedStateImpl value,
          $Res Function(_$userLoginFailedStateImpl) then) =
      __$$userLoginFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$userLoginFailedStateImplCopyWithImpl<$Res>
    extends _$UserLoginStateCopyWithImpl<$Res, _$userLoginFailedStateImpl>
    implements _$$userLoginFailedStateImplCopyWith<$Res> {
  __$$userLoginFailedStateImplCopyWithImpl(_$userLoginFailedStateImpl _value,
      $Res Function(_$userLoginFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$userLoginFailedStateImpl implements _userLoginFailedState {
  const _$userLoginFailedStateImpl();

  @override
  String toString() {
    return 'UserLoginState.userLoginFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userLoginFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginUserModel? user) userLoginSuccessState,
    required TResult Function() userLoginFailedState,
    required TResult Function() loginLoadingState,
  }) {
    return userLoginFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginUserModel? user)? userLoginSuccessState,
    TResult? Function()? userLoginFailedState,
    TResult? Function()? loginLoadingState,
  }) {
    return userLoginFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginUserModel? user)? userLoginSuccessState,
    TResult Function()? userLoginFailedState,
    TResult Function()? loginLoadingState,
    required TResult orElse(),
  }) {
    if (userLoginFailedState != null) {
      return userLoginFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginSuccessState value)
        userLoginSuccessState,
    required TResult Function(_userLoginFailedState value) userLoginFailedState,
    required TResult Function(LoginLoadingState value) loginLoadingState,
  }) {
    return userLoginFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginSuccessState value)? userLoginSuccessState,
    TResult? Function(_userLoginFailedState value)? userLoginFailedState,
    TResult? Function(LoginLoadingState value)? loginLoadingState,
  }) {
    return userLoginFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginSuccessState value)? userLoginSuccessState,
    TResult Function(_userLoginFailedState value)? userLoginFailedState,
    TResult Function(LoginLoadingState value)? loginLoadingState,
    required TResult orElse(),
  }) {
    if (userLoginFailedState != null) {
      return userLoginFailedState(this);
    }
    return orElse();
  }
}

abstract class _userLoginFailedState implements UserLoginState {
  const factory _userLoginFailedState() = _$userLoginFailedStateImpl;
}

/// @nodoc
abstract class _$$LoginLoadingStateImplCopyWith<$Res> {
  factory _$$LoginLoadingStateImplCopyWith(_$LoginLoadingStateImpl value,
          $Res Function(_$LoginLoadingStateImpl) then) =
      __$$LoginLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginLoadingStateImplCopyWithImpl<$Res>
    extends _$UserLoginStateCopyWithImpl<$Res, _$LoginLoadingStateImpl>
    implements _$$LoginLoadingStateImplCopyWith<$Res> {
  __$$LoginLoadingStateImplCopyWithImpl(_$LoginLoadingStateImpl _value,
      $Res Function(_$LoginLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginLoadingStateImpl implements LoginLoadingState {
  const _$LoginLoadingStateImpl();

  @override
  String toString() {
    return 'UserLoginState.loginLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginUserModel? user) userLoginSuccessState,
    required TResult Function() userLoginFailedState,
    required TResult Function() loginLoadingState,
  }) {
    return loginLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginUserModel? user)? userLoginSuccessState,
    TResult? Function()? userLoginFailedState,
    TResult? Function()? loginLoadingState,
  }) {
    return loginLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginUserModel? user)? userLoginSuccessState,
    TResult Function()? userLoginFailedState,
    TResult Function()? loginLoadingState,
    required TResult orElse(),
  }) {
    if (loginLoadingState != null) {
      return loginLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginSuccessState value)
        userLoginSuccessState,
    required TResult Function(_userLoginFailedState value) userLoginFailedState,
    required TResult Function(LoginLoadingState value) loginLoadingState,
  }) {
    return loginLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginSuccessState value)? userLoginSuccessState,
    TResult? Function(_userLoginFailedState value)? userLoginFailedState,
    TResult? Function(LoginLoadingState value)? loginLoadingState,
  }) {
    return loginLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginSuccessState value)? userLoginSuccessState,
    TResult Function(_userLoginFailedState value)? userLoginFailedState,
    TResult Function(LoginLoadingState value)? loginLoadingState,
    required TResult orElse(),
  }) {
    if (loginLoadingState != null) {
      return loginLoadingState(this);
    }
    return orElse();
  }
}

abstract class LoginLoadingState implements UserLoginState {
  const factory LoginLoadingState() = _$LoginLoadingStateImpl;
}
