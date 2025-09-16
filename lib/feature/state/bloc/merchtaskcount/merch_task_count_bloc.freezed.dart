// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merch_task_count_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MerchTaskCountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String toDate) getTaskCountEvent,
    required TResult Function() taskCountClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String toDate)? getTaskCountEvent,
    TResult? Function()? taskCountClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String toDate)? getTaskCountEvent,
    TResult Function()? taskCountClearEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTaskCountEvent value) getTaskCountEvent,
    required TResult Function(TaskCountClearEvent value) taskCountClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTaskCountEvent value)? getTaskCountEvent,
    TResult? Function(TaskCountClearEvent value)? taskCountClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTaskCountEvent value)? getTaskCountEvent,
    TResult Function(TaskCountClearEvent value)? taskCountClearEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchTaskCountEventCopyWith<$Res> {
  factory $MerchTaskCountEventCopyWith(
          MerchTaskCountEvent value, $Res Function(MerchTaskCountEvent) then) =
      _$MerchTaskCountEventCopyWithImpl<$Res, MerchTaskCountEvent>;
}

/// @nodoc
class _$MerchTaskCountEventCopyWithImpl<$Res, $Val extends MerchTaskCountEvent>
    implements $MerchTaskCountEventCopyWith<$Res> {
  _$MerchTaskCountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchTaskCountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetTaskCountEventImplCopyWith<$Res> {
  factory _$$GetTaskCountEventImplCopyWith(_$GetTaskCountEventImpl value,
          $Res Function(_$GetTaskCountEventImpl) then) =
      __$$GetTaskCountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fromDate, String toDate});
}

/// @nodoc
class __$$GetTaskCountEventImplCopyWithImpl<$Res>
    extends _$MerchTaskCountEventCopyWithImpl<$Res, _$GetTaskCountEventImpl>
    implements _$$GetTaskCountEventImplCopyWith<$Res> {
  __$$GetTaskCountEventImplCopyWithImpl(_$GetTaskCountEventImpl _value,
      $Res Function(_$GetTaskCountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchTaskCountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
    Object? toDate = null,
  }) {
    return _then(_$GetTaskCountEventImpl(
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTaskCountEventImpl implements GetTaskCountEvent {
  const _$GetTaskCountEventImpl({required this.fromDate, required this.toDate});

  @override
  final String fromDate;
  @override
  final String toDate;

  @override
  String toString() {
    return 'MerchTaskCountEvent.getTaskCountEvent(fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTaskCountEventImpl &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromDate, toDate);

  /// Create a copy of MerchTaskCountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTaskCountEventImplCopyWith<_$GetTaskCountEventImpl> get copyWith =>
      __$$GetTaskCountEventImplCopyWithImpl<_$GetTaskCountEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String toDate) getTaskCountEvent,
    required TResult Function() taskCountClearEvent,
  }) {
    return getTaskCountEvent(fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String toDate)? getTaskCountEvent,
    TResult? Function()? taskCountClearEvent,
  }) {
    return getTaskCountEvent?.call(fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String toDate)? getTaskCountEvent,
    TResult Function()? taskCountClearEvent,
    required TResult orElse(),
  }) {
    if (getTaskCountEvent != null) {
      return getTaskCountEvent(fromDate, toDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTaskCountEvent value) getTaskCountEvent,
    required TResult Function(TaskCountClearEvent value) taskCountClearEvent,
  }) {
    return getTaskCountEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTaskCountEvent value)? getTaskCountEvent,
    TResult? Function(TaskCountClearEvent value)? taskCountClearEvent,
  }) {
    return getTaskCountEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTaskCountEvent value)? getTaskCountEvent,
    TResult Function(TaskCountClearEvent value)? taskCountClearEvent,
    required TResult orElse(),
  }) {
    if (getTaskCountEvent != null) {
      return getTaskCountEvent(this);
    }
    return orElse();
  }
}

abstract class GetTaskCountEvent implements MerchTaskCountEvent {
  const factory GetTaskCountEvent(
      {required final String fromDate,
      required final String toDate}) = _$GetTaskCountEventImpl;

  String get fromDate;
  String get toDate;

