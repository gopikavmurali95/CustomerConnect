// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schduled_return_approval_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SchduledReturnApprovalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ScheduledReturnApprovalInModel approve)
        aPProveOrRejectScheduledReturnEvent,
    required TResult Function() addScheduledReturnApprovalLoadingEvent,
    required TResult Function() clearScApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ScheduledReturnApprovalInModel approve)?
        aPProveOrRejectScheduledReturnEvent,
    TResult? Function()? addScheduledReturnApprovalLoadingEvent,
    TResult? Function()? clearScApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScheduledReturnApprovalInModel approve)?
        aPProveOrRejectScheduledReturnEvent,
    TResult Function()? addScheduledReturnApprovalLoadingEvent,
    TResult Function()? clearScApprovalEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(APProveOrRejectScheduledReturnEvent value)
        aPProveOrRejectScheduledReturnEvent,
    required TResult Function(AddScheduledReturnApprovalLoadingEvent value)
        addScheduledReturnApprovalLoadingEvent,
    required TResult Function(ClearScApprovalEvent value) clearScApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(APProveOrRejectScheduledReturnEvent value)?
        aPProveOrRejectScheduledReturnEvent,
    TResult? Function(AddScheduledReturnApprovalLoadingEvent value)?
        addScheduledReturnApprovalLoadingEvent,
    TResult? Function(ClearScApprovalEvent value)? clearScApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(APProveOrRejectScheduledReturnEvent value)?
        aPProveOrRejectScheduledReturnEvent,
    TResult Function(AddScheduledReturnApprovalLoadingEvent value)?
        addScheduledReturnApprovalLoadingEvent,
    TResult Function(ClearScApprovalEvent value)? clearScApprovalEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchduledReturnApprovalEventCopyWith<$Res> {
  factory $SchduledReturnApprovalEventCopyWith(
          SchduledReturnApprovalEvent value,
          $Res Function(SchduledReturnApprovalEvent) then) =
      _$SchduledReturnApprovalEventCopyWithImpl<$Res,
          SchduledReturnApprovalEvent>;
}

/// @nodoc
class _$SchduledReturnApprovalEventCopyWithImpl<$Res,
        $Val extends SchduledReturnApprovalEvent>
    implements $SchduledReturnApprovalEventCopyWith<$Res> {
  _$SchduledReturnApprovalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$APProveOrRejectScheduledReturnEventImplCopyWith<$Res> {
  factory _$$APProveOrRejectScheduledReturnEventImplCopyWith(
          _$APProveOrRejectScheduledReturnEventImpl value,
          $Res Function(_$APProveOrRejectScheduledReturnEventImpl) then) =
      __$$APProveOrRejectScheduledReturnEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ScheduledReturnApprovalInModel approve});
}

/// @nodoc
class __$$APProveOrRejectScheduledReturnEventImplCopyWithImpl<$Res>
    extends _$SchduledReturnApprovalEventCopyWithImpl<$Res,
        _$APProveOrRejectScheduledReturnEventImpl>
    implements _$$APProveOrRejectScheduledReturnEventImplCopyWith<$Res> {
  __$$APProveOrRejectScheduledReturnEventImplCopyWithImpl(
      _$APProveOrRejectScheduledReturnEventImpl _value,
      $Res Function(_$APProveOrRejectScheduledReturnEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approve = null,
  }) {
    return _then(_$APProveOrRejectScheduledReturnEventImpl(
      approve: null == approve
          ? _value.approve
          : approve // ignore: cast_nullable_to_non_nullable
              as ScheduledReturnApprovalInModel,
    ));
  }
}

/// @nodoc

