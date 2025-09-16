// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchand_task_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MerchandTaskHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetTaskHeaderInModel tasks, String searchQuery)
        taskHeaderGetEvent,
    required TResult Function() taskHeaderClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetTaskHeaderInModel tasks, String searchQuery)?
        taskHeaderGetEvent,
    TResult? Function()? taskHeaderClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetTaskHeaderInModel tasks, String searchQuery)?
        taskHeaderGetEvent,
    TResult Function()? taskHeaderClearEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskHeaderGetEvent value) taskHeaderGetEvent,
    required TResult Function(TaskHeaderClearEvent value) taskHeaderClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskHeaderGetEvent value)? taskHeaderGetEvent,
    TResult? Function(TaskHeaderClearEvent value)? taskHeaderClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskHeaderGetEvent value)? taskHeaderGetEvent,
    TResult Function(TaskHeaderClearEvent value)? taskHeaderClearEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchandTaskHeaderEventCopyWith<$Res> {
  factory $MerchandTaskHeaderEventCopyWith(MerchandTaskHeaderEvent value,
          $Res Function(MerchandTaskHeaderEvent) then) =
      _$MerchandTaskHeaderEventCopyWithImpl<$Res, MerchandTaskHeaderEvent>;
}

/// @nodoc
class _$MerchandTaskHeaderEventCopyWithImpl<$Res,
        $Val extends MerchandTaskHeaderEvent>
    implements $MerchandTaskHeaderEventCopyWith<$Res> {
  _$MerchandTaskHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchandTaskHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TaskHeaderGetEventImplCopyWith<$Res> {
  factory _$$TaskHeaderGetEventImplCopyWith(_$TaskHeaderGetEventImpl value,
          $Res Function(_$TaskHeaderGetEventImpl) then) =
      __$$TaskHeaderGetEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetTaskHeaderInModel tasks, String searchQuery});
}

/// @nodoc
class __$$TaskHeaderGetEventImplCopyWithImpl<$Res>
    extends _$MerchandTaskHeaderEventCopyWithImpl<$Res,
        _$TaskHeaderGetEventImpl>
    implements _$$TaskHeaderGetEventImplCopyWith<$Res> {
  __$$TaskHeaderGetEventImplCopyWithImpl(_$TaskHeaderGetEventImpl _value,
      $Res Function(_$TaskHeaderGetEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchandTaskHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? searchQuery = null,
  }) {
    return _then(_$TaskHeaderGetEventImpl(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as GetTaskHeaderInModel,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskHeaderGetEventImpl implements TaskHeaderGetEvent {
  const _$TaskHeaderGetEventImpl(
      {required this.tasks, required this.searchQuery});

  @override
  final GetTaskHeaderInModel tasks;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'MerchandTaskHeaderEvent.taskHeaderGetEvent(tasks: $tasks, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskHeaderGetEventImpl &&
            (identical(other.tasks, tasks) || other.tasks == tasks) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tasks, searchQuery);

  /// Create a copy of MerchandTaskHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskHeaderGetEventImplCopyWith<_$TaskHeaderGetEventImpl> get copyWith =>
      __$$TaskHeaderGetEventImplCopyWithImpl<_$TaskHeaderGetEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetTaskHeaderInModel tasks, String searchQuery)
        taskHeaderGetEvent,
    required TResult Function() taskHeaderClearEvent,
  }) {
    return taskHeaderGetEvent(tasks, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetTaskHeaderInModel tasks, String searchQuery)?
        taskHeaderGetEvent,
    TResult? Function()? taskHeaderClearEvent,
  }) {
    return taskHeaderGetEvent?.call(tasks, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetTaskHeaderInModel tasks, String searchQuery)?
        taskHeaderGetEvent,
    TResult Function()? taskHeaderClearEvent,
    required TResult orElse(),
  }) {
    if (taskHeaderGetEvent != null) {
      return taskHeaderGetEvent(tasks, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskHeaderGetEvent value) taskHeaderGetEvent,
    required TResult Function(TaskHeaderClearEvent value) taskHeaderClearEvent,
  }) {
    return taskHeaderGetEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskHeaderGetEvent value)? taskHeaderGetEvent,
    TResult? Function(TaskHeaderClearEvent value)? taskHeaderClearEvent,
  }) {
    return taskHeaderGetEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskHeaderGetEvent value)? taskHeaderGetEvent,
    TResult Function(TaskHeaderClearEvent value)? taskHeaderClearEvent,
    required TResult orElse(),
  }) {
    if (taskHeaderGetEvent != null) {
      return taskHeaderGetEvent(this);
    }
    return orElse();
  }
}

