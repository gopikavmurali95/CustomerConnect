// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settlement_approval_reject_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettlementApprovalRejectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getRejectApprovalEvent,
    required TResult Function() rejectApprovalLoadingEvent,
    required TResult Function() clearRejectApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getRejectApprovalEvent,
    TResult? Function()? rejectApprovalLoadingEvent,
    TResult? Function()? clearRejectApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getRejectApprovalEvent,
    TResult Function()? rejectApprovalLoadingEvent,
    TResult Function()? clearRejectApprovalEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRejectApprovalEvent value)
        getRejectApprovalEvent,
    required TResult Function(RejectApprovalLoadingEvent value)
        rejectApprovalLoadingEvent,
    required TResult Function(ClearRejectApprovalEvent value)
        clearRejectApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRejectApprovalEvent value)? getRejectApprovalEvent,
    TResult? Function(RejectApprovalLoadingEvent value)?
        rejectApprovalLoadingEvent,
    TResult? Function(ClearRejectApprovalEvent value)? clearRejectApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRejectApprovalEvent value)? getRejectApprovalEvent,
    TResult Function(RejectApprovalLoadingEvent value)?
        rejectApprovalLoadingEvent,
    TResult Function(ClearRejectApprovalEvent value)? clearRejectApprovalEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettlementApprovalRejectEventCopyWith<$Res> {
  factory $SettlementApprovalRejectEventCopyWith(
          SettlementApprovalRejectEvent value,
          $Res Function(SettlementApprovalRejectEvent) then) =
      _$SettlementApprovalRejectEventCopyWithImpl<$Res,
          SettlementApprovalRejectEvent>;
}

/// @nodoc
class _$SettlementApprovalRejectEventCopyWithImpl<$Res,
        $Val extends SettlementApprovalRejectEvent>
    implements $SettlementApprovalRejectEventCopyWith<$Res> {
  _$SettlementApprovalRejectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetRejectApprovalEventImplCopyWith<$Res> {
  factory _$$GetRejectApprovalEventImplCopyWith(
          _$GetRejectApprovalEventImpl value,
          $Res Function(_$GetRejectApprovalEventImpl) then) =
      __$$GetRejectApprovalEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String udpID});
}

/// @nodoc
class __$$GetRejectApprovalEventImplCopyWithImpl<$Res>
    extends _$SettlementApprovalRejectEventCopyWithImpl<$Res,
        _$GetRejectApprovalEventImpl>
    implements _$$GetRejectApprovalEventImplCopyWith<$Res> {
  __$$GetRejectApprovalEventImplCopyWithImpl(
      _$GetRejectApprovalEventImpl _value,
      $Res Function(_$GetRejectApprovalEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? udpID = null,
  }) {
    return _then(_$GetRejectApprovalEventImpl(
      udpID: null == udpID
          ? _value.udpID
          : udpID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetRejectApprovalEventImpl implements GetRejectApprovalEvent {
  const _$GetRejectApprovalEventImpl({required this.udpID});

  @override
  final String udpID;

  @override
  String toString() {
    return 'SettlementApprovalRejectEvent.getRejectApprovalEvent(udpID: $udpID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRejectApprovalEventImpl &&
            (identical(other.udpID, udpID) || other.udpID == udpID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, udpID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRejectApprovalEventImplCopyWith<_$GetRejectApprovalEventImpl>
      get copyWith => __$$GetRejectApprovalEventImplCopyWithImpl<
          _$GetRejectApprovalEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getRejectApprovalEvent,
    required TResult Function() rejectApprovalLoadingEvent,
    required TResult Function() clearRejectApprovalEvent,
  }) {
    return getRejectApprovalEvent(udpID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getRejectApprovalEvent,
    TResult? Function()? rejectApprovalLoadingEvent,
    TResult? Function()? clearRejectApprovalEvent,
  }) {
    return getRejectApprovalEvent?.call(udpID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getRejectApprovalEvent,
    TResult Function()? rejectApprovalLoadingEvent,
    TResult Function()? clearRejectApprovalEvent,
    required TResult orElse(),
  }) {
    if (getRejectApprovalEvent != null) {
      return getRejectApprovalEvent(udpID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRejectApprovalEvent value)
        getRejectApprovalEvent,
    required TResult Function(RejectApprovalLoadingEvent value)
        rejectApprovalLoadingEvent,
    required TResult Function(ClearRejectApprovalEvent value)
        clearRejectApprovalEvent,
  }) {
    return getRejectApprovalEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRejectApprovalEvent value)? getRejectApprovalEvent,
    TResult? Function(RejectApprovalLoadingEvent value)?
        rejectApprovalLoadingEvent,
    TResult? Function(ClearRejectApprovalEvent value)? clearRejectApprovalEvent,
  }) {
    return getRejectApprovalEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRejectApprovalEvent value)? getRejectApprovalEvent,
    TResult Function(RejectApprovalLoadingEvent value)?
        rejectApprovalLoadingEvent,
    TResult Function(ClearRejectApprovalEvent value)? clearRejectApprovalEvent,
    required TResult orElse(),
  }) {
    if (getRejectApprovalEvent != null) {
      return getRejectApprovalEvent(this);
    }
    return orElse();
  }
}