class _$APProveOrRejectScheduledReturnEventImpl
    implements APProveOrRejectScheduledReturnEvent {
  const _$APProveOrRejectScheduledReturnEventImpl({required this.approve});

  @override
  final ScheduledReturnApprovalInModel approve;

  @override
  String toString() {
    return 'SchduledReturnApprovalEvent.aPProveOrRejectScheduledReturnEvent(approve: $approve)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$APProveOrRejectScheduledReturnEventImpl &&
            (identical(other.approve, approve) || other.approve == approve));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approve);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$APProveOrRejectScheduledReturnEventImplCopyWith<
          _$APProveOrRejectScheduledReturnEventImpl>
      get copyWith => __$$APProveOrRejectScheduledReturnEventImplCopyWithImpl<
          _$APProveOrRejectScheduledReturnEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ScheduledReturnApprovalInModel approve)
        aPProveOrRejectScheduledReturnEvent,
    required TResult Function() addScheduledReturnApprovalLoadingEvent,
    required TResult Function() clearScApprovalEvent,
  }) {
    return aPProveOrRejectScheduledReturnEvent(approve);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ScheduledReturnApprovalInModel approve)?
        aPProveOrRejectScheduledReturnEvent,
    TResult? Function()? addScheduledReturnApprovalLoadingEvent,
    TResult? Function()? clearScApprovalEvent,
  }) {
    return aPProveOrRejectScheduledReturnEvent?.call(approve);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScheduledReturnApprovalInModel approve)?
        aPProveOrRejectScheduledReturnEvent,
    TResult Function()? addScheduledReturnApprovalLoadingEvent,
    TResult Function()? clearScApprovalEvent,
    required TResult orElse(),
  }) {
    if (aPProveOrRejectScheduledReturnEvent != null) {
      return aPProveOrRejectScheduledReturnEvent(approve);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(APProveOrRejectScheduledReturnEvent value)
        aPProveOrRejectScheduledReturnEvent,
    required TResult Function(AddScheduledReturnApprovalLoadingEvent value)
        addScheduledReturnApprovalLoadingEvent,
    required TResult Function(ClearScApprovalEvent value) clearScApprovalEvent,
  }) {
    return aPProveOrRejectScheduledReturnEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(APProveOrRejectScheduledReturnEvent value)?
        aPProveOrRejectScheduledReturnEvent,
    TResult? Function(AddScheduledReturnApprovalLoadingEvent value)?
        addScheduledReturnApprovalLoadingEvent,
    TResult? Function(ClearScApprovalEvent value)? clearScApprovalEvent,
  }) {
    return aPProveOrRejectScheduledReturnEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(APProveOrRejectScheduledReturnEvent value)?
        aPProveOrRejectScheduledReturnEvent,
    TResult Function(AddScheduledReturnApprovalLoadingEvent value)?
        addScheduledReturnApprovalLoadingEvent,
    TResult Function(ClearScApprovalEvent value)? clearScApprovalEvent,
    required TResult orElse(),
  }) {
    if (aPProveOrRejectScheduledReturnEvent != null) {
      return aPProveOrRejectScheduledReturnEvent(this);
    }
    return orElse();
  }
}

