// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_return_reason_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduleReturnReasonEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rsnType) scheduleReturnSuccessEvent,
    required TResult Function() clearScheduleReasonEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rsnType)? scheduleReturnSuccessEvent,
    TResult? Function()? clearScheduleReasonEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rsnType)? scheduleReturnSuccessEvent,
    TResult Function()? clearScheduleReasonEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleReturnSuccessEvent value)
        scheduleReturnSuccessEvent,
    required TResult Function(ClearScheduleReasonEvent value)
        clearScheduleReasonEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleReturnSuccessEvent value)?
        scheduleReturnSuccessEvent,
    TResult? Function(ClearScheduleReasonEvent value)? clearScheduleReasonEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleReturnSuccessEvent value)?
        scheduleReturnSuccessEvent,
    TResult Function(ClearScheduleReasonEvent value)? clearScheduleReasonEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleReturnReasonEventCopyWith<$Res> {
  factory $ScheduleReturnReasonEventCopyWith(ScheduleReturnReasonEvent value,
          $Res Function(ScheduleReturnReasonEvent) then) =
      _$ScheduleReturnReasonEventCopyWithImpl<$Res, ScheduleReturnReasonEvent>;
}

/// @nodoc
class _$ScheduleReturnReasonEventCopyWithImpl<$Res,
        $Val extends ScheduleReturnReasonEvent>
    implements $ScheduleReturnReasonEventCopyWith<$Res> {
  _$ScheduleReturnReasonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ScheduleReturnSuccessEventImplCopyWith<$Res> {
  factory _$$ScheduleReturnSuccessEventImplCopyWith(
          _$ScheduleReturnSuccessEventImpl value,
          $Res Function(_$ScheduleReturnSuccessEventImpl) then) =
      __$$ScheduleReturnSuccessEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String rsnType});
}

/// @nodoc
class __$$ScheduleReturnSuccessEventImplCopyWithImpl<$Res>
    extends _$ScheduleReturnReasonEventCopyWithImpl<$Res,
        _$ScheduleReturnSuccessEventImpl>
    implements _$$ScheduleReturnSuccessEventImplCopyWith<$Res> {
  __$$ScheduleReturnSuccessEventImplCopyWithImpl(
      _$ScheduleReturnSuccessEventImpl _value,
      $Res Function(_$ScheduleReturnSuccessEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rsnType = null,
  }) {
    return _then(_$ScheduleReturnSuccessEventImpl(
      rsnType: null == rsnType
          ? _value.rsnType
          : rsnType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ScheduleReturnSuccessEventImpl implements ScheduleReturnSuccessEvent {
  const _$ScheduleReturnSuccessEventImpl({required this.rsnType});

  @override
  final String rsnType;

  @override
  String toString() {
    return 'ScheduleReturnReasonEvent.scheduleReturnSuccessEvent(rsnType: $rsnType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleReturnSuccessEventImpl &&
            (identical(other.rsnType, rsnType) || other.rsnType == rsnType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rsnType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleReturnSuccessEventImplCopyWith<_$ScheduleReturnSuccessEventImpl>
      get copyWith => __$$ScheduleReturnSuccessEventImplCopyWithImpl<
          _$ScheduleReturnSuccessEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rsnType) scheduleReturnSuccessEvent,
    required TResult Function() clearScheduleReasonEvent,
  }) {
    return scheduleReturnSuccessEvent(rsnType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rsnType)? scheduleReturnSuccessEvent,
    TResult? Function()? clearScheduleReasonEvent,
  }) {
    return scheduleReturnSuccessEvent?.call(rsnType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rsnType)? scheduleReturnSuccessEvent,
    TResult Function()? clearScheduleReasonEvent,
    required TResult orElse(),
  }) {
    if (scheduleReturnSuccessEvent != null) {
      return scheduleReturnSuccessEvent(rsnType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleReturnSuccessEvent value)
        scheduleReturnSuccessEvent,
    required TResult Function(ClearScheduleReasonEvent value)
        clearScheduleReasonEvent,
  }) {
    return scheduleReturnSuccessEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleReturnSuccessEvent value)?
        scheduleReturnSuccessEvent,
    TResult? Function(ClearScheduleReasonEvent value)? clearScheduleReasonEvent,
  }) {
    return scheduleReturnSuccessEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleReturnSuccessEvent value)?
        scheduleReturnSuccessEvent,
    TResult Function(ClearScheduleReasonEvent value)? clearScheduleReasonEvent,
    required TResult orElse(),
  }) {
    if (scheduleReturnSuccessEvent != null) {
      return scheduleReturnSuccessEvent(this);
    }
    return orElse();
  }
}