abstract class GetRejectApprovalEvent implements SettlementApprovalRejectEvent {
  const factory GetRejectApprovalEvent({required final String udpID}) =
      _$GetRejectApprovalEventImpl;

  String get udpID;
  @JsonKey(ignore: true)
  _$$GetRejectApprovalEventImplCopyWith<_$GetRejectApprovalEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RejectApprovalLoadingEventImplCopyWith<$Res> {
  factory _$$RejectApprovalLoadingEventImplCopyWith(
          _$RejectApprovalLoadingEventImpl value,
          $Res Function(_$RejectApprovalLoadingEventImpl) then) =
      __$$RejectApprovalLoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RejectApprovalLoadingEventImplCopyWithImpl<$Res>
    extends _$SettlementApprovalRejectEventCopyWithImpl<$Res,
        _$RejectApprovalLoadingEventImpl>
    implements _$$RejectApprovalLoadingEventImplCopyWith<$Res> {
  __$$RejectApprovalLoadingEventImplCopyWithImpl(
      _$RejectApprovalLoadingEventImpl _value,
      $Res Function(_$RejectApprovalLoadingEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RejectApprovalLoadingEventImpl implements RejectApprovalLoadingEvent {
  const _$RejectApprovalLoadingEventImpl();

  @override
  String toString() {
    return 'SettlementApprovalRejectEvent.rejectApprovalLoadingEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RejectApprovalLoadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getRejectApprovalEvent,
    required TResult Function() rejectApprovalLoadingEvent,
    required TResult Function() clearRejectApprovalEvent,
  }) {
    return rejectApprovalLoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getRejectApprovalEvent,
    TResult? Function()? rejectApprovalLoadingEvent,
    TResult? Function()? clearRejectApprovalEvent,
  }) {
    return rejectApprovalLoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getRejectApprovalEvent,
    TResult Function()? rejectApprovalLoadingEvent,
    TResult Function()? clearRejectApprovalEvent,
    required TResult orElse(),
  }) {
    if (rejectApprovalLoadingEvent != null) {
      return rejectApprovalLoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRejectApprovalEvent value)
        getRejectApprovalEvent,
    required TResult Function(RejectApprovalLoadingEvent value)
        rejectApprovalLoadingEvent,
    required TResult Function(ClearRejectApprovalEvent value)
        clearRejectApprovalEvent,
  }) {
    return rejectApprovalLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRejectApprovalEvent value)? getRejectApprovalEvent,
    TResult? Function(RejectApprovalLoadingEvent value)?
        rejectApprovalLoadingEvent,
    TResult? Function(ClearRejectApprovalEvent value)? clearRejectApprovalEvent,
  }) {
    return rejectApprovalLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRejectApprovalEvent value)? getRejectApprovalEvent,
    TResult Function(RejectApprovalLoadingEvent value)?
        rejectApprovalLoadingEvent,
    TResult Function(ClearRejectApprovalEvent value)? clearRejectApprovalEvent,
    required TResult orElse(),
  }) {
    if (rejectApprovalLoadingEvent != null) {
      return rejectApprovalLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class RejectApprovalLoadingEvent
    implements SettlementApprovalRejectEvent {
  const factory RejectApprovalLoadingEvent() = _$RejectApprovalLoadingEventImpl;
}

/// @nodoc
abstract class _$$ClearRejectApprovalEventImplCopyWith<$Res> {
  factory _$$ClearRejectApprovalEventImplCopyWith(
          _$ClearRejectApprovalEventImpl value,
          $Res Function(_$ClearRejectApprovalEventImpl) then) =
      __$$ClearRejectApprovalEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearRejectApprovalEventImplCopyWithImpl<$Res>
    extends _$SettlementApprovalRejectEventCopyWithImpl<$Res,
        _$ClearRejectApprovalEventImpl>
    implements _$$ClearRejectApprovalEventImplCopyWith<$Res> {
  __$$ClearRejectApprovalEventImplCopyWithImpl(
      _$ClearRejectApprovalEventImpl _value,
      $Res Function(_$ClearRejectApprovalEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearRejectApprovalEventImpl implements ClearRejectApprovalEvent {
  const _$ClearRejectApprovalEventImpl();

  @override
  String toString() {
    return 'SettlementApprovalRejectEvent.clearRejectApprovalEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearRejectApprovalEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getRejectApprovalEvent,
    required TResult Function() rejectApprovalLoadingEvent,
    required TResult Function() clearRejectApprovalEvent,
  }) {
    return clearRejectApprovalEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getRejectApprovalEvent,
    TResult? Function()? rejectApprovalLoadingEvent,
    TResult? Function()? clearRejectApprovalEvent,
  }) {
    return clearRejectApprovalEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getRejectApprovalEvent,
    TResult Function()? rejectApprovalLoadingEvent,
    TResult Function()? clearRejectApprovalEvent,
    required TResult orElse(),
  }) {
    if (clearRejectApprovalEvent != null) {
      return clearRejectApprovalEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRejectApprovalEvent value)
        getRejectApprovalEvent,
    required TResult Function(RejectApprovalLoadingEvent value)
        rejectApprovalLoadingEvent,
    required TResult Function(ClearRejectApprovalEvent value)
        clearRejectApprovalEvent,
  }) {
    return clearRejectApprovalEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRejectApprovalEvent value)? getRejectApprovalEvent,
    TResult? Function(RejectApprovalLoadingEvent value)?
        rejectApprovalLoadingEvent,
    TResult? Function(ClearRejectApprovalEvent value)? clearRejectApprovalEvent,
  }) {
    return clearRejectApprovalEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRejectApprovalEvent value)? getRejectApprovalEvent,
    TResult Function(RejectApprovalLoadingEvent value)?
        rejectApprovalLoadingEvent,
    TResult Function(ClearRejectApprovalEvent value)? clearRejectApprovalEvent,
    required TResult orElse(),
  }) {
    if (clearRejectApprovalEvent != null) {
      return clearRejectApprovalEvent(this);
    }
    return orElse();
  }
}