  /// Create a copy of MerchTaskCountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTaskCountEventImplCopyWith<_$GetTaskCountEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskCountClearEventImplCopyWith<$Res> {
  factory _$$TaskCountClearEventImplCopyWith(_$TaskCountClearEventImpl value,
          $Res Function(_$TaskCountClearEventImpl) then) =
      __$$TaskCountClearEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskCountClearEventImplCopyWithImpl<$Res>
    extends _$MerchTaskCountEventCopyWithImpl<$Res, _$TaskCountClearEventImpl>
    implements _$$TaskCountClearEventImplCopyWith<$Res> {
  __$$TaskCountClearEventImplCopyWithImpl(_$TaskCountClearEventImpl _value,
      $Res Function(_$TaskCountClearEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchTaskCountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TaskCountClearEventImpl implements TaskCountClearEvent {
  const _$TaskCountClearEventImpl();

  @override
  String toString() {
    return 'MerchTaskCountEvent.taskCountClearEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskCountClearEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String toDate) getTaskCountEvent,
    required TResult Function() taskCountClearEvent,
  }) {
    return taskCountClearEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String toDate)? getTaskCountEvent,
    TResult? Function()? taskCountClearEvent,
  }) {
    return taskCountClearEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String toDate)? getTaskCountEvent,
    TResult Function()? taskCountClearEvent,
    required TResult orElse(),
  }) {
    if (taskCountClearEvent != null) {
      return taskCountClearEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTaskCountEvent value) getTaskCountEvent,
    required TResult Function(TaskCountClearEvent value) taskCountClearEvent,
  }) {
    return taskCountClearEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTaskCountEvent value)? getTaskCountEvent,
    TResult? Function(TaskCountClearEvent value)? taskCountClearEvent,
  }) {
    return taskCountClearEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTaskCountEvent value)? getTaskCountEvent,
    TResult Function(TaskCountClearEvent value)? taskCountClearEvent,
    required TResult orElse(),
  }) {
    if (taskCountClearEvent != null) {
      return taskCountClearEvent(this);
    }
    return orElse();
  }
}

abstract class TaskCountClearEvent implements MerchTaskCountEvent {
  const factory TaskCountClearEvent() = _$TaskCountClearEventImpl;
}

/// @nodoc
mixin _$MerchTaskCountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetTaskCountModel? taskcount) getTaskCountState,
    required TResult Function() taskCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetTaskCountModel? taskcount)? getTaskCountState,
    TResult? Function()? taskCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetTaskCountModel? taskcount)? getTaskCountState,
    TResult Function()? taskCountFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTaskCountState value) getTaskCountState,
    required TResult Function(TaskCountFailedState value) taskCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTaskCountState value)? getTaskCountState,
    TResult? Function(TaskCountFailedState value)? taskCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTaskCountState value)? getTaskCountState,
    TResult Function(TaskCountFailedState value)? taskCountFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchTaskCountStateCopyWith<$Res> {
  factory $MerchTaskCountStateCopyWith(
          MerchTaskCountState value, $Res Function(MerchTaskCountState) then) =
      _$MerchTaskCountStateCopyWithImpl<$Res, MerchTaskCountState>;
}

/// @nodoc
class _$MerchTaskCountStateCopyWithImpl<$Res, $Val extends MerchTaskCountState>
    implements $MerchTaskCountStateCopyWith<$Res> {
  _$MerchTaskCountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchTaskCountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetTaskCountStateImplCopyWith<$Res> {
  factory _$$GetTaskCountStateImplCopyWith(_$GetTaskCountStateImpl value,
          $Res Function(_$GetTaskCountStateImpl) then) =
      __$$GetTaskCountStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetTaskCountModel? taskcount});
}

/// @nodoc
class __$$GetTaskCountStateImplCopyWithImpl<$Res>
    extends _$MerchTaskCountStateCopyWithImpl<$Res, _$GetTaskCountStateImpl>
    implements _$$GetTaskCountStateImplCopyWith<$Res> {
  __$$GetTaskCountStateImplCopyWithImpl(_$GetTaskCountStateImpl _value,
      $Res Function(_$GetTaskCountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchTaskCountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskcount = freezed,
  }) {
    return _then(_$GetTaskCountStateImpl(
      taskcount: freezed == taskcount
          ? _value.taskcount
          : taskcount // ignore: cast_nullable_to_non_nullable
              as GetTaskCountModel?,
    ));
  }
}

