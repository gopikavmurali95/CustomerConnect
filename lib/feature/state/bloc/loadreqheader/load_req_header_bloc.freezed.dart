// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'load_req_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoadReqHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadreqSuccessEvent,
    required TResult Function() loadreqClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadreqSuccessEvent,
    TResult? Function()? loadreqClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadreqSuccessEvent,
    TResult Function()? loadreqClearEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadreqSuccessEvent value) loadreqSuccessEvent,
    required TResult Function(LoadreqClearEvent value) loadreqClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadreqSuccessEvent value)? loadreqSuccessEvent,
    TResult? Function(LoadreqClearEvent value)? loadreqClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadreqSuccessEvent value)? loadreqSuccessEvent,
    TResult Function(LoadreqClearEvent value)? loadreqClearEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadReqHeaderEventCopyWith<$Res> {
  factory $LoadReqHeaderEventCopyWith(
          LoadReqHeaderEvent value, $Res Function(LoadReqHeaderEvent) then) =
      _$LoadReqHeaderEventCopyWithImpl<$Res, LoadReqHeaderEvent>;
}

/// @nodoc
class _$LoadReqHeaderEventCopyWithImpl<$Res, $Val extends LoadReqHeaderEvent>
    implements $LoadReqHeaderEventCopyWith<$Res> {
  _$LoadReqHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadreqSuccessEventImplCopyWith<$Res> {
  factory _$$LoadreqSuccessEventImplCopyWith(_$LoadreqSuccessEventImpl value,
          $Res Function(_$LoadreqSuccessEventImpl) then) =
      __$$LoadreqSuccessEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$LoadreqSuccessEventImplCopyWithImpl<$Res>
    extends _$LoadReqHeaderEventCopyWithImpl<$Res, _$LoadreqSuccessEventImpl>
    implements _$$LoadreqSuccessEventImplCopyWith<$Res> {
  __$$LoadreqSuccessEventImplCopyWithImpl(_$LoadreqSuccessEventImpl _value,
      $Res Function(_$LoadreqSuccessEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$LoadreqSuccessEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadreqSuccessEventImpl implements LoadreqSuccessEvent {
  const _$LoadreqSuccessEventImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'LoadReqHeaderEvent.loadreqSuccessEvent(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadreqSuccessEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadreqSuccessEventImplCopyWith<_$LoadreqSuccessEventImpl> get copyWith =>
      __$$LoadreqSuccessEventImplCopyWithImpl<_$LoadreqSuccessEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadreqSuccessEvent,
    required TResult Function() loadreqClearEvent,
  }) {
    return loadreqSuccessEvent(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadreqSuccessEvent,
    TResult? Function()? loadreqClearEvent,
  }) {
    return loadreqSuccessEvent?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadreqSuccessEvent,
    TResult Function()? loadreqClearEvent,
    required TResult orElse(),
  }) {
    if (loadreqSuccessEvent != null) {
      return loadreqSuccessEvent(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadreqSuccessEvent value) loadreqSuccessEvent,
    required TResult Function(LoadreqClearEvent value) loadreqClearEvent,
  }) {
    return loadreqSuccessEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadreqSuccessEvent value)? loadreqSuccessEvent,
    TResult? Function(LoadreqClearEvent value)? loadreqClearEvent,
  }) {
    return loadreqSuccessEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadreqSuccessEvent value)? loadreqSuccessEvent,
    TResult Function(LoadreqClearEvent value)? loadreqClearEvent,
    required TResult orElse(),
  }) {
    if (loadreqSuccessEvent != null) {
      return loadreqSuccessEvent(this);
    }
    return orElse();
  }
}

