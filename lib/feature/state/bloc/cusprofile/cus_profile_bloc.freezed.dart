// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cus_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CusProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String cusID) getCusProfileEvent,
    required TResult Function() clearProfileEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String cusID)? getCusProfileEvent,
    TResult? Function()? clearProfileEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String cusID)? getCusProfileEvent,
    TResult Function()? clearProfileEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusProfileEvent value) getCusProfileEvent,
    required TResult Function(ClearProfileEvent value) clearProfileEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusProfileEvent value)? getCusProfileEvent,
    TResult? Function(ClearProfileEvent value)? clearProfileEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusProfileEvent value)? getCusProfileEvent,
    TResult Function(ClearProfileEvent value)? clearProfileEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusProfileEventCopyWith<$Res> {
  factory $CusProfileEventCopyWith(
          CusProfileEvent value, $Res Function(CusProfileEvent) then) =
      _$CusProfileEventCopyWithImpl<$Res, CusProfileEvent>;
}

/// @nodoc
class _$CusProfileEventCopyWithImpl<$Res, $Val extends CusProfileEvent>
    implements $CusProfileEventCopyWith<$Res> {
  _$CusProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCusProfileEventImplCopyWith<$Res> {
  factory _$$GetCusProfileEventImplCopyWith(_$GetCusProfileEventImpl value,
          $Res Function(_$GetCusProfileEventImpl) then) =
      __$$GetCusProfileEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userID, String cusID});
}

/// @nodoc
class __$$GetCusProfileEventImplCopyWithImpl<$Res>
    extends _$CusProfileEventCopyWithImpl<$Res, _$GetCusProfileEventImpl>
    implements _$$GetCusProfileEventImplCopyWith<$Res> {
  __$$GetCusProfileEventImplCopyWithImpl(_$GetCusProfileEventImpl _value,
      $Res Function(_$GetCusProfileEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? cusID = null,
  }) {
    return _then(_$GetCusProfileEventImpl(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      cusID: null == cusID
          ? _value.cusID
          : cusID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCusProfileEventImpl implements GetCusProfileEvent {
  const _$GetCusProfileEventImpl({required this.userID, required this.cusID});

  @override
  final String userID;
  @override
  final String cusID;

  @override
  String toString() {
    return 'CusProfileEvent.getCusProfileEvent(userID: $userID, cusID: $cusID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCusProfileEventImpl &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.cusID, cusID) || other.cusID == cusID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userID, cusID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCusProfileEventImplCopyWith<_$GetCusProfileEventImpl> get copyWith =>
      __$$GetCusProfileEventImplCopyWithImpl<_$GetCusProfileEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String cusID) getCusProfileEvent,
    required TResult Function() clearProfileEvent,
  }) {
    return getCusProfileEvent(userID, cusID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String cusID)? getCusProfileEvent,
    TResult? Function()? clearProfileEvent,
  }) {
    return getCusProfileEvent?.call(userID, cusID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String cusID)? getCusProfileEvent,
    TResult Function()? clearProfileEvent,
    required TResult orElse(),
  }) {
    if (getCusProfileEvent != null) {
      return getCusProfileEvent(userID, cusID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusProfileEvent value) getCusProfileEvent,
    required TResult Function(ClearProfileEvent value) clearProfileEvent,
  }) {
    return getCusProfileEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusProfileEvent value)? getCusProfileEvent,
    TResult? Function(ClearProfileEvent value)? clearProfileEvent,
  }) {
    return getCusProfileEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusProfileEvent value)? getCusProfileEvent,
    TResult Function(ClearProfileEvent value)? clearProfileEvent,
    required TResult orElse(),
  }) {
    if (getCusProfileEvent != null) {
      return getCusProfileEvent(this);
    }
    return orElse();
  }
}

abstract class GetCusProfileEvent implements CusProfileEvent {
  const factory GetCusProfileEvent(
      {required final String userID,
      required final String cusID}) = _$GetCusProfileEventImpl;

