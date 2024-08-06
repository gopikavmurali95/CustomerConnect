// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_review_targets_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActivityReviewTargetsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getActivityTargetEvent,
    required TResult Function() clearActivitytargetEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getActivityTargetEvent,
    TResult? Function()? clearActivitytargetEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getActivityTargetEvent,
    TResult Function()? clearActivitytargetEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActivityTargetEvent value)
        getActivityTargetEvent,
    required TResult Function(ClearActivitytargetEvent value)
        clearActivitytargetEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActivityTargetEvent value)? getActivityTargetEvent,
    TResult? Function(ClearActivitytargetEvent value)? clearActivitytargetEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActivityTargetEvent value)? getActivityTargetEvent,
    TResult Function(ClearActivitytargetEvent value)? clearActivitytargetEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityReviewTargetsEventCopyWith<$Res> {
  factory $ActivityReviewTargetsEventCopyWith(ActivityReviewTargetsEvent value,
          $Res Function(ActivityReviewTargetsEvent) then) =
      _$ActivityReviewTargetsEventCopyWithImpl<$Res,
          ActivityReviewTargetsEvent>;
}

/// @nodoc
class _$ActivityReviewTargetsEventCopyWithImpl<$Res,
        $Val extends ActivityReviewTargetsEvent>
    implements $ActivityReviewTargetsEventCopyWith<$Res> {
  _$ActivityReviewTargetsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetActivityTargetEventImplCopyWith<$Res> {
  factory _$$GetActivityTargetEventImplCopyWith(
          _$GetActivityTargetEventImpl value,
          $Res Function(_$GetActivityTargetEventImpl) then) =
      __$$GetActivityTargetEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String udpID});
}

/// @nodoc
class __$$GetActivityTargetEventImplCopyWithImpl<$Res>
    extends _$ActivityReviewTargetsEventCopyWithImpl<$Res,
        _$GetActivityTargetEventImpl>
    implements _$$GetActivityTargetEventImplCopyWith<$Res> {
  __$$GetActivityTargetEventImplCopyWithImpl(
      _$GetActivityTargetEventImpl _value,
      $Res Function(_$GetActivityTargetEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? udpID = null,
  }) {
    return _then(_$GetActivityTargetEventImpl(
      udpID: null == udpID
          ? _value.udpID
          : udpID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetActivityTargetEventImpl implements GetActivityTargetEvent {
  const _$GetActivityTargetEventImpl({required this.udpID});

  @override
  final String udpID;

  @override
  String toString() {
    return 'ActivityReviewTargetsEvent.getActivityTargetEvent(udpID: $udpID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetActivityTargetEventImpl &&
            (identical(other.udpID, udpID) || other.udpID == udpID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, udpID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetActivityTargetEventImplCopyWith<_$GetActivityTargetEventImpl>
      get copyWith => __$$GetActivityTargetEventImplCopyWithImpl<
          _$GetActivityTargetEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getActivityTargetEvent,
    required TResult Function() clearActivitytargetEvent,
  }) {
    return getActivityTargetEvent(udpID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getActivityTargetEvent,
    TResult? Function()? clearActivitytargetEvent,
  }) {
    return getActivityTargetEvent?.call(udpID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getActivityTargetEvent,
    TResult Function()? clearActivitytargetEvent,
    required TResult orElse(),
  }) {
    if (getActivityTargetEvent != null) {
      return getActivityTargetEvent(udpID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActivityTargetEvent value)
        getActivityTargetEvent,
    required TResult Function(ClearActivitytargetEvent value)
        clearActivitytargetEvent,
  }) {
    return getActivityTargetEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActivityTargetEvent value)? getActivityTargetEvent,
    TResult? Function(ClearActivitytargetEvent value)? clearActivitytargetEvent,
  }) {
    return getActivityTargetEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActivityTargetEvent value)? getActivityTargetEvent,
    TResult Function(ClearActivitytargetEvent value)? clearActivitytargetEvent,
    required TResult orElse(),
  }) {
    if (getActivityTargetEvent != null) {
      return getActivityTargetEvent(this);
    }
    return orElse();
  }
}

abstract class GetActivityTargetEvent implements ActivityReviewTargetsEvent {
  const factory GetActivityTargetEvent({required final String udpID}) =
      _$GetActivityTargetEventImpl;

