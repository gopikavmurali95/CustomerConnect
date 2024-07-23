// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AllUsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllUsersEvent,
    required TResult Function() clearAllusersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllUsersEvent,
    TResult? Function()? clearAllusersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllUsersEvent,
    TResult Function()? clearAllusersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllUsersEvent value) getAllUsersEvent,
    required TResult Function(ClearAllusersEvent value) clearAllusersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllUsersEvent value)? getAllUsersEvent,
    TResult? Function(ClearAllusersEvent value)? clearAllusersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllUsersEvent value)? getAllUsersEvent,
    TResult Function(ClearAllusersEvent value)? clearAllusersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllUsersEventCopyWith<$Res> {
  factory $AllUsersEventCopyWith(
          AllUsersEvent value, $Res Function(AllUsersEvent) then) =
      _$AllUsersEventCopyWithImpl<$Res, AllUsersEvent>;
}

/// @nodoc
class _$AllUsersEventCopyWithImpl<$Res, $Val extends AllUsersEvent>
    implements $AllUsersEventCopyWith<$Res> {
  _$AllUsersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllUsersEventImplCopyWith<$Res> {
  factory _$$GetAllUsersEventImplCopyWith(_$GetAllUsersEventImpl value,
          $Res Function(_$GetAllUsersEventImpl) then) =
      __$$GetAllUsersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllUsersEventImplCopyWithImpl<$Res>
    extends _$AllUsersEventCopyWithImpl<$Res, _$GetAllUsersEventImpl>
    implements _$$GetAllUsersEventImplCopyWith<$Res> {
  __$$GetAllUsersEventImplCopyWithImpl(_$GetAllUsersEventImpl _value,
      $Res Function(_$GetAllUsersEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllUsersEventImpl implements GetAllUsersEvent {
  const _$GetAllUsersEventImpl();

  @override
  String toString() {
    return 'AllUsersEvent.getAllUsersEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllUsersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllUsersEvent,
    required TResult Function() clearAllusersEvent,
  }) {
    return getAllUsersEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllUsersEvent,
    TResult? Function()? clearAllusersEvent,
  }) {
    return getAllUsersEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllUsersEvent,
    TResult Function()? clearAllusersEvent,
    required TResult orElse(),
  }) {
    if (getAllUsersEvent != null) {
      return getAllUsersEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllUsersEvent value) getAllUsersEvent,
    required TResult Function(ClearAllusersEvent value) clearAllusersEvent,
  }) {
    return getAllUsersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllUsersEvent value)? getAllUsersEvent,
    TResult? Function(ClearAllusersEvent value)? clearAllusersEvent,
  }) {
    return getAllUsersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllUsersEvent value)? getAllUsersEvent,
    TResult Function(ClearAllusersEvent value)? clearAllusersEvent,
    required TResult orElse(),
  }) {
    if (getAllUsersEvent != null) {
      return getAllUsersEvent(this);
    }
    return orElse();
  }
}

abstract class GetAllUsersEvent implements AllUsersEvent {
  const factory GetAllUsersEvent() = _$GetAllUsersEventImpl;
}

/// @nodoc
abstract class _$$ClearAllusersEventImplCopyWith<$Res> {
  factory _$$ClearAllusersEventImplCopyWith(_$ClearAllusersEventImpl value,
          $Res Function(_$ClearAllusersEventImpl) then) =
      __$$ClearAllusersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearAllusersEventImplCopyWithImpl<$Res>
    extends _$AllUsersEventCopyWithImpl<$Res, _$ClearAllusersEventImpl>
    implements _$$ClearAllusersEventImplCopyWith<$Res> {
  __$$ClearAllusersEventImplCopyWithImpl(_$ClearAllusersEventImpl _value,
      $Res Function(_$ClearAllusersEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearAllusersEventImpl implements ClearAllusersEvent {
  const _$ClearAllusersEventImpl();

  @override
  String toString() {
    return 'AllUsersEvent.clearAllusersEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearAllusersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllUsersEvent,
    required TResult Function() clearAllusersEvent,
  }) {
    return clearAllusersEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllUsersEvent,
    TResult? Function()? clearAllusersEvent,
  }) {
    return clearAllusersEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllUsersEvent,
    TResult Function()? clearAllusersEvent,
    required TResult orElse(),
  }) {
    if (clearAllusersEvent != null) {
      return clearAllusersEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllUsersEvent value) getAllUsersEvent,
    required TResult Function(ClearAllusersEvent value) clearAllusersEvent,
  }) {
    return clearAllusersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllUsersEvent value)? getAllUsersEvent,
    TResult? Function(ClearAllusersEvent value)? clearAllusersEvent,
  }) {
    return clearAllusersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllUsersEvent value)? getAllUsersEvent,
    TResult Function(ClearAllusersEvent value)? clearAllusersEvent,
    required TResult orElse(),
  }) {
    if (clearAllusersEvent != null) {
      return clearAllusersEvent(this);
    }
    return orElse();
  }
}

abstract class ClearAllusersEvent implements AllUsersEvent {
  const factory ClearAllusersEvent() = _$ClearAllusersEventImpl;
}