abstract class APProveOrRejectScheduledReturnEvent
    implements SchduledReturnApprovalEvent {
  const factory APProveOrRejectScheduledReturnEvent(
          {required final ScheduledReturnApprovalInModel approve}) =
      _$APProveOrRejectScheduledReturnEventImpl;

  ScheduledReturnApprovalInModel get approve;
  @JsonKey(ignore: true)
  _$$APProveOrRejectScheduledReturnEventImplCopyWith<
          _$APProveOrRejectScheduledReturnEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddScheduledReturnApprovalLoadingEventImplCopyWith<$Res> {
  factory _$$AddScheduledReturnApprovalLoadingEventImplCopyWith(
          _$AddScheduledReturnApprovalLoadingEventImpl value,
          $Res Function(_$AddScheduledReturnApprovalLoadingEventImpl) then) =
      __$$AddScheduledReturnApprovalLoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddScheduledReturnApprovalLoadingEventImplCopyWithImpl<$Res>
    extends _$SchduledReturnApprovalEventCopyWithImpl<$Res,
        _$AddScheduledReturnApprovalLoadingEventImpl>
    implements _$$AddScheduledReturnApprovalLoadingEventImplCopyWith<$Res> {
  __$$AddScheduledReturnApprovalLoadingEventImplCopyWithImpl(
      _$AddScheduledReturnApprovalLoadingEventImpl _value,
      $Res Function(_$AddScheduledReturnApprovalLoadingEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddScheduledReturnApprovalLoadingEventImpl
    implements AddScheduledReturnApprovalLoadingEvent {
  const _$AddScheduledReturnApprovalLoadingEventImpl();

  @override
  String toString() {
    return 'SchduledReturnApprovalEvent.addScheduledReturnApprovalLoadingEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddScheduledReturnApprovalLoadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ScheduledReturnApprovalInModel approve)
        aPProveOrRejectScheduledReturnEvent,
    required TResult Function() addScheduledReturnApprovalLoadingEvent,
    required TResult Function() clearScApprovalEvent,
  }) {
    return addScheduledReturnApprovalLoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ScheduledReturnApprovalInModel approve)?
        aPProveOrRejectScheduledReturnEvent,
    TResult? Function()? addScheduledReturnApprovalLoadingEvent,
    TResult? Function()? clearScApprovalEvent,
  }) {
    return addScheduledReturnApprovalLoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScheduledReturnApprovalInModel approve)?
        aPProveOrRejectScheduledReturnEvent,
    TResult Function()? addScheduledReturnApprovalLoadingEvent,
    TResult Function()? clearScApprovalEvent,
    required TResult orElse(),
  }) {
    if (addScheduledReturnApprovalLoadingEvent != null) {
      return addScheduledReturnApprovalLoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(APProveOrRejectScheduledReturnEvent value)
        aPProveOrRejectScheduledReturnEvent,
    required TResult Function(AddScheduledReturnApprovalLoadingEvent value)
        addScheduledReturnApprovalLoadingEvent,
    required TResult Function(ClearScApprovalEvent value) clearScApprovalEvent,
  }) {
    return addScheduledReturnApprovalLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(APProveOrRejectScheduledReturnEvent value)?
        aPProveOrRejectScheduledReturnEvent,
    TResult? Function(AddScheduledReturnApprovalLoadingEvent value)?
        addScheduledReturnApprovalLoadingEvent,
    TResult? Function(ClearScApprovalEvent value)? clearScApprovalEvent,
  }) {
    return addScheduledReturnApprovalLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(APProveOrRejectScheduledReturnEvent value)?
        aPProveOrRejectScheduledReturnEvent,
    TResult Function(AddScheduledReturnApprovalLoadingEvent value)?
        addScheduledReturnApprovalLoadingEvent,
    TResult Function(ClearScApprovalEvent value)? clearScApprovalEvent,
    required TResult orElse(),
  }) {
    if (addScheduledReturnApprovalLoadingEvent != null) {
      return addScheduledReturnApprovalLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class AddScheduledReturnApprovalLoadingEvent
    implements SchduledReturnApprovalEvent {
  const factory AddScheduledReturnApprovalLoadingEvent() =
      _$AddScheduledReturnApprovalLoadingEventImpl;
}

/// @nodoc
abstract class _$$ClearScApprovalEventImplCopyWith<$Res> {
  factory _$$ClearScApprovalEventImplCopyWith(_$ClearScApprovalEventImpl value,
          $Res Function(_$ClearScApprovalEventImpl) then) =
      __$$ClearScApprovalEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearScApprovalEventImplCopyWithImpl<$Res>
    extends _$SchduledReturnApprovalEventCopyWithImpl<$Res,
        _$ClearScApprovalEventImpl>
    implements _$$ClearScApprovalEventImplCopyWith<$Res> {
  __$$ClearScApprovalEventImplCopyWithImpl(_$ClearScApprovalEventImpl _value,
      $Res Function(_$ClearScApprovalEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearScApprovalEventImpl implements ClearScApprovalEvent {
  const _$ClearScApprovalEventImpl();

  @override
  String toString() {
    return 'SchduledReturnApprovalEvent.clearScApprovalEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearScApprovalEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ScheduledReturnApprovalInModel approve)
        aPProveOrRejectScheduledReturnEvent,
    required TResult Function() addScheduledReturnApprovalLoadingEvent,
    required TResult Function() clearScApprovalEvent,
  }) {
    return clearScApprovalEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ScheduledReturnApprovalInModel approve)?
        aPProveOrRejectScheduledReturnEvent,
    TResult? Function()? addScheduledReturnApprovalLoadingEvent,
    TResult? Function()? clearScApprovalEvent,
  }) {
    return clearScApprovalEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScheduledReturnApprovalInModel approve)?
        aPProveOrRejectScheduledReturnEvent,
    TResult Function()? addScheduledReturnApprovalLoadingEvent,
    TResult Function()? clearScApprovalEvent,
    required TResult orElse(),
  }) {
    if (clearScApprovalEvent != null) {
      return clearScApprovalEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(APProveOrRejectScheduledReturnEvent value)
        aPProveOrRejectScheduledReturnEvent,
    required TResult Function(AddScheduledReturnApprovalLoadingEvent value)
        addScheduledReturnApprovalLoadingEvent,
    required TResult Function(ClearScApprovalEvent value) clearScApprovalEvent,
  }) {
    return clearScApprovalEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(APProveOrRejectScheduledReturnEvent value)?
        aPProveOrRejectScheduledReturnEvent,
    TResult? Function(AddScheduledReturnApprovalLoadingEvent value)?
        addScheduledReturnApprovalLoadingEvent,
    TResult? Function(ClearScApprovalEvent value)? clearScApprovalEvent,
  }) {
    return clearScApprovalEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(APProveOrRejectScheduledReturnEvent value)?
        aPProveOrRejectScheduledReturnEvent,
    TResult Function(AddScheduledReturnApprovalLoadingEvent value)?
        addScheduledReturnApprovalLoadingEvent,
    TResult Function(ClearScApprovalEvent value)? clearScApprovalEvent,
    required TResult orElse(),
  }) {
    if (clearScApprovalEvent != null) {
      return clearScApprovalEvent(this);
    }
    return orElse();
  }
}