abstract class ClearRejectApprovalEvent
    implements SettlementApprovalRejectEvent {
  const factory ClearRejectApprovalEvent() = _$ClearRejectApprovalEventImpl;
}

/// @nodoc
mixin _$SettlementApprovalRejectState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettelemetApprovalReject? reject)
        getRejectApprovalState,
    required TResult Function() rejectApprovalFailedState,
    required TResult Function() postApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettelemetApprovalReject? reject)? getRejectApprovalState,
    TResult? Function()? rejectApprovalFailedState,
    TResult? Function()? postApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettelemetApprovalReject? reject)? getRejectApprovalState,
    TResult Function()? rejectApprovalFailedState,
    TResult Function()? postApprovalLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRejectApprovalState value)
        getRejectApprovalState,
    required TResult Function(RejectApprovalFailedState value)
        rejectApprovalFailedState,
    required TResult Function(PostApprovalLoadingState value)
        postApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRejectApprovalState value)? getRejectApprovalState,
    TResult? Function(RejectApprovalFailedState value)?
        rejectApprovalFailedState,
    TResult? Function(PostApprovalLoadingState value)? postApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRejectApprovalState value)? getRejectApprovalState,
    TResult Function(RejectApprovalFailedState value)?
        rejectApprovalFailedState,
    TResult Function(PostApprovalLoadingState value)? postApprovalLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettlementApprovalRejectStateCopyWith<$Res> {
  factory $SettlementApprovalRejectStateCopyWith(
          SettlementApprovalRejectState value,
          $Res Function(SettlementApprovalRejectState) then) =
      _$SettlementApprovalRejectStateCopyWithImpl<$Res,
          SettlementApprovalRejectState>;
}

/// @nodoc
class _$SettlementApprovalRejectStateCopyWithImpl<$Res,
        $Val extends SettlementApprovalRejectState>
    implements $SettlementApprovalRejectStateCopyWith<$Res> {
  _$SettlementApprovalRejectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetRejectApprovalStateImplCopyWith<$Res> {
  factory _$$GetRejectApprovalStateImplCopyWith(
          _$GetRejectApprovalStateImpl value,
          $Res Function(_$GetRejectApprovalStateImpl) then) =
      __$$GetRejectApprovalStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SettelemetApprovalReject? reject});
}