/// @nodoc
mixin _$AllUsersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatUserModel>? users) getAllUsersState,
    required TResult Function() getusersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatUserModel>? users)? getAllUsersState,
    TResult? Function()? getusersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatUserModel>? users)? getAllUsersState,
    TResult Function()? getusersFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllUsersState value) getAllUsersState,
    required TResult Function(GetusersFailedState value) getusersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllUsersState value)? getAllUsersState,
    TResult? Function(GetusersFailedState value)? getusersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllUsersState value)? getAllUsersState,
    TResult Function(GetusersFailedState value)? getusersFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllUsersStateCopyWith<$Res> {
  factory $AllUsersStateCopyWith(
          AllUsersState value, $Res Function(AllUsersState) then) =
      _$AllUsersStateCopyWithImpl<$Res, AllUsersState>;
}

/// @nodoc
class _$AllUsersStateCopyWithImpl<$Res, $Val extends AllUsersState>
    implements $AllUsersStateCopyWith<$Res> {
  _$AllUsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllUsersStateImplCopyWith<$Res> {
  factory _$$GetAllUsersStateImplCopyWith(_$GetAllUsersStateImpl value,
          $Res Function(_$GetAllUsersStateImpl) then) =
      __$$GetAllUsersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatUserModel>? users});
}

/// @nodoc
class __$$GetAllUsersStateImplCopyWithImpl<$Res>
    extends _$AllUsersStateCopyWithImpl<$Res, _$GetAllUsersStateImpl>
    implements _$$GetAllUsersStateImplCopyWith<$Res> {
  __$$GetAllUsersStateImplCopyWithImpl(_$GetAllUsersStateImpl _value,
      $Res Function(_$GetAllUsersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_$GetAllUsersStateImpl(
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<ChatUserModel>?,
    ));
  }
}

/// @nodoc

class _$GetAllUsersStateImpl implements GetAllUsersState {
  const _$GetAllUsersStateImpl({required final List<ChatUserModel>? users})
      : _users = users;

  final List<ChatUserModel>? _users;
  @override
  List<ChatUserModel>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AllUsersState.getAllUsersState(users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllUsersStateImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllUsersStateImplCopyWith<_$GetAllUsersStateImpl> get copyWith =>
      __$$GetAllUsersStateImplCopyWithImpl<_$GetAllUsersStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatUserModel>? users) getAllUsersState,
    required TResult Function() getusersFailedState,
  }) {
    return getAllUsersState(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatUserModel>? users)? getAllUsersState,
    TResult? Function()? getusersFailedState,
  }) {
    return getAllUsersState?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatUserModel>? users)? getAllUsersState,
    TResult Function()? getusersFailedState,
    required TResult orElse(),
  }) {
    if (getAllUsersState != null) {
      return getAllUsersState(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllUsersState value) getAllUsersState,
    required TResult Function(GetusersFailedState value) getusersFailedState,
  }) {
    return getAllUsersState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllUsersState value)? getAllUsersState,
    TResult? Function(GetusersFailedState value)? getusersFailedState,
  }) {
    return getAllUsersState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllUsersState value)? getAllUsersState,
    TResult Function(GetusersFailedState value)? getusersFailedState,
    required TResult orElse(),
  }) {
    if (getAllUsersState != null) {
      return getAllUsersState(this);
    }
    return orElse();
  }
}

abstract class GetAllUsersState implements AllUsersState {
  const factory GetAllUsersState({required final List<ChatUserModel>? users}) =
      _$GetAllUsersStateImpl;

  List<ChatUserModel>? get users;
  @JsonKey(ignore: true)
  _$$GetAllUsersStateImplCopyWith<_$GetAllUsersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetusersFailedStateImplCopyWith<$Res> {
  factory _$$GetusersFailedStateImplCopyWith(_$GetusersFailedStateImpl value,
          $Res Function(_$GetusersFailedStateImpl) then) =
      __$$GetusersFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetusersFailedStateImplCopyWithImpl<$Res>
    extends _$AllUsersStateCopyWithImpl<$Res, _$GetusersFailedStateImpl>
    implements _$$GetusersFailedStateImplCopyWith<$Res> {
  __$$GetusersFailedStateImplCopyWithImpl(_$GetusersFailedStateImpl _value,
      $Res Function(_$GetusersFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetusersFailedStateImpl implements GetusersFailedState {
  const _$GetusersFailedStateImpl();

  @override
  String toString() {
    return 'AllUsersState.getusersFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetusersFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatUserModel>? users) getAllUsersState,
    required TResult Function() getusersFailedState,
  }) {
    return getusersFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatUserModel>? users)? getAllUsersState,
    TResult? Function()? getusersFailedState,
  }) {
    return getusersFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatUserModel>? users)? getAllUsersState,
    TResult Function()? getusersFailedState,
    required TResult orElse(),
  }) {
    if (getusersFailedState != null) {
      return getusersFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllUsersState value) getAllUsersState,
    required TResult Function(GetusersFailedState value) getusersFailedState,
  }) {
    return getusersFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllUsersState value)? getAllUsersState,
    TResult? Function(GetusersFailedState value)? getusersFailedState,
  }) {
    return getusersFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllUsersState value)? getAllUsersState,
    TResult Function(GetusersFailedState value)? getusersFailedState,
    required TResult orElse(),
  }) {
    if (getusersFailedState != null) {
      return getusersFailedState(this);
    }
    return orElse();
  }
}

abstract class GetusersFailedState implements AllUsersState {
  const factory GetusersFailedState() = _$GetusersFailedStateImpl;
}