  String get udpID;
  @JsonKey(ignore: true)
  _$$GetActivityTargetEventImplCopyWith<_$GetActivityTargetEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearActivitytargetEventImplCopyWith<$Res> {
  factory _$$ClearActivitytargetEventImplCopyWith(
          _$ClearActivitytargetEventImpl value,
          $Res Function(_$ClearActivitytargetEventImpl) then) =
      __$$ClearActivitytargetEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearActivitytargetEventImplCopyWithImpl<$Res>
    extends _$ActivityReviewTargetsEventCopyWithImpl<$Res,
        _$ClearActivitytargetEventImpl>
    implements _$$ClearActivitytargetEventImplCopyWith<$Res> {
  __$$ClearActivitytargetEventImplCopyWithImpl(
      _$ClearActivitytargetEventImpl _value,
      $Res Function(_$ClearActivitytargetEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearActivitytargetEventImpl implements ClearActivitytargetEvent {
  const _$ClearActivitytargetEventImpl();

  @override
  String toString() {
    return 'ActivityReviewTargetsEvent.clearActivitytargetEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearActivitytargetEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getActivityTargetEvent,
    required TResult Function() clearActivitytargetEvent,
  }) {
    return clearActivitytargetEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getActivityTargetEvent,
    TResult? Function()? clearActivitytargetEvent,
  }) {
    return clearActivitytargetEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getActivityTargetEvent,
    TResult Function()? clearActivitytargetEvent,
    required TResult orElse(),
  }) {
    if (clearActivitytargetEvent != null) {
      return clearActivitytargetEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActivityTargetEvent value)
        getActivityTargetEvent,
    required TResult Function(ClearActivitytargetEvent value)
        clearActivitytargetEvent,
  }) {
    return clearActivitytargetEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActivityTargetEvent value)? getActivityTargetEvent,
    TResult? Function(ClearActivitytargetEvent value)? clearActivitytargetEvent,
  }) {
    return clearActivitytargetEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActivityTargetEvent value)? getActivityTargetEvent,
    TResult Function(ClearActivitytargetEvent value)? clearActivitytargetEvent,
    required TResult orElse(),
  }) {
    if (clearActivitytargetEvent != null) {
      return clearActivitytargetEvent(this);
    }
    return orElse();
  }
}

abstract class ClearActivitytargetEvent implements ActivityReviewTargetsEvent {
  const factory ClearActivitytargetEvent() = _$ClearActivitytargetEventImpl;
}

/// @nodoc
mixin _$ActivityReviewTargetsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActivityTargetModel? target)
        getActivitytargetState,
    required TResult Function() actvitytargetFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ActivityTargetModel? target)? getActivitytargetState,
    TResult? Function()? actvitytargetFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActivityTargetModel? target)? getActivitytargetState,
    TResult Function()? actvitytargetFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActivitytargetState value)
        getActivitytargetState,
    required TResult Function(ActvitytargetFailedState value)
        actvitytargetFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActivitytargetState value)? getActivitytargetState,
    TResult? Function(ActvitytargetFailedState value)? actvitytargetFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActivitytargetState value)? getActivitytargetState,
    TResult Function(ActvitytargetFailedState value)? actvitytargetFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityReviewTargetsStateCopyWith<$Res> {
  factory $ActivityReviewTargetsStateCopyWith(ActivityReviewTargetsState value,
          $Res Function(ActivityReviewTargetsState) then) =
      _$ActivityReviewTargetsStateCopyWithImpl<$Res,
          ActivityReviewTargetsState>;
}

/// @nodoc
class _$ActivityReviewTargetsStateCopyWithImpl<$Res,
        $Val extends ActivityReviewTargetsState>
    implements $ActivityReviewTargetsStateCopyWith<$Res> {
  _$ActivityReviewTargetsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetActivitytargetStateImplCopyWith<$Res> {
  factory _$$GetActivitytargetStateImplCopyWith(
          _$GetActivitytargetStateImpl value,
          $Res Function(_$GetActivitytargetStateImpl) then) =
      __$$GetActivitytargetStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ActivityTargetModel? target});
}

/// @nodoc
class __$$GetActivitytargetStateImplCopyWithImpl<$Res>
    extends _$ActivityReviewTargetsStateCopyWithImpl<$Res,
        _$GetActivitytargetStateImpl>
    implements _$$GetActivitytargetStateImplCopyWith<$Res> {
  __$$GetActivitytargetStateImplCopyWithImpl(
      _$GetActivitytargetStateImpl _value,
      $Res Function(_$GetActivitytargetStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? target = freezed,
  }) {
    return _then(_$GetActivitytargetStateImpl(
      target: freezed == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as ActivityTargetModel?,
    ));
  }
}

/// @nodoc