  String get userID;
  String get cusID;
  @JsonKey(ignore: true)
  _$$GetCusProfileEventImplCopyWith<_$GetCusProfileEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearProfileEventImplCopyWith<$Res> {
  factory _$$ClearProfileEventImplCopyWith(_$ClearProfileEventImpl value,
          $Res Function(_$ClearProfileEventImpl) then) =
      __$$ClearProfileEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearProfileEventImplCopyWithImpl<$Res>
    extends _$CusProfileEventCopyWithImpl<$Res, _$ClearProfileEventImpl>
    implements _$$ClearProfileEventImplCopyWith<$Res> {
  __$$ClearProfileEventImplCopyWithImpl(_$ClearProfileEventImpl _value,
      $Res Function(_$ClearProfileEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearProfileEventImpl implements ClearProfileEvent {
  const _$ClearProfileEventImpl();

  @override
  String toString() {
    return 'CusProfileEvent.clearProfileEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearProfileEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String cusID) getCusProfileEvent,
    required TResult Function() clearProfileEvent,
  }) {
    return clearProfileEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String cusID)? getCusProfileEvent,
    TResult? Function()? clearProfileEvent,
  }) {
    return clearProfileEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String cusID)? getCusProfileEvent,
    TResult Function()? clearProfileEvent,
    required TResult orElse(),
  }) {
    if (clearProfileEvent != null) {
      return clearProfileEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusProfileEvent value) getCusProfileEvent,
    required TResult Function(ClearProfileEvent value) clearProfileEvent,
  }) {
    return clearProfileEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusProfileEvent value)? getCusProfileEvent,
    TResult? Function(ClearProfileEvent value)? clearProfileEvent,
  }) {
    return clearProfileEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusProfileEvent value)? getCusProfileEvent,
    TResult Function(ClearProfileEvent value)? clearProfileEvent,
    required TResult orElse(),
  }) {
    if (clearProfileEvent != null) {
      return clearProfileEvent(this);
    }
    return orElse();
  }
}

abstract class ClearProfileEvent implements CusProfileEvent {
  const factory ClearProfileEvent() = _$ClearProfileEventImpl;
}

/// @nodoc
mixin _$CusProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CuSProfileModel? profile) getCusProfileState,
    required TResult Function() getcusprofileFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CuSProfileModel? profile)? getCusProfileState,
    TResult? Function()? getcusprofileFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CuSProfileModel? profile)? getCusProfileState,
    TResult Function()? getcusprofileFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusProfileState value) getCusProfileState,
    required TResult Function(GetcusprofileFailedState value)
        getcusprofileFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusProfileState value)? getCusProfileState,
    TResult? Function(GetcusprofileFailedState value)? getcusprofileFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusProfileState value)? getCusProfileState,
    TResult Function(GetcusprofileFailedState value)? getcusprofileFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusProfileStateCopyWith<$Res> {
  factory $CusProfileStateCopyWith(
          CusProfileState value, $Res Function(CusProfileState) then) =
      _$CusProfileStateCopyWithImpl<$Res, CusProfileState>;
}

/// @nodoc
class _$CusProfileStateCopyWithImpl<$Res, $Val extends CusProfileState>
    implements $CusProfileStateCopyWith<$Res> {
  _$CusProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCusProfileStateImplCopyWith<$Res> {
  factory _$$GetCusProfileStateImplCopyWith(_$GetCusProfileStateImpl value,
          $Res Function(_$GetCusProfileStateImpl) then) =
      __$$GetCusProfileStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CuSProfileModel? profile});
}

/// @nodoc
class __$$GetCusProfileStateImplCopyWithImpl<$Res>
    extends _$CusProfileStateCopyWithImpl<$Res, _$GetCusProfileStateImpl>
    implements _$$GetCusProfileStateImplCopyWith<$Res> {
  __$$GetCusProfileStateImplCopyWithImpl(_$GetCusProfileStateImpl _value,
      $Res Function(_$GetCusProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = freezed,
  }) {
    return _then(_$GetCusProfileStateImpl(
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as CuSProfileModel?,
    ));
  }
}

/// @nodoc