/// @nodoc

class _$GetTaskCountStateImpl implements GetTaskCountState {
  const _$GetTaskCountStateImpl({required this.taskcount});

  @override
  final GetTaskCountModel? taskcount;

  @override
  String toString() {
    return 'MerchTaskCountState.getTaskCountState(taskcount: $taskcount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTaskCountStateImpl &&
            (identical(other.taskcount, taskcount) ||
                other.taskcount == taskcount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskcount);

  /// Create a copy of MerchTaskCountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTaskCountStateImplCopyWith<_$GetTaskCountStateImpl> get copyWith =>
      __$$GetTaskCountStateImplCopyWithImpl<_$GetTaskCountStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetTaskCountModel? taskcount) getTaskCountState,
    required TResult Function() taskCountFailedState,
  }) {
    return getTaskCountState(taskcount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetTaskCountModel? taskcount)? getTaskCountState,
    TResult? Function()? taskCountFailedState,
  }) {
    return getTaskCountState?.call(taskcount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetTaskCountModel? taskcount)? getTaskCountState,
    TResult Function()? taskCountFailedState,
    required TResult orElse(),
  }) {
    if (getTaskCountState != null) {
      return getTaskCountState(taskcount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTaskCountState value) getTaskCountState,
    required TResult Function(TaskCountFailedState value) taskCountFailedState,
  }) {
    return getTaskCountState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTaskCountState value)? getTaskCountState,
    TResult? Function(TaskCountFailedState value)? taskCountFailedState,
  }) {
    return getTaskCountState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTaskCountState value)? getTaskCountState,
    TResult Function(TaskCountFailedState value)? taskCountFailedState,
    required TResult orElse(),
  }) {
    if (getTaskCountState != null) {
      return getTaskCountState(this);
    }
    return orElse();
  }
}

abstract class GetTaskCountState implements MerchTaskCountState {
  const factory GetTaskCountState(
      {required final GetTaskCountModel? taskcount}) = _$GetTaskCountStateImpl;

  GetTaskCountModel? get taskcount;

  /// Create a copy of MerchTaskCountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTaskCountStateImplCopyWith<_$GetTaskCountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskCountFailedStateImplCopyWith<$Res> {
  factory _$$TaskCountFailedStateImplCopyWith(_$TaskCountFailedStateImpl value,
          $Res Function(_$TaskCountFailedStateImpl) then) =
      __$$TaskCountFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskCountFailedStateImplCopyWithImpl<$Res>
    extends _$MerchTaskCountStateCopyWithImpl<$Res, _$TaskCountFailedStateImpl>
    implements _$$TaskCountFailedStateImplCopyWith<$Res> {
  __$$TaskCountFailedStateImplCopyWithImpl(_$TaskCountFailedStateImpl _value,
      $Res Function(_$TaskCountFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchTaskCountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TaskCountFailedStateImpl implements TaskCountFailedState {
  const _$TaskCountFailedStateImpl();

  @override
  String toString() {
    return 'MerchTaskCountState.taskCountFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskCountFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetTaskCountModel? taskcount) getTaskCountState,
    required TResult Function() taskCountFailedState,
  }) {
    return taskCountFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetTaskCountModel? taskcount)? getTaskCountState,
    TResult? Function()? taskCountFailedState,
  }) {
    return taskCountFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetTaskCountModel? taskcount)? getTaskCountState,
    TResult Function()? taskCountFailedState,
    required TResult orElse(),
  }) {
    if (taskCountFailedState != null) {
      return taskCountFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTaskCountState value) getTaskCountState,
    required TResult Function(TaskCountFailedState value) taskCountFailedState,
  }) {
    return taskCountFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTaskCountState value)? getTaskCountState,
    TResult? Function(TaskCountFailedState value)? taskCountFailedState,
  }) {
    return taskCountFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTaskCountState value)? getTaskCountState,
    TResult Function(TaskCountFailedState value)? taskCountFailedState,
    required TResult orElse(),
  }) {
    if (taskCountFailedState != null) {
      return taskCountFailedState(this);
    }
    return orElse();
  }
}

abstract class TaskCountFailedState implements MerchTaskCountState {
  const factory TaskCountFailedState() = _$TaskCountFailedStateImpl;
}
