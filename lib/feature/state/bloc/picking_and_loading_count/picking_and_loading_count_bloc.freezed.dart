// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picking_and_loading_count_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PickingAndLoadingCountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID) plCountSuccessEvent,
    required TResult Function() plCountFailureEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID)? plCountSuccessEvent,
    TResult? Function()? plCountFailureEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID)? plCountSuccessEvent,
    TResult Function()? plCountFailureEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlCountSuccessEvent value) plCountSuccessEvent,
    required TResult Function(PlCountFailureEvent value) plCountFailureEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlCountSuccessEvent value)? plCountSuccessEvent,
    TResult? Function(PlCountFailureEvent value)? plCountFailureEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlCountSuccessEvent value)? plCountSuccessEvent,
    TResult Function(PlCountFailureEvent value)? plCountFailureEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickingAndLoadingCountEventCopyWith<$Res> {
  factory $PickingAndLoadingCountEventCopyWith(
          PickingAndLoadingCountEvent value,
          $Res Function(PickingAndLoadingCountEvent) then) =
      _$PickingAndLoadingCountEventCopyWithImpl<$Res,
          PickingAndLoadingCountEvent>;
}

/// @nodoc
class _$PickingAndLoadingCountEventCopyWithImpl<$Res,
        $Val extends PickingAndLoadingCountEvent>
    implements $PickingAndLoadingCountEventCopyWith<$Res> {
  _$PickingAndLoadingCountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PlCountSuccessEventImplCopyWith<$Res> {
  factory _$$PlCountSuccessEventImplCopyWith(_$PlCountSuccessEventImpl value,
          $Res Function(_$PlCountSuccessEventImpl) then) =
      __$$PlCountSuccessEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userID});
}

/// @nodoc
class __$$PlCountSuccessEventImplCopyWithImpl<$Res>
    extends _$PickingAndLoadingCountEventCopyWithImpl<$Res,
        _$PlCountSuccessEventImpl>
    implements _$$PlCountSuccessEventImplCopyWith<$Res> {
  __$$PlCountSuccessEventImplCopyWithImpl(_$PlCountSuccessEventImpl _value,
      $Res Function(_$PlCountSuccessEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
  }) {
    return _then(_$PlCountSuccessEventImpl(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlCountSuccessEventImpl implements PlCountSuccessEvent {
  const _$PlCountSuccessEventImpl({required this.userID});

  @override
  final String userID;

  @override
  String toString() {
    return 'PickingAndLoadingCountEvent.plCountSuccessEvent(userID: $userID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlCountSuccessEventImpl &&
            (identical(other.userID, userID) || other.userID == userID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlCountSuccessEventImplCopyWith<_$PlCountSuccessEventImpl> get copyWith =>
      __$$PlCountSuccessEventImplCopyWithImpl<_$PlCountSuccessEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID) plCountSuccessEvent,
    required TResult Function() plCountFailureEvent,
  }) {
    return plCountSuccessEvent(userID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID)? plCountSuccessEvent,
    TResult? Function()? plCountFailureEvent,
  }) {
    return plCountSuccessEvent?.call(userID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID)? plCountSuccessEvent,
    TResult Function()? plCountFailureEvent,
    required TResult orElse(),
  }) {
    if (plCountSuccessEvent != null) {
      return plCountSuccessEvent(userID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlCountSuccessEvent value) plCountSuccessEvent,
    required TResult Function(PlCountFailureEvent value) plCountFailureEvent,
  }) {
    return plCountSuccessEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlCountSuccessEvent value)? plCountSuccessEvent,
    TResult? Function(PlCountFailureEvent value)? plCountFailureEvent,
  }) {
    return plCountSuccessEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlCountSuccessEvent value)? plCountSuccessEvent,
    TResult Function(PlCountFailureEvent value)? plCountFailureEvent,
    required TResult orElse(),
  }) {
    if (plCountSuccessEvent != null) {
      return plCountSuccessEvent(this);
    }
    return orElse();
  }
}

abstract class PlCountSuccessEvent implements PickingAndLoadingCountEvent {
  const factory PlCountSuccessEvent({required final String userID}) =
      _$PlCountSuccessEventImpl;