abstract class ClearScApprovalEvent implements SchduledReturnApprovalEvent {
  const factory ClearScApprovalEvent() = _$ClearScApprovalEventImpl;
}

/// @nodoc
mixin _$SchduledReturnApprovalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ScheduledReturnApprovalOutModel? status)
        scheduledReturnApprovalStatusStates,
    required TResult Function() schduledReturnApprovalFailedState,
    required TResult Function() scheduledReturnLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ScheduledReturnApprovalOutModel? status)?
        scheduledReturnApprovalStatusStates,
    TResult? Function()? schduledReturnApprovalFailedState,
    TResult? Function()? scheduledReturnLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScheduledReturnApprovalOutModel? status)?
        scheduledReturnApprovalStatusStates,
    TResult Function()? schduledReturnApprovalFailedState,
    TResult Function()? scheduledReturnLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduledReturnApprovalStatusStates value)
        scheduledReturnApprovalStatusStates,
    required TResult Function(SchduledReturnApprovalFailedState value)
        schduledReturnApprovalFailedState,
    required TResult Function(ScheduledReturnLoadingState value)
        scheduledReturnLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduledReturnApprovalStatusStates value)?
        scheduledReturnApprovalStatusStates,
    TResult? Function(SchduledReturnApprovalFailedState value)?
        schduledReturnApprovalFailedState,
    TResult? Function(ScheduledReturnLoadingState value)?
        scheduledReturnLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduledReturnApprovalStatusStates value)?
        scheduledReturnApprovalStatusStates,
    TResult Function(SchduledReturnApprovalFailedState value)?
        schduledReturnApprovalFailedState,
    TResult Function(ScheduledReturnLoadingState value)?
        scheduledReturnLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchduledReturnApprovalStateCopyWith<$Res> {
  factory $SchduledReturnApprovalStateCopyWith(
          SchduledReturnApprovalState value,
          $Res Function(SchduledReturnApprovalState) then) =
      _$SchduledReturnApprovalStateCopyWithImpl<$Res,
          SchduledReturnApprovalState>;
}