abstract class LoadreqSuccessEvent implements LoadReqHeaderEvent {
  const factory LoadreqSuccessEvent({required final String userId}) =
      _$LoadreqSuccessEventImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$LoadreqSuccessEventImplCopyWith<_$LoadreqSuccessEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadreqClearEventImplCopyWith<$Res> {
  factory _$$LoadreqClearEventImplCopyWith(_$LoadreqClearEventImpl value,
          $Res Function(_$LoadreqClearEventImpl) then) =
      __$$LoadreqClearEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadreqClearEventImplCopyWithImpl<$Res>
    extends _$LoadReqHeaderEventCopyWithImpl<$Res, _$LoadreqClearEventImpl>
    implements _$$LoadreqClearEventImplCopyWith<$Res> {
  __$$LoadreqClearEventImplCopyWithImpl(_$LoadreqClearEventImpl _value,
      $Res Function(_$LoadreqClearEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadreqClearEventImpl implements LoadreqClearEvent {
  const _$LoadreqClearEventImpl();

  @override
  String toString() {
    return 'LoadReqHeaderEvent.loadreqClearEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadreqClearEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadreqSuccessEvent,
    required TResult Function() loadreqClearEvent,
  }) {
    return loadreqClearEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadreqSuccessEvent,
    TResult? Function()? loadreqClearEvent,
  }) {
    return loadreqClearEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadreqSuccessEvent,
    TResult Function()? loadreqClearEvent,
    required TResult orElse(),
  }) {
    if (loadreqClearEvent != null) {
      return loadreqClearEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadreqSuccessEvent value) loadreqSuccessEvent,
    required TResult Function(LoadreqClearEvent value) loadreqClearEvent,
  }) {
    return loadreqClearEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadreqSuccessEvent value)? loadreqSuccessEvent,
    TResult? Function(LoadreqClearEvent value)? loadreqClearEvent,
  }) {
    return loadreqClearEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadreqSuccessEvent value)? loadreqSuccessEvent,
    TResult Function(LoadreqClearEvent value)? loadreqClearEvent,
    required TResult orElse(),
  }) {
    if (loadreqClearEvent != null) {
      return loadreqClearEvent(this);
    }
    return orElse();
  }
}

abstract class LoadreqClearEvent implements LoadReqHeaderEvent {
  const factory LoadreqClearEvent() = _$LoadreqClearEventImpl;
}

/// @nodoc
mixin _$LoadReqHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LoadReqHeaderModel>? loadlist)
        loadReqheadSuccessState,
    required TResult Function() loadReqheadFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LoadReqHeaderModel>? loadlist)?
        loadReqheadSuccessState,
    TResult? Function()? loadReqheadFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LoadReqHeaderModel>? loadlist)?
        loadReqheadSuccessState,
    TResult Function()? loadReqheadFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadReqheadSuccessState value)
        loadReqheadSuccessState,
    required TResult Function(LoadReqheadFailedState value)
        loadReqheadFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadReqheadSuccessState value)? loadReqheadSuccessState,
    TResult? Function(LoadReqheadFailedState value)? loadReqheadFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadReqheadSuccessState value)? loadReqheadSuccessState,
    TResult Function(LoadReqheadFailedState value)? loadReqheadFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadReqHeaderStateCopyWith<$Res> {
  factory $LoadReqHeaderStateCopyWith(
          LoadReqHeaderState value, $Res Function(LoadReqHeaderState) then) =
      _$LoadReqHeaderStateCopyWithImpl<$Res, LoadReqHeaderState>;
}

/// @nodoc
class _$LoadReqHeaderStateCopyWithImpl<$Res, $Val extends LoadReqHeaderState>
    implements $LoadReqHeaderStateCopyWith<$Res> {
  _$LoadReqHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadReqheadSuccessStateImplCopyWith<$Res> {
  factory _$$LoadReqheadSuccessStateImplCopyWith(
          _$LoadReqheadSuccessStateImpl value,
          $Res Function(_$LoadReqheadSuccessStateImpl) then) =
      __$$LoadReqheadSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LoadReqHeaderModel>? loadlist});
}

/// @nodoc
class __$$LoadReqheadSuccessStateImplCopyWithImpl<$Res>
    extends _$LoadReqHeaderStateCopyWithImpl<$Res,
        _$LoadReqheadSuccessStateImpl>
    implements _$$LoadReqheadSuccessStateImplCopyWith<$Res> {
  __$$LoadReqheadSuccessStateImplCopyWithImpl(
      _$LoadReqheadSuccessStateImpl _value,
      $Res Function(_$LoadReqheadSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadlist = freezed,
  }) {
    return _then(_$LoadReqheadSuccessStateImpl(
      loadlist: freezed == loadlist
          ? _value._loadlist
          : loadlist // ignore: cast_nullable_to_non_nullable
              as List<LoadReqHeaderModel>?,
    ));
  }
}

/// @nodoc

class _$LoadReqheadSuccessStateImpl implements LoadReqheadSuccessState {
  const _$LoadReqheadSuccessStateImpl(
      {required final List<LoadReqHeaderModel>? loadlist})
      : _loadlist = loadlist;