  String get userID;
  @JsonKey(ignore: true)
  _$$PlCountSuccessEventImplCopyWith<_$PlCountSuccessEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlCountFailureEventImplCopyWith<$Res> {
  factory _$$PlCountFailureEventImplCopyWith(_$PlCountFailureEventImpl value,
          $Res Function(_$PlCountFailureEventImpl) then) =
      __$$PlCountFailureEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlCountFailureEventImplCopyWithImpl<$Res>
    extends _$PickingAndLoadingCountEventCopyWithImpl<$Res,
        _$PlCountFailureEventImpl>
    implements _$$PlCountFailureEventImplCopyWith<$Res> {
  __$$PlCountFailureEventImplCopyWithImpl(_$PlCountFailureEventImpl _value,
      $Res Function(_$PlCountFailureEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlCountFailureEventImpl implements PlCountFailureEvent {
  const _$PlCountFailureEventImpl();

  @override
  String toString() {
    return 'PickingAndLoadingCountEvent.plCountFailureEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlCountFailureEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID) plCountSuccessEvent,
    required TResult Function() plCountFailureEvent,
  }) {
    return plCountFailureEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID)? plCountSuccessEvent,
    TResult? Function()? plCountFailureEvent,
  }) {
    return plCountFailureEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID)? plCountSuccessEvent,
    TResult Function()? plCountFailureEvent,
    required TResult orElse(),
  }) {
    if (plCountFailureEvent != null) {
      return plCountFailureEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlCountSuccessEvent value) plCountSuccessEvent,
    required TResult Function(PlCountFailureEvent value) plCountFailureEvent,
  }) {
    return plCountFailureEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlCountSuccessEvent value)? plCountSuccessEvent,
    TResult? Function(PlCountFailureEvent value)? plCountFailureEvent,
  }) {
    return plCountFailureEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlCountSuccessEvent value)? plCountSuccessEvent,
    TResult Function(PlCountFailureEvent value)? plCountFailureEvent,
    required TResult orElse(),
  }) {
    if (plCountFailureEvent != null) {
      return plCountFailureEvent(this);
    }
    return orElse();
  }
}

abstract class PlCountFailureEvent implements PickingAndLoadingCountEvent {
  const factory PlCountFailureEvent() = _$PlCountFailureEventImpl;
}

/// @nodoc
mixin _$PickingAndLoadingCountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PickingAndLoadinCountsModel? plCount)
        plCountSuccessState,
    required TResult Function() plCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PickingAndLoadinCountsModel? plCount)?
        plCountSuccessState,
    TResult? Function()? plCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PickingAndLoadinCountsModel? plCount)? plCountSuccessState,
    TResult Function()? plCountFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlCountSuccessState value) plCountSuccessState,
    required TResult Function(PlCountFailedState value) plCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlCountSuccessState value)? plCountSuccessState,
    TResult? Function(PlCountFailedState value)? plCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlCountSuccessState value)? plCountSuccessState,
    TResult Function(PlCountFailedState value)? plCountFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickingAndLoadingCountStateCopyWith<$Res> {
  factory $PickingAndLoadingCountStateCopyWith(
          PickingAndLoadingCountState value,
          $Res Function(PickingAndLoadingCountState) then) =
      _$PickingAndLoadingCountStateCopyWithImpl<$Res,
          PickingAndLoadingCountState>;
}

/// @nodoc
class _$PickingAndLoadingCountStateCopyWithImpl<$Res,
        $Val extends PickingAndLoadingCountState>
    implements $PickingAndLoadingCountStateCopyWith<$Res> {
  _$PickingAndLoadingCountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PlCountSuccessStateImplCopyWith<$Res> {
  factory _$$PlCountSuccessStateImplCopyWith(_$PlCountSuccessStateImpl value,
          $Res Function(_$PlCountSuccessStateImpl) then) =
      __$$PlCountSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PickingAndLoadinCountsModel? plCount});
}

/// @nodoc
class __$$PlCountSuccessStateImplCopyWithImpl<$Res>
    extends _$PickingAndLoadingCountStateCopyWithImpl<$Res,
        _$PlCountSuccessStateImpl>
    implements _$$PlCountSuccessStateImplCopyWith<$Res> {
  __$$PlCountSuccessStateImplCopyWithImpl(_$PlCountSuccessStateImpl _value,
      $Res Function(_$PlCountSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plCount = freezed,
  }) {
    return _then(_$PlCountSuccessStateImpl(
      plCount: freezed == plCount
          ? _value.plCount
          : plCount // ignore: cast_nullable_to_non_nullable
              as PickingAndLoadinCountsModel?,
    ));
  }
}