abstract class TaskHeaderGetEvent implements MerchandTaskHeaderEvent {
  const factory TaskHeaderGetEvent(
      {required final GetTaskHeaderInModel tasks,
      required final String searchQuery}) = _$TaskHeaderGetEventImpl;

  GetTaskHeaderInModel get tasks;
  String get searchQuery;

  /// Create a copy of MerchandTaskHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskHeaderGetEventImplCopyWith<_$TaskHeaderGetEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskHeaderClearEventImplCopyWith<$Res> {
  factory _$$TaskHeaderClearEventImplCopyWith(_$TaskHeaderClearEventImpl value,
          $Res Function(_$TaskHeaderClearEventImpl) then) =
      __$$TaskHeaderClearEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskHeaderClearEventImplCopyWithImpl<$Res>
    extends _$MerchandTaskHeaderEventCopyWithImpl<$Res,
        _$TaskHeaderClearEventImpl>
    implements _$$TaskHeaderClearEventImplCopyWith<$Res> {
  __$$TaskHeaderClearEventImplCopyWithImpl(_$TaskHeaderClearEventImpl _value,
      $Res Function(_$TaskHeaderClearEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchandTaskHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TaskHeaderClearEventImpl implements TaskHeaderClearEvent {
  const _$TaskHeaderClearEventImpl();

  @override
  String toString() {
    return 'MerchandTaskHeaderEvent.taskHeaderClearEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskHeaderClearEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetTaskHeaderInModel tasks, String searchQuery)
        taskHeaderGetEvent,
    required TResult Function() taskHeaderClearEvent,
  }) {
    return taskHeaderClearEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetTaskHeaderInModel tasks, String searchQuery)?
        taskHeaderGetEvent,
    TResult? Function()? taskHeaderClearEvent,
  }) {
    return taskHeaderClearEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetTaskHeaderInModel tasks, String searchQuery)?
        taskHeaderGetEvent,
    TResult Function()? taskHeaderClearEvent,
    required TResult orElse(),
  }) {
    if (taskHeaderClearEvent != null) {
      return taskHeaderClearEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskHeaderGetEvent value) taskHeaderGetEvent,
    required TResult Function(TaskHeaderClearEvent value) taskHeaderClearEvent,
  }) {
    return taskHeaderClearEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskHeaderGetEvent value)? taskHeaderGetEvent,
    TResult? Function(TaskHeaderClearEvent value)? taskHeaderClearEvent,
  }) {
    return taskHeaderClearEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskHeaderGetEvent value)? taskHeaderGetEvent,
    TResult Function(TaskHeaderClearEvent value)? taskHeaderClearEvent,
    required TResult orElse(),
  }) {
    if (taskHeaderClearEvent != null) {
      return taskHeaderClearEvent(this);
    }
    return orElse();
  }
}

abstract class TaskHeaderClearEvent implements MerchandTaskHeaderEvent {
  const factory TaskHeaderClearEvent() = _$TaskHeaderClearEventImpl;
}