abstract class ScheduleReturnSuccessEvent implements ScheduleReturnReasonEvent {
  const factory ScheduleReturnSuccessEvent({required final String rsnType}) =
      _$ScheduleReturnSuccessEventImpl;

  String get rsnType;
  @JsonKey(ignore: true)
  _$$ScheduleReturnSuccessEventImplCopyWith<_$ScheduleReturnSuccessEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearScheduleReasonEventImplCopyWith<$Res> {
  factory _$$ClearScheduleReasonEventImplCopyWith(
          _$ClearScheduleReasonEventImpl value,
          $Res Function(_$ClearScheduleReasonEventImpl) then) =
      __$$ClearScheduleReasonEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearScheduleReasonEventImplCopyWithImpl<$Res>
    extends _$ScheduleReturnReasonEventCopyWithImpl<$Res,
        _$ClearScheduleReasonEventImpl>
    implements _$$ClearScheduleReasonEventImplCopyWith<$Res> {
  __$$ClearScheduleReasonEventImplCopyWithImpl(
      _$ClearScheduleReasonEventImpl _value,
      $Res Function(_$ClearScheduleReasonEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearScheduleReasonEventImpl implements ClearScheduleReasonEvent {
  const _$ClearScheduleReasonEventImpl();

  @override
  String toString() {
    return 'ScheduleReturnReasonEvent.clearScheduleReasonEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearScheduleReasonEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rsnType) scheduleReturnSuccessEvent,
    required TResult Function() clearScheduleReasonEvent,
  }) {
    return clearScheduleReasonEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rsnType)? scheduleReturnSuccessEvent,
    TResult? Function()? clearScheduleReasonEvent,
  }) {
    return clearScheduleReasonEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rsnType)? scheduleReturnSuccessEvent,
    TResult Function()? clearScheduleReasonEvent,
    required TResult orElse(),
  }) {
    if (clearScheduleReasonEvent != null) {
      return clearScheduleReasonEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleReturnSuccessEvent value)
        scheduleReturnSuccessEvent,
    required TResult Function(ClearScheduleReasonEvent value)
        clearScheduleReasonEvent,
  }) {
    return clearScheduleReasonEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleReturnSuccessEvent value)?
        scheduleReturnSuccessEvent,
    TResult? Function(ClearScheduleReasonEvent value)? clearScheduleReasonEvent,
  }) {
    return clearScheduleReasonEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleReturnSuccessEvent value)?
        scheduleReturnSuccessEvent,
    TResult Function(ClearScheduleReasonEvent value)? clearScheduleReasonEvent,
    required TResult orElse(),
  }) {
    if (clearScheduleReasonEvent != null) {
      return clearScheduleReasonEvent(this);
    }
    return orElse();
  }
}

abstract class ClearScheduleReasonEvent implements ScheduleReturnReasonEvent {
  const factory ClearScheduleReasonEvent() = _$ClearScheduleReasonEventImpl;
}