/// @nodoc
class _$SchduledReturnApprovalStateCopyWithImpl<$Res,
        $Val extends SchduledReturnApprovalState>
    implements $SchduledReturnApprovalStateCopyWith<$Res> {
  _$SchduledReturnApprovalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ScheduledReturnApprovalStatusStatesImplCopyWith<$Res> {
  factory _$$ScheduledReturnApprovalStatusStatesImplCopyWith(
          _$ScheduledReturnApprovalStatusStatesImpl value,
          $Res Function(_$ScheduledReturnApprovalStatusStatesImpl) then) =
      __$$ScheduledReturnApprovalStatusStatesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ScheduledReturnApprovalOutModel? status});
}

/// @nodoc
class __$$ScheduledReturnApprovalStatusStatesImplCopyWithImpl<$Res>
    extends _$SchduledReturnApprovalStateCopyWithImpl<$Res,
        _$ScheduledReturnApprovalStatusStatesImpl>
    implements _$$ScheduledReturnApprovalStatusStatesImplCopyWith<$Res> {
  __$$ScheduledReturnApprovalStatusStatesImplCopyWithImpl(
      _$ScheduledReturnApprovalStatusStatesImpl _value,
      $Res Function(_$ScheduledReturnApprovalStatusStatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$ScheduledReturnApprovalStatusStatesImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ScheduledReturnApprovalOutModel?,
    ));
  }
}

/// @nodoc

class _$ScheduledReturnApprovalStatusStatesImpl
    implements ScheduledReturnApprovalStatusStates {
  const _$ScheduledReturnApprovalStatusStatesImpl({required this.status});

  @override
  final ScheduledReturnApprovalOutModel? status;

  @override
  String toString() {
    return 'SchduledReturnApprovalState.scheduledReturnApprovalStatusStates(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduledReturnApprovalStatusStatesImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduledReturnApprovalStatusStatesImplCopyWith<
          _$ScheduledReturnApprovalStatusStatesImpl>
      get copyWith => __$$ScheduledReturnApprovalStatusStatesImplCopyWithImpl<
          _$ScheduledReturnApprovalStatusStatesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ScheduledReturnApprovalOutModel? status)
        scheduledReturnApprovalStatusStates,
    required TResult Function() schduledReturnApprovalFailedState,
    required TResult Function() scheduledReturnLoadingState,
  }) {
    return scheduledReturnApprovalStatusStates(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ScheduledReturnApprovalOutModel? status)?
        scheduledReturnApprovalStatusStates,
    TResult? Function()? schduledReturnApprovalFailedState,
    TResult? Function()? scheduledReturnLoadingState,
  }) {
    return scheduledReturnApprovalStatusStates?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScheduledReturnApprovalOutModel? status)?
        scheduledReturnApprovalStatusStates,
    TResult Function()? schduledReturnApprovalFailedState,
    TResult Function()? scheduledReturnLoadingState,
    required TResult orElse(),
  }) {
    if (scheduledReturnApprovalStatusStates != null) {
      return scheduledReturnApprovalStatusStates(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduledReturnApprovalStatusStates value)
        scheduledReturnApprovalStatusStates,
    required TResult Function(SchduledReturnApprovalFailedState value)
        schduledReturnApprovalFailedState,
    required TResult Function(ScheduledReturnLoadingState value)
        scheduledReturnLoadingState,
  }) {
    return scheduledReturnApprovalStatusStates(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduledReturnApprovalStatusStates value)?
        scheduledReturnApprovalStatusStates,
    TResult? Function(SchduledReturnApprovalFailedState value)?
        schduledReturnApprovalFailedState,
    TResult? Function(ScheduledReturnLoadingState value)?
        scheduledReturnLoadingState,
  }) {
    return scheduledReturnApprovalStatusStates?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduledReturnApprovalStatusStates value)?
        scheduledReturnApprovalStatusStates,
    TResult Function(SchduledReturnApprovalFailedState value)?
        schduledReturnApprovalFailedState,
    TResult Function(ScheduledReturnLoadingState value)?
        scheduledReturnLoadingState,
    required TResult orElse(),
  }) {
    if (scheduledReturnApprovalStatusStates != null) {
      return scheduledReturnApprovalStatusStates(this);
    }
    return orElse();
  }
}