  final List<LoadReqHeaderModel>? _loadlist;
  @override
  List<LoadReqHeaderModel>? get loadlist {
    final value = _loadlist;
    if (value == null) return null;
    if (_loadlist is EqualUnmodifiableListView) return _loadlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LoadReqHeaderState.loadReqheadSuccessState(loadlist: $loadlist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadReqheadSuccessStateImpl &&
            const DeepCollectionEquality().equals(other._loadlist, _loadlist));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_loadlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadReqheadSuccessStateImplCopyWith<_$LoadReqheadSuccessStateImpl>
      get copyWith => __$$LoadReqheadSuccessStateImplCopyWithImpl<
          _$LoadReqheadSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LoadReqHeaderModel>? loadlist)
        loadReqheadSuccessState,
    required TResult Function() loadReqheadFailedState,
  }) {
    return loadReqheadSuccessState(loadlist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LoadReqHeaderModel>? loadlist)?
        loadReqheadSuccessState,
    TResult? Function()? loadReqheadFailedState,
  }) {
    return loadReqheadSuccessState?.call(loadlist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LoadReqHeaderModel>? loadlist)?
        loadReqheadSuccessState,
    TResult Function()? loadReqheadFailedState,
    required TResult orElse(),
  }) {
    if (loadReqheadSuccessState != null) {
      return loadReqheadSuccessState(loadlist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadReqheadSuccessState value)
        loadReqheadSuccessState,
    required TResult Function(LoadReqheadFailedState value)
        loadReqheadFailedState,
  }) {
    return loadReqheadSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadReqheadSuccessState value)? loadReqheadSuccessState,
    TResult? Function(LoadReqheadFailedState value)? loadReqheadFailedState,
  }) {
    return loadReqheadSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadReqheadSuccessState value)? loadReqheadSuccessState,
    TResult Function(LoadReqheadFailedState value)? loadReqheadFailedState,
    required TResult orElse(),
  }) {
    if (loadReqheadSuccessState != null) {
      return loadReqheadSuccessState(this);
    }
    return orElse();
  }
}

abstract class LoadReqheadSuccessState implements LoadReqHeaderState {
  const factory LoadReqheadSuccessState(
          {required final List<LoadReqHeaderModel>? loadlist}) =
      _$LoadReqheadSuccessStateImpl;

  List<LoadReqHeaderModel>? get loadlist;
  @JsonKey(ignore: true)
  _$$LoadReqheadSuccessStateImplCopyWith<_$LoadReqheadSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadReqheadFailedStateImplCopyWith<$Res> {
  factory _$$LoadReqheadFailedStateImplCopyWith(
          _$LoadReqheadFailedStateImpl value,
          $Res Function(_$LoadReqheadFailedStateImpl) then) =
      __$$LoadReqheadFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadReqheadFailedStateImplCopyWithImpl<$Res>
    extends _$LoadReqHeaderStateCopyWithImpl<$Res, _$LoadReqheadFailedStateImpl>
    implements _$$LoadReqheadFailedStateImplCopyWith<$Res> {
  __$$LoadReqheadFailedStateImplCopyWithImpl(
      _$LoadReqheadFailedStateImpl _value,
      $Res Function(_$LoadReqheadFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadReqheadFailedStateImpl implements LoadReqheadFailedState {
  const _$LoadReqheadFailedStateImpl();

  @override
  String toString() {
    return 'LoadReqHeaderState.loadReqheadFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadReqheadFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LoadReqHeaderModel>? loadlist)
        loadReqheadSuccessState,
    required TResult Function() loadReqheadFailedState,
  }) {
    return loadReqheadFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LoadReqHeaderModel>? loadlist)?
        loadReqheadSuccessState,
    TResult? Function()? loadReqheadFailedState,
  }) {
    return loadReqheadFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LoadReqHeaderModel>? loadlist)?
        loadReqheadSuccessState,
    TResult Function()? loadReqheadFailedState,
    required TResult orElse(),
  }) {
    if (loadReqheadFailedState != null) {
      return loadReqheadFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadReqheadSuccessState value)
        loadReqheadSuccessState,
    required TResult Function(LoadReqheadFailedState value)
        loadReqheadFailedState,
  }) {
    return loadReqheadFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadReqheadSuccessState value)? loadReqheadSuccessState,
    TResult? Function(LoadReqheadFailedState value)? loadReqheadFailedState,
  }) {
    return loadReqheadFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadReqheadSuccessState value)? loadReqheadSuccessState,
    TResult Function(LoadReqheadFailedState value)? loadReqheadFailedState,
    required TResult orElse(),
  }) {
    if (loadReqheadFailedState != null) {
      return loadReqheadFailedState(this);
    }
    return orElse();
  }
}

abstract class LoadReqheadFailedState implements LoadReqHeaderState {
  const factory LoadReqheadFailedState() = _$LoadReqheadFailedStateImpl;
}