/// @nodoc
mixin _$ScheduleReturnReasonState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ScheduleReturnApprovalReasonModel>? reason)
        getScheduleReturnReasonState,
    required TResult Function() scheduleReturnReasonFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ScheduleReturnApprovalReasonModel>? reason)?
        getScheduleReturnReasonState,
    TResult? Function()? scheduleReturnReasonFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ScheduleReturnApprovalReasonModel>? reason)?
        getScheduleReturnReasonState,
    TResult Function()? scheduleReturnReasonFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetScheduleReturnReasonState value)
        getScheduleReturnReasonState,
    required TResult Function(ScheduleReturnReasonFailedState value)
        scheduleReturnReasonFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetScheduleReturnReasonState value)?
        getScheduleReturnReasonState,
    TResult? Function(ScheduleReturnReasonFailedState value)?
        scheduleReturnReasonFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetScheduleReturnReasonState value)?
        getScheduleReturnReasonState,
    TResult Function(ScheduleReturnReasonFailedState value)?
        scheduleReturnReasonFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleReturnReasonStateCopyWith<$Res> {
  factory $ScheduleReturnReasonStateCopyWith(ScheduleReturnReasonState value,
          $Res Function(ScheduleReturnReasonState) then) =
      _$ScheduleReturnReasonStateCopyWithImpl<$Res, ScheduleReturnReasonState>;
}

/// @nodoc
class _$ScheduleReturnReasonStateCopyWithImpl<$Res,
        $Val extends ScheduleReturnReasonState>
    implements $ScheduleReturnReasonStateCopyWith<$Res> {
  _$ScheduleReturnReasonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetScheduleReturnReasonStateImplCopyWith<$Res> {
  factory _$$GetScheduleReturnReasonStateImplCopyWith(
          _$GetScheduleReturnReasonStateImpl value,
          $Res Function(_$GetScheduleReturnReasonStateImpl) then) =
      __$$GetScheduleReturnReasonStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ScheduleReturnApprovalReasonModel>? reason});
}

/// @nodoc
class __$$GetScheduleReturnReasonStateImplCopyWithImpl<$Res>
    extends _$ScheduleReturnReasonStateCopyWithImpl<$Res,
        _$GetScheduleReturnReasonStateImpl>
    implements _$$GetScheduleReturnReasonStateImplCopyWith<$Res> {
  __$$GetScheduleReturnReasonStateImplCopyWithImpl(
      _$GetScheduleReturnReasonStateImpl _value,
      $Res Function(_$GetScheduleReturnReasonStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(_$GetScheduleReturnReasonStateImpl(
      reason: freezed == reason
          ? _value._reason
          : reason // ignore: cast_nullable_to_non_nullable
              as List<ScheduleReturnApprovalReasonModel>?,
    ));
  }
}

/// @nodoc

class _$GetScheduleReturnReasonStateImpl
    implements GetScheduleReturnReasonState {
  const _$GetScheduleReturnReasonStateImpl(
      {required final List<ScheduleReturnApprovalReasonModel>? reason})
      : _reason = reason;

  final List<ScheduleReturnApprovalReasonModel>? _reason;
  @override
  List<ScheduleReturnApprovalReasonModel>? get reason {
    final value = _reason;
    if (value == null) return null;
    if (_reason is EqualUnmodifiableListView) return _reason;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ScheduleReturnReasonState.getScheduleReturnReasonState(reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetScheduleReturnReasonStateImpl &&
            const DeepCollectionEquality().equals(other._reason, _reason));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_reason));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetScheduleReturnReasonStateImplCopyWith<
          _$GetScheduleReturnReasonStateImpl>
      get copyWith => __$$GetScheduleReturnReasonStateImplCopyWithImpl<
          _$GetScheduleReturnReasonStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ScheduleReturnApprovalReasonModel>? reason)
        getScheduleReturnReasonState,
    required TResult Function() scheduleReturnReasonFailedState,
  }) {
    return getScheduleReturnReasonState(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ScheduleReturnApprovalReasonModel>? reason)?
        getScheduleReturnReasonState,
    TResult? Function()? scheduleReturnReasonFailedState,
  }) {
    return getScheduleReturnReasonState?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ScheduleReturnApprovalReasonModel>? reason)?
        getScheduleReturnReasonState,
    TResult Function()? scheduleReturnReasonFailedState,
    required TResult orElse(),
  }) {
    if (getScheduleReturnReasonState != null) {
      return getScheduleReturnReasonState(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetScheduleReturnReasonState value)
        getScheduleReturnReasonState,
    required TResult Function(ScheduleReturnReasonFailedState value)
        scheduleReturnReasonFailedState,
  }) {
    return getScheduleReturnReasonState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetScheduleReturnReasonState value)?
        getScheduleReturnReasonState,
    TResult? Function(ScheduleReturnReasonFailedState value)?
        scheduleReturnReasonFailedState,
  }) {
    return getScheduleReturnReasonState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetScheduleReturnReasonState value)?
        getScheduleReturnReasonState,
    TResult Function(ScheduleReturnReasonFailedState value)?
        scheduleReturnReasonFailedState,
    required TResult orElse(),
  }) {
    if (getScheduleReturnReasonState != null) {
      return getScheduleReturnReasonState(this);
    }
    return orElse();
  }
}