abstract class ScheduledReturnApprovalStatusStates
    implements SchduledReturnApprovalState {
  const factory ScheduledReturnApprovalStatusStates(
          {required final ScheduledReturnApprovalOutModel? status}) =
      _$ScheduledReturnApprovalStatusStatesImpl;

  ScheduledReturnApprovalOutModel? get status;
  @JsonKey(ignore: true)
  _$$ScheduledReturnApprovalStatusStatesImplCopyWith<
          _$ScheduledReturnApprovalStatusStatesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SchduledReturnApprovalFailedStateImplCopyWith<$Res> {
  factory _$$SchduledReturnApprovalFailedStateImplCopyWith(
          _$SchduledReturnApprovalFailedStateImpl value,
          $Res Function(_$SchduledReturnApprovalFailedStateImpl) then) =
      __$$SchduledReturnApprovalFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SchduledReturnApprovalFailedStateImplCopyWithImpl<$Res>
    extends _$SchduledReturnApprovalStateCopyWithImpl<$Res,
        _$SchduledReturnApprovalFailedStateImpl>
    implements _$$SchduledReturnApprovalFailedStateImplCopyWith<$Res> {
  __$$SchduledReturnApprovalFailedStateImplCopyWithImpl(
      _$SchduledReturnApprovalFailedStateImpl _value,
      $Res Function(_$SchduledReturnApprovalFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SchduledReturnApprovalFailedStateImpl
    implements SchduledReturnApprovalFailedState {
  const _$SchduledReturnApprovalFailedStateImpl();

  @override
  String toString() {
    return 'SchduledReturnApprovalState.schduledReturnApprovalFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchduledReturnApprovalFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ScheduledReturnApprovalOutModel? status)
        scheduledReturnApprovalStatusStates,
    required TResult Function() schduledReturnApprovalFailedState,
    required TResult Function() scheduledReturnLoadingState,
  }) {
    return schduledReturnApprovalFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ScheduledReturnApprovalOutModel? status)?
        scheduledReturnApprovalStatusStates,
    TResult? Function()? schduledReturnApprovalFailedState,
    TResult? Function()? scheduledReturnLoadingState,
  }) {
    return schduledReturnApprovalFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScheduledReturnApprovalOutModel? status)?
        scheduledReturnApprovalStatusStates,
    TResult Function()? schduledReturnApprovalFailedState,
    TResult Function()? scheduledReturnLoadingState,
    required TResult orElse(),
  }) {
    if (schduledReturnApprovalFailedState != null) {
      return schduledReturnApprovalFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduledReturnApprovalStatusStates value)
        scheduledReturnApprovalStatusStates,
    required TResult Function(SchduledReturnApprovalFailedState value)
        schduledReturnApprovalFailedState,
    required TResult Function(ScheduledReturnLoadingState value)
        scheduledReturnLoadingState,
  }) {
    return schduledReturnApprovalFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduledReturnApprovalStatusStates value)?
        scheduledReturnApprovalStatusStates,
    TResult? Function(SchduledReturnApprovalFailedState value)?
        schduledReturnApprovalFailedState,
    TResult? Function(ScheduledReturnLoadingState value)?
        scheduledReturnLoadingState,
  }) {
    return schduledReturnApprovalFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduledReturnApprovalStatusStates value)?
        scheduledReturnApprovalStatusStates,
    TResult Function(SchduledReturnApprovalFailedState value)?
        schduledReturnApprovalFailedState,
    TResult Function(ScheduledReturnLoadingState value)?
        scheduledReturnLoadingState,
    required TResult orElse(),
  }) {
    if (schduledReturnApprovalFailedState != null) {
      return schduledReturnApprovalFailedState(this);
    }
    return orElse();
  }
}