class _$GetCusProfileStateImpl implements GetCusProfileState {
  const _$GetCusProfileStateImpl({required this.profile});

  @override
  final CuSProfileModel? profile;

  @override
  String toString() {
    return 'CusProfileState.getCusProfileState(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCusProfileStateImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCusProfileStateImplCopyWith<_$GetCusProfileStateImpl> get copyWith =>
      __$$GetCusProfileStateImplCopyWithImpl<_$GetCusProfileStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CuSProfileModel? profile) getCusProfileState,
    required TResult Function() getcusprofileFailedState,
  }) {
    return getCusProfileState(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CuSProfileModel? profile)? getCusProfileState,
    TResult? Function()? getcusprofileFailedState,
  }) {
    return getCusProfileState?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CuSProfileModel? profile)? getCusProfileState,
    TResult Function()? getcusprofileFailedState,
    required TResult orElse(),
  }) {
    if (getCusProfileState != null) {
      return getCusProfileState(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusProfileState value) getCusProfileState,
    required TResult Function(GetcusprofileFailedState value)
        getcusprofileFailedState,
  }) {
    return getCusProfileState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusProfileState value)? getCusProfileState,
    TResult? Function(GetcusprofileFailedState value)? getcusprofileFailedState,
  }) {
    return getCusProfileState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusProfileState value)? getCusProfileState,
    TResult Function(GetcusprofileFailedState value)? getcusprofileFailedState,
    required TResult orElse(),
  }) {
    if (getCusProfileState != null) {
      return getCusProfileState(this);
    }
    return orElse();
  }
}

abstract class GetCusProfileState implements CusProfileState {
  const factory GetCusProfileState({required final CuSProfileModel? profile}) =
      _$GetCusProfileStateImpl;

  CuSProfileModel? get profile;
  @JsonKey(ignore: true)
  _$$GetCusProfileStateImplCopyWith<_$GetCusProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetcusprofileFailedStateImplCopyWith<$Res> {
  factory _$$GetcusprofileFailedStateImplCopyWith(
          _$GetcusprofileFailedStateImpl value,
          $Res Function(_$GetcusprofileFailedStateImpl) then) =
      __$$GetcusprofileFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetcusprofileFailedStateImplCopyWithImpl<$Res>
    extends _$CusProfileStateCopyWithImpl<$Res, _$GetcusprofileFailedStateImpl>
    implements _$$GetcusprofileFailedStateImplCopyWith<$Res> {
  __$$GetcusprofileFailedStateImplCopyWithImpl(
      _$GetcusprofileFailedStateImpl _value,
      $Res Function(_$GetcusprofileFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetcusprofileFailedStateImpl implements GetcusprofileFailedState {
  const _$GetcusprofileFailedStateImpl();

  @override
  String toString() {
    return 'CusProfileState.getcusprofileFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetcusprofileFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CuSProfileModel? profile) getCusProfileState,
    required TResult Function() getcusprofileFailedState,
  }) {
    return getcusprofileFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CuSProfileModel? profile)? getCusProfileState,
    TResult? Function()? getcusprofileFailedState,
  }) {
    return getcusprofileFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CuSProfileModel? profile)? getCusProfileState,
    TResult Function()? getcusprofileFailedState,
    required TResult orElse(),
  }) {
    if (getcusprofileFailedState != null) {
      return getcusprofileFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusProfileState value) getCusProfileState,
    required TResult Function(GetcusprofileFailedState value)
        getcusprofileFailedState,
  }) {
    return getcusprofileFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusProfileState value)? getCusProfileState,
    TResult? Function(GetcusprofileFailedState value)? getcusprofileFailedState,
  }) {
    return getcusprofileFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusProfileState value)? getCusProfileState,
    TResult Function(GetcusprofileFailedState value)? getcusprofileFailedState,
    required TResult orElse(),
  }) {
    if (getcusprofileFailedState != null) {
      return getcusprofileFailedState(this);
    }
    return orElse();
  }
}

abstract class GetcusprofileFailedState implements CusProfileState {
  const factory GetcusprofileFailedState() = _$GetcusprofileFailedStateImpl;
}