abstract class GetScheduleReturnReasonState
    implements ScheduleReturnReasonState {
  const factory GetScheduleReturnReasonState(
          {required final List<ScheduleReturnApprovalReasonModel>? reason}) =
      _$GetScheduleReturnReasonStateImpl;

  List<ScheduleReturnApprovalReasonModel>? get reason;
  @JsonKey(ignore: true)
  _$$GetScheduleReturnReasonStateImplCopyWith<
          _$GetScheduleReturnReasonStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleReturnReasonFailedStateImplCopyWith<$Res> {
  factory _$$ScheduleReturnReasonFailedStateImplCopyWith(
          _$ScheduleReturnReasonFailedStateImpl value,
          $Res Function(_$ScheduleReturnReasonFailedStateImpl) then) =
      __$$ScheduleReturnReasonFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScheduleReturnReasonFailedStateImplCopyWithImpl<$Res>
    extends _$ScheduleReturnReasonStateCopyWithImpl<$Res,
        _$ScheduleReturnReasonFailedStateImpl>
    implements _$$ScheduleReturnReasonFailedStateImplCopyWith<$Res> {
  __$$ScheduleReturnReasonFailedStateImplCopyWithImpl(
      _$ScheduleReturnReasonFailedStateImpl _value,
      $Res Function(_$ScheduleReturnReasonFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScheduleReturnReasonFailedStateImpl
    implements ScheduleReturnReasonFailedState {
  const _$ScheduleReturnReasonFailedStateImpl();

  @override
  String toString() {
    return 'ScheduleReturnReasonState.scheduleReturnReasonFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleReturnReasonFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ScheduleReturnApprovalReasonModel>? reason)
        getScheduleReturnReasonState,
    required TResult Function() scheduleReturnReasonFailedState,
  }) {
    return scheduleReturnReasonFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ScheduleReturnApprovalReasonModel>? reason)?
        getScheduleReturnReasonState,
    TResult? Function()? scheduleReturnReasonFailedState,
  }) {
    return scheduleReturnReasonFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ScheduleReturnApprovalReasonModel>? reason)?
        getScheduleReturnReasonState,
    TResult Function()? scheduleReturnReasonFailedState,
    required TResult orElse(),
  }) {
    if (scheduleReturnReasonFailedState != null) {
      return scheduleReturnReasonFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetScheduleReturnReasonState value)
        getScheduleReturnReasonState,
    required TResult Function(ScheduleReturnReasonFailedState value)
        scheduleReturnReasonFailedState,
  }) {
    return scheduleReturnReasonFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetScheduleReturnReasonState value)?
        getScheduleReturnReasonState,
    TResult? Function(ScheduleReturnReasonFailedState value)?
        scheduleReturnReasonFailedState,
  }) {
    return scheduleReturnReasonFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetScheduleReturnReasonState value)?
        getScheduleReturnReasonState,
    TResult Function(ScheduleReturnReasonFailedState value)?
        scheduleReturnReasonFailedState,
    required TResult orElse(),
  }) {
    if (scheduleReturnReasonFailedState != null) {
      return scheduleReturnReasonFailedState(this);
    }
    return orElse();
  }
}

abstract class ScheduleReturnReasonFailedState
    implements ScheduleReturnReasonState {
  const factory ScheduleReturnReasonFailedState() =
      _$ScheduleReturnReasonFailedStateImpl;
}