abstract class SchduledReturnApprovalFailedState
    implements SchduledReturnApprovalState {
  const factory SchduledReturnApprovalFailedState() =
      _$SchduledReturnApprovalFailedStateImpl;
}

/// @nodoc
abstract class _$$ScheduledReturnLoadingStateImplCopyWith<$Res> {
  factory _$$ScheduledReturnLoadingStateImplCopyWith(
          _$ScheduledReturnLoadingStateImpl value,
          $Res Function(_$ScheduledReturnLoadingStateImpl) then) =
      __$$ScheduledReturnLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScheduledReturnLoadingStateImplCopyWithImpl<$Res>
    extends _$SchduledReturnApprovalStateCopyWithImpl<$Res,
        _$ScheduledReturnLoadingStateImpl>
    implements _$$ScheduledReturnLoadingStateImplCopyWith<$Res> {
  __$$ScheduledReturnLoadingStateImplCopyWithImpl(
      _$ScheduledReturnLoadingStateImpl _value,
      $Res Function(_$ScheduledReturnLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScheduledReturnLoadingStateImpl implements ScheduledReturnLoadingState {
  const _$ScheduledReturnLoadingStateImpl();

  @override
  String toString() {
    return 'SchduledReturnApprovalState.scheduledReturnLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduledReturnLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ScheduledReturnApprovalOutModel? status)
        scheduledReturnApprovalStatusStates,
    required TResult Function() schduledReturnApprovalFailedState,
    required TResult Function() scheduledReturnLoadingState,
  }) {
    return scheduledReturnLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ScheduledReturnApprovalOutModel? status)?
        scheduledReturnApprovalStatusStates,
    TResult? Function()? schduledReturnApprovalFailedState,
    TResult? Function()? scheduledReturnLoadingState,
  }) {
    return scheduledReturnLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScheduledReturnApprovalOutModel? status)?
        scheduledReturnApprovalStatusStates,
    TResult Function()? schduledReturnApprovalFailedState,
    TResult Function()? scheduledReturnLoadingState,
    required TResult orElse(),
  }) {
    if (scheduledReturnLoadingState != null) {
      return scheduledReturnLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduledReturnApprovalStatusStates value)
        scheduledReturnApprovalStatusStates,
    required TResult Function(SchduledReturnApprovalFailedState value)
        schduledReturnApprovalFailedState,
    required TResult Function(ScheduledReturnLoadingState value)
        scheduledReturnLoadingState,
  }) {
    return scheduledReturnLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduledReturnApprovalStatusStates value)?
        scheduledReturnApprovalStatusStates,
    TResult? Function(SchduledReturnApprovalFailedState value)?
        schduledReturnApprovalFailedState,
    TResult? Function(ScheduledReturnLoadingState value)?
        scheduledReturnLoadingState,
  }) {
    return scheduledReturnLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduledReturnApprovalStatusStates value)?
        scheduledReturnApprovalStatusStates,
    TResult Function(SchduledReturnApprovalFailedState value)?
        schduledReturnApprovalFailedState,
    TResult Function(ScheduledReturnLoadingState value)?
        scheduledReturnLoadingState,
    required TResult orElse(),
  }) {
    if (scheduledReturnLoadingState != null) {
      return scheduledReturnLoadingState(this);
    }
    return orElse();
  }
}

abstract class ScheduledReturnLoadingState
    implements SchduledReturnApprovalState {
  const factory ScheduledReturnLoadingState() =
      _$ScheduledReturnLoadingStateImpl;
}