/// @nodoc
class __$$GetRejectApprovalStateImplCopyWithImpl<$Res>
    extends _$SettlementApprovalRejectStateCopyWithImpl<$Res,
        _$GetRejectApprovalStateImpl>
    implements _$$GetRejectApprovalStateImplCopyWith<$Res> {
  __$$GetRejectApprovalStateImplCopyWithImpl(
      _$GetRejectApprovalStateImpl _value,
      $Res Function(_$GetRejectApprovalStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reject = freezed,
  }) {
    return _then(_$GetRejectApprovalStateImpl(
      reject: freezed == reject
          ? _value.reject
          : reject // ignore: cast_nullable_to_non_nullable
              as SettelemetApprovalReject?,
    ));
  }
}

/// @nodoc

class _$GetRejectApprovalStateImpl implements GetRejectApprovalState {
  const _$GetRejectApprovalStateImpl({required this.reject});

  @override
  final SettelemetApprovalReject? reject;

  @override
  String toString() {
    return 'SettlementApprovalRejectState.getRejectApprovalState(reject: $reject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRejectApprovalStateImpl &&
            (identical(other.reject, reject) || other.reject == reject));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRejectApprovalStateImplCopyWith<_$GetRejectApprovalStateImpl>
      get copyWith => __$$GetRejectApprovalStateImplCopyWithImpl<
          _$GetRejectApprovalStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettelemetApprovalReject? reject)
        getRejectApprovalState,
    required TResult Function() rejectApprovalFailedState,
    required TResult Function() postApprovalLoadingState,
  }) {
    return getRejectApprovalState(reject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettelemetApprovalReject? reject)? getRejectApprovalState,
    TResult? Function()? rejectApprovalFailedState,
    TResult? Function()? postApprovalLoadingState,
  }) {
    return getRejectApprovalState?.call(reject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettelemetApprovalReject? reject)? getRejectApprovalState,
    TResult Function()? rejectApprovalFailedState,
    TResult Function()? postApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (getRejectApprovalState != null) {
      return getRejectApprovalState(reject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRejectApprovalState value)
        getRejectApprovalState,
    required TResult Function(RejectApprovalFailedState value)
        rejectApprovalFailedState,
    required TResult Function(PostApprovalLoadingState value)
        postApprovalLoadingState,
  }) {
    return getRejectApprovalState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRejectApprovalState value)? getRejectApprovalState,
    TResult? Function(RejectApprovalFailedState value)?
        rejectApprovalFailedState,
    TResult? Function(PostApprovalLoadingState value)? postApprovalLoadingState,
  }) {
    return getRejectApprovalState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRejectApprovalState value)? getRejectApprovalState,
    TResult Function(RejectApprovalFailedState value)?
        rejectApprovalFailedState,
    TResult Function(PostApprovalLoadingState value)? postApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (getRejectApprovalState != null) {
      return getRejectApprovalState(this);
    }
    return orElse();
  }
}

abstract class GetRejectApprovalState implements SettlementApprovalRejectState {
  const factory GetRejectApprovalState(
          {required final SettelemetApprovalReject? reject}) =
      _$GetRejectApprovalStateImpl;