/// @nodoc
mixin _$MerchandTaskHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<GetTaskHeadersOutModel>? tasksheader)
        getTaskHeaderSuccessState,
    required TResult Function() taskHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<GetTaskHeadersOutModel>? tasksheader)?
        getTaskHeaderSuccessState,
    TResult? Function()? taskHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<GetTaskHeadersOutModel>? tasksheader)?
        getTaskHeaderSuccessState,
    TResult Function()? taskHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTaskHeaderSuccessState value)
        getTaskHeaderSuccessState,
    required TResult Function(TaskHeaderFailedState value)
        taskHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTaskHeaderSuccessState value)?
        getTaskHeaderSuccessState,
    TResult? Function(TaskHeaderFailedState value)? taskHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTaskHeaderSuccessState value)?
        getTaskHeaderSuccessState,
    TResult Function(TaskHeaderFailedState value)? taskHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchandTaskHeaderStateCopyWith<$Res> {
  factory $MerchandTaskHeaderStateCopyWith(MerchandTaskHeaderState value,
          $Res Function(MerchandTaskHeaderState) then) =
      _$MerchandTaskHeaderStateCopyWithImpl<$Res, MerchandTaskHeaderState>;
}

/// @nodoc
class _$MerchandTaskHeaderStateCopyWithImpl<$Res,
        $Val extends MerchandTaskHeaderState>
    implements $MerchandTaskHeaderStateCopyWith<$Res> {
  _$MerchandTaskHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchandTaskHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetTaskHeaderSuccessStateImplCopyWith<$Res> {
  factory _$$GetTaskHeaderSuccessStateImplCopyWith(
          _$GetTaskHeaderSuccessStateImpl value,
          $Res Function(_$GetTaskHeaderSuccessStateImpl) then) =
      __$$GetTaskHeaderSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GetTaskHeadersOutModel>? tasksheader});
}

/// @nodoc
class __$$GetTaskHeaderSuccessStateImplCopyWithImpl<$Res>
    extends _$MerchandTaskHeaderStateCopyWithImpl<$Res,
        _$GetTaskHeaderSuccessStateImpl>
    implements _$$GetTaskHeaderSuccessStateImplCopyWith<$Res> {
  __$$GetTaskHeaderSuccessStateImplCopyWithImpl(
      _$GetTaskHeaderSuccessStateImpl _value,
      $Res Function(_$GetTaskHeaderSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchandTaskHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasksheader = freezed,
  }) {
    return _then(_$GetTaskHeaderSuccessStateImpl(
      tasksheader: freezed == tasksheader
          ? _value._tasksheader
          : tasksheader // ignore: cast_nullable_to_non_nullable
              as List<GetTaskHeadersOutModel>?,
    ));
  }
}

/// @nodoc

class _$GetTaskHeaderSuccessStateImpl implements GetTaskHeaderSuccessState {
  const _$GetTaskHeaderSuccessStateImpl(
      {required final List<GetTaskHeadersOutModel>? tasksheader})
      : _tasksheader = tasksheader;

  final List<GetTaskHeadersOutModel>? _tasksheader;
  @override
  List<GetTaskHeadersOutModel>? get tasksheader {
    final value = _tasksheader;
    if (value == null) return null;
    if (_tasksheader is EqualUnmodifiableListView) return _tasksheader;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MerchandTaskHeaderState.getTaskHeaderSuccessState(tasksheader: $tasksheader)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTaskHeaderSuccessStateImpl &&
            const DeepCollectionEquality()
                .equals(other._tasksheader, _tasksheader));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tasksheader));

  /// Create a copy of MerchandTaskHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTaskHeaderSuccessStateImplCopyWith<_$GetTaskHeaderSuccessStateImpl>
      get copyWith => __$$GetTaskHeaderSuccessStateImplCopyWithImpl<
          _$GetTaskHeaderSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<GetTaskHeadersOutModel>? tasksheader)
        getTaskHeaderSuccessState,
    required TResult Function() taskHeaderFailedState,
  }) {
    return getTaskHeaderSuccessState(tasksheader);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<GetTaskHeadersOutModel>? tasksheader)?
        getTaskHeaderSuccessState,
    TResult? Function()? taskHeaderFailedState,
  }) {
    return getTaskHeaderSuccessState?.call(tasksheader);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<GetTaskHeadersOutModel>? tasksheader)?
        getTaskHeaderSuccessState,
    TResult Function()? taskHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getTaskHeaderSuccessState != null) {
      return getTaskHeaderSuccessState(tasksheader);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTaskHeaderSuccessState value)
        getTaskHeaderSuccessState,
    required TResult Function(TaskHeaderFailedState value)
        taskHeaderFailedState,
  }) {
    return getTaskHeaderSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTaskHeaderSuccessState value)?
        getTaskHeaderSuccessState,
    TResult? Function(TaskHeaderFailedState value)? taskHeaderFailedState,
  }) {
    return getTaskHeaderSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTaskHeaderSuccessState value)?
        getTaskHeaderSuccessState,
    TResult Function(TaskHeaderFailedState value)? taskHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getTaskHeaderSuccessState != null) {
      return getTaskHeaderSuccessState(this);
    }
    return orElse();
  }
}