/// @nodoc

class _$PlCountSuccessStateImpl implements PlCountSuccessState {
  const _$PlCountSuccessStateImpl({required this.plCount});

  @override
  final PickingAndLoadinCountsModel? plCount;

  @override
  String toString() {
    return 'PickingAndLoadingCountState.plCountSuccessState(plCount: $plCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlCountSuccessStateImpl &&
            (identical(other.plCount, plCount) || other.plCount == plCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, plCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlCountSuccessStateImplCopyWith<_$PlCountSuccessStateImpl> get copyWith =>
      __$$PlCountSuccessStateImplCopyWithImpl<_$PlCountSuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PickingAndLoadinCountsModel? plCount)
        plCountSuccessState,
    required TResult Function() plCountFailedState,
  }) {
    return plCountSuccessState(plCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PickingAndLoadinCountsModel? plCount)?
        plCountSuccessState,
    TResult? Function()? plCountFailedState,
  }) {
    return plCountSuccessState?.call(plCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PickingAndLoadinCountsModel? plCount)? plCountSuccessState,
    TResult Function()? plCountFailedState,
    required TResult orElse(),
  }) {
    if (plCountSuccessState != null) {
      return plCountSuccessState(plCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlCountSuccessState value) plCountSuccessState,
    required TResult Function(PlCountFailedState value) plCountFailedState,
  }) {
    return plCountSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlCountSuccessState value)? plCountSuccessState,
    TResult? Function(PlCountFailedState value)? plCountFailedState,
  }) {
    return plCountSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlCountSuccessState value)? plCountSuccessState,
    TResult Function(PlCountFailedState value)? plCountFailedState,
    required TResult orElse(),
  }) {
    if (plCountSuccessState != null) {
      return plCountSuccessState(this);
    }
    return orElse();
  }
}

abstract class PlCountSuccessState implements PickingAndLoadingCountState {
  const factory PlCountSuccessState(
          {required final PickingAndLoadinCountsModel? plCount}) =
      _$PlCountSuccessStateImpl;

  PickingAndLoadinCountsModel? get plCount;
  @JsonKey(ignore: true)
  _$$PlCountSuccessStateImplCopyWith<_$PlCountSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlCountFailedStateImplCopyWith<$Res> {
  factory _$$PlCountFailedStateImplCopyWith(_$PlCountFailedStateImpl value,
          $Res Function(_$PlCountFailedStateImpl) then) =
      __$$PlCountFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlCountFailedStateImplCopyWithImpl<$Res>
    extends _$PickingAndLoadingCountStateCopyWithImpl<$Res,
        _$PlCountFailedStateImpl>
    implements _$$PlCountFailedStateImplCopyWith<$Res> {
  __$$PlCountFailedStateImplCopyWithImpl(_$PlCountFailedStateImpl _value,
      $Res Function(_$PlCountFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlCountFailedStateImpl implements PlCountFailedState {
  const _$PlCountFailedStateImpl();

  @override
  String toString() {
    return 'PickingAndLoadingCountState.plCountFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlCountFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PickingAndLoadinCountsModel? plCount)
        plCountSuccessState,
    required TResult Function() plCountFailedState,
  }) {
    return plCountFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PickingAndLoadinCountsModel? plCount)?
        plCountSuccessState,
    TResult? Function()? plCountFailedState,
  }) {
    return plCountFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PickingAndLoadinCountsModel? plCount)? plCountSuccessState,
    TResult Function()? plCountFailedState,
    required TResult orElse(),
  }) {
    if (plCountFailedState != null) {
      return plCountFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlCountSuccessState value) plCountSuccessState,
    required TResult Function(PlCountFailedState value) plCountFailedState,
  }) {
    return plCountFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlCountSuccessState value)? plCountSuccessState,
    TResult? Function(PlCountFailedState value)? plCountFailedState,
  }) {
    return plCountFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlCountSuccessState value)? plCountSuccessState,
    TResult Function(PlCountFailedState value)? plCountFailedState,
    required TResult orElse(),
  }) {
    if (plCountFailedState != null) {
      return plCountFailedState(this);
    }
    return orElse();
  }
}

abstract class PlCountFailedState implements PickingAndLoadingCountState {
  const factory PlCountFailedState() = _$PlCountFailedStateImpl;
}