  SettelemetApprovalReject? get reject;
  @JsonKey(ignore: true)
  _$$GetRejectApprovalStateImplCopyWith<_$GetRejectApprovalStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RejectApprovalFailedStateImplCopyWith<$Res> {
  factory _$$RejectApprovalFailedStateImplCopyWith(
          _$RejectApprovalFailedStateImpl value,
          $Res Function(_$RejectApprovalFailedStateImpl) then) =
      __$$RejectApprovalFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RejectApprovalFailedStateImplCopyWithImpl<$Res>
    extends _$SettlementApprovalRejectStateCopyWithImpl<$Res,
        _$RejectApprovalFailedStateImpl>
    implements _$$RejectApprovalFailedStateImplCopyWith<$Res> {
  __$$RejectApprovalFailedStateImplCopyWithImpl(
      _$RejectApprovalFailedStateImpl _value,
      $Res Function(_$RejectApprovalFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RejectApprovalFailedStateImpl implements RejectApprovalFailedState {
  const _$RejectApprovalFailedStateImpl();

  @override
  String toString() {
    return 'SettlementApprovalRejectState.rejectApprovalFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RejectApprovalFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettelemetApprovalReject? reject)
        getRejectApprovalState,
    required TResult Function() rejectApprovalFailedState,
    required TResult Function() postApprovalLoadingState,
  }) {
    return rejectApprovalFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettelemetApprovalReject? reject)? getRejectApprovalState,
    TResult? Function()? rejectApprovalFailedState,
    TResult? Function()? postApprovalLoadingState,
  }) {
    return rejectApprovalFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettelemetApprovalReject? reject)? getRejectApprovalState,
    TResult Function()? rejectApprovalFailedState,
    TResult Function()? postApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (rejectApprovalFailedState != null) {
      return rejectApprovalFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRejectApprovalState value)
        getRejectApprovalState,
    required TResult Function(RejectApprovalFailedState value)
        rejectApprovalFailedState,
    required TResult Function(PostApprovalLoadingState value)
        postApprovalLoadingState,
  }) {
    return rejectApprovalFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRejectApprovalState value)? getRejectApprovalState,
    TResult? Function(RejectApprovalFailedState value)?
        rejectApprovalFailedState,
    TResult? Function(PostApprovalLoadingState value)? postApprovalLoadingState,
  }) {
    return rejectApprovalFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRejectApprovalState value)? getRejectApprovalState,
    TResult Function(RejectApprovalFailedState value)?
        rejectApprovalFailedState,
    TResult Function(PostApprovalLoadingState value)? postApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (rejectApprovalFailedState != null) {
      return rejectApprovalFailedState(this);
    }
    return orElse();
  }
}

abstract class RejectApprovalFailedState
    implements SettlementApprovalRejectState {
  const factory RejectApprovalFailedState() = _$RejectApprovalFailedStateImpl;
}

/// @nodoc
abstract class _$$PostApprovalLoadingStateImplCopyWith<$Res> {
  factory _$$PostApprovalLoadingStateImplCopyWith(
          _$PostApprovalLoadingStateImpl value,
          $Res Function(_$PostApprovalLoadingStateImpl) then) =
      __$$PostApprovalLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostApprovalLoadingStateImplCopyWithImpl<$Res>
    extends _$SettlementApprovalRejectStateCopyWithImpl<$Res,
        _$PostApprovalLoadingStateImpl>
    implements _$$PostApprovalLoadingStateImplCopyWith<$Res> {
  __$$PostApprovalLoadingStateImplCopyWithImpl(
      _$PostApprovalLoadingStateImpl _value,
      $Res Function(_$PostApprovalLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostApprovalLoadingStateImpl implements PostApprovalLoadingState {
  const _$PostApprovalLoadingStateImpl();

  @override
  String toString() {
    return 'SettlementApprovalRejectState.postApprovalLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostApprovalLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettelemetApprovalReject? reject)
        getRejectApprovalState,
    required TResult Function() rejectApprovalFailedState,
    required TResult Function() postApprovalLoadingState,
  }) {
    return postApprovalLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettelemetApprovalReject? reject)? getRejectApprovalState,
    TResult? Function()? rejectApprovalFailedState,
    TResult? Function()? postApprovalLoadingState,
  }) {
    return postApprovalLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettelemetApprovalReject? reject)? getRejectApprovalState,
    TResult Function()? rejectApprovalFailedState,
    TResult Function()? postApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (postApprovalLoadingState != null) {
      return postApprovalLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRejectApprovalState value)
        getRejectApprovalState,
    required TResult Function(RejectApprovalFailedState value)
        rejectApprovalFailedState,
    required TResult Function(PostApprovalLoadingState value)
        postApprovalLoadingState,
  }) {
    return postApprovalLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRejectApprovalState value)? getRejectApprovalState,
    TResult? Function(RejectApprovalFailedState value)?
        rejectApprovalFailedState,
    TResult? Function(PostApprovalLoadingState value)? postApprovalLoadingState,
  }) {
    return postApprovalLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRejectApprovalState value)? getRejectApprovalState,
    TResult Function(RejectApprovalFailedState value)?
        rejectApprovalFailedState,
    TResult Function(PostApprovalLoadingState value)? postApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (postApprovalLoadingState != null) {
      return postApprovalLoadingState(this);
    }
    return orElse();
  }
}

abstract class PostApprovalLoadingState
    implements SettlementApprovalRejectState {
  const factory PostApprovalLoadingState() = _$PostApprovalLoadingStateImpl;
}