class _$GetActivitytargetStateImpl implements GetActivitytargetState {
  const _$GetActivitytargetStateImpl({required this.target});

  @override
  final ActivityTargetModel? target;

  @override
  String toString() {
    return 'ActivityReviewTargetsState.getActivitytargetState(target: $target)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetActivitytargetStateImpl &&
            (identical(other.target, target) || other.target == target));
  }

  @override
  int get hashCode => Object.hash(runtimeType, target);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetActivitytargetStateImplCopyWith<_$GetActivitytargetStateImpl>
      get copyWith => __$$GetActivitytargetStateImplCopyWithImpl<
          _$GetActivitytargetStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActivityTargetModel? target)
        getActivitytargetState,
    required TResult Function() actvitytargetFailedState,
  }) {
    return getActivitytargetState(target);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ActivityTargetModel? target)? getActivitytargetState,
    TResult? Function()? actvitytargetFailedState,
  }) {
    return getActivitytargetState?.call(target);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActivityTargetModel? target)? getActivitytargetState,
    TResult Function()? actvitytargetFailedState,
    required TResult orElse(),
  }) {
    if (getActivitytargetState != null) {
      return getActivitytargetState(target);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActivitytargetState value)
        getActivitytargetState,
    required TResult Function(ActvitytargetFailedState value)
        actvitytargetFailedState,
  }) {
    return getActivitytargetState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActivitytargetState value)? getActivitytargetState,
    TResult? Function(ActvitytargetFailedState value)? actvitytargetFailedState,
  }) {
    return getActivitytargetState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActivitytargetState value)? getActivitytargetState,
    TResult Function(ActvitytargetFailedState value)? actvitytargetFailedState,
    required TResult orElse(),
  }) {
    if (getActivitytargetState != null) {
      return getActivitytargetState(this);
    }
    return orElse();
  }
}

abstract class GetActivitytargetState implements ActivityReviewTargetsState {
  const factory GetActivitytargetState(
          {required final ActivityTargetModel? target}) =
      _$GetActivitytargetStateImpl;

  ActivityTargetModel? get target;
  @JsonKey(ignore: true)
  _$$GetActivitytargetStateImplCopyWith<_$GetActivitytargetStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActvitytargetFailedStateImplCopyWith<$Res> {
  factory _$$ActvitytargetFailedStateImplCopyWith(
          _$ActvitytargetFailedStateImpl value,
          $Res Function(_$ActvitytargetFailedStateImpl) then) =
      __$$ActvitytargetFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActvitytargetFailedStateImplCopyWithImpl<$Res>
    extends _$ActivityReviewTargetsStateCopyWithImpl<$Res,
        _$ActvitytargetFailedStateImpl>
    implements _$$ActvitytargetFailedStateImplCopyWith<$Res> {
  __$$ActvitytargetFailedStateImplCopyWithImpl(
      _$ActvitytargetFailedStateImpl _value,
      $Res Function(_$ActvitytargetFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActvitytargetFailedStateImpl implements ActvitytargetFailedState {
  const _$ActvitytargetFailedStateImpl();

  @override
  String toString() {
    return 'ActivityReviewTargetsState.actvitytargetFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActvitytargetFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActivityTargetModel? target)
        getActivitytargetState,
    required TResult Function() actvitytargetFailedState,
  }) {
    return actvitytargetFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ActivityTargetModel? target)? getActivitytargetState,
    TResult? Function()? actvitytargetFailedState,
  }) {
    return actvitytargetFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActivityTargetModel? target)? getActivitytargetState,
    TResult Function()? actvitytargetFailedState,
    required TResult orElse(),
  }) {
    if (actvitytargetFailedState != null) {
      return actvitytargetFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActivitytargetState value)
        getActivitytargetState,
    required TResult Function(ActvitytargetFailedState value)
        actvitytargetFailedState,
  }) {
    return actvitytargetFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActivitytargetState value)? getActivitytargetState,
    TResult? Function(ActvitytargetFailedState value)? actvitytargetFailedState,
  }) {
    return actvitytargetFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActivitytargetState value)? getActivitytargetState,
    TResult Function(ActvitytargetFailedState value)? actvitytargetFailedState,
    required TResult orElse(),
  }) {
    if (actvitytargetFailedState != null) {
      return actvitytargetFailedState(this);
    }
    return orElse();
  }
}

abstract class ActvitytargetFailedState implements ActivityReviewTargetsState {
  const factory ActvitytargetFailedState() = _$ActvitytargetFailedStateImpl;
}