abstract class GetTaskHeaderSuccessState implements MerchandTaskHeaderState {
  const factory GetTaskHeaderSuccessState(
          {required final List<GetTaskHeadersOutModel>? tasksheader}) =
      _$GetTaskHeaderSuccessStateImpl;

  List<GetTaskHeadersOutModel>? get tasksheader;

  /// Create a copy of MerchandTaskHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTaskHeaderSuccessStateImplCopyWith<_$GetTaskHeaderSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskHeaderFailedStateImplCopyWith<$Res> {
  factory _$$TaskHeaderFailedStateImplCopyWith(
          _$TaskHeaderFailedStateImpl value,
          $Res Function(_$TaskHeaderFailedStateImpl) then) =
      __$$TaskHeaderFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskHeaderFailedStateImplCopyWithImpl<$Res>
    extends _$MerchandTaskHeaderStateCopyWithImpl<$Res,
        _$TaskHeaderFailedStateImpl>
    implements _$$TaskHeaderFailedStateImplCopyWith<$Res> {
  __$$TaskHeaderFailedStateImplCopyWithImpl(_$TaskHeaderFailedStateImpl _value,
      $Res Function(_$TaskHeaderFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchandTaskHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TaskHeaderFailedStateImpl implements TaskHeaderFailedState {
  const _$TaskHeaderFailedStateImpl();

  @override
  String toString() {
    return 'MerchandTaskHeaderState.taskHeaderFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskHeaderFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<GetTaskHeadersOutModel>? tasksheader)
        getTaskHeaderSuccessState,
    required TResult Function() taskHeaderFailedState,
  }) {
    return taskHeaderFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<GetTaskHeadersOutModel>? tasksheader)?
        getTaskHeaderSuccessState,
    TResult? Function()? taskHeaderFailedState,
  }) {
    return taskHeaderFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<GetTaskHeadersOutModel>? tasksheader)?
        getTaskHeaderSuccessState,
    TResult Function()? taskHeaderFailedState,
    required TResult orElse(),
  }) {
    if (taskHeaderFailedState != null) {
      return taskHeaderFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTaskHeaderSuccessState value)
        getTaskHeaderSuccessState,
    required TResult Function(TaskHeaderFailedState value)
        taskHeaderFailedState,
  }) {
    return taskHeaderFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTaskHeaderSuccessState value)?
        getTaskHeaderSuccessState,
    TResult? Function(TaskHeaderFailedState value)? taskHeaderFailedState,
  }) {
    return taskHeaderFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTaskHeaderSuccessState value)?
        getTaskHeaderSuccessState,
    TResult Function(TaskHeaderFailedState value)? taskHeaderFailedState,
    required TResult orElse(),
  }) {
    if (taskHeaderFailedState != null) {
      return taskHeaderFailedState(this);
    }
    return orElse();
  }
}

abstract class TaskHeaderFailedState implements MerchandTaskHeaderState {
  const factory TaskHeaderFailedState() = _$TaskHeaderFailedStateImpl;
}
