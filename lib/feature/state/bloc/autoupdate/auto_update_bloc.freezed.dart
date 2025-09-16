// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auto_update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AutoUpdateEvent {
  String get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type) checkForUpdatesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type)? checkForUpdatesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type)? checkForUpdatesEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckForUpdatesEvent value) checkForUpdatesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckForUpdatesEvent value)? checkForUpdatesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckForUpdatesEvent value)? checkForUpdatesEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AutoUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AutoUpdateEventCopyWith<AutoUpdateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoUpdateEventCopyWith<$Res> {
  factory $AutoUpdateEventCopyWith(
          AutoUpdateEvent value, $Res Function(AutoUpdateEvent) then) =
      _$AutoUpdateEventCopyWithImpl<$Res, AutoUpdateEvent>;
  @useResult
  $Res call({String type});
}

/// @nodoc
class _$AutoUpdateEventCopyWithImpl<$Res, $Val extends AutoUpdateEvent>
    implements $AutoUpdateEventCopyWith<$Res> {
  _$AutoUpdateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AutoUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckForUpdatesEventImplCopyWith<$Res>
    implements $AutoUpdateEventCopyWith<$Res> {
  factory _$$CheckForUpdatesEventImplCopyWith(_$CheckForUpdatesEventImpl value,
          $Res Function(_$CheckForUpdatesEventImpl) then) =
      __$$CheckForUpdatesEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type});
}

/// @nodoc
class __$$CheckForUpdatesEventImplCopyWithImpl<$Res>
    extends _$AutoUpdateEventCopyWithImpl<$Res, _$CheckForUpdatesEventImpl>
    implements _$$CheckForUpdatesEventImplCopyWith<$Res> {
  __$$CheckForUpdatesEventImplCopyWithImpl(_$CheckForUpdatesEventImpl _value,
      $Res Function(_$CheckForUpdatesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$CheckForUpdatesEventImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckForUpdatesEventImpl implements CheckForUpdatesEvent {
  const _$CheckForUpdatesEventImpl({required this.type});

  @override
  final String type;

  @override
  String toString() {
    return 'AutoUpdateEvent.checkForUpdatesEvent(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckForUpdatesEventImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of AutoUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckForUpdatesEventImplCopyWith<_$CheckForUpdatesEventImpl>
      get copyWith =>
          __$$CheckForUpdatesEventImplCopyWithImpl<_$CheckForUpdatesEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type) checkForUpdatesEvent,
  }) {
    return checkForUpdatesEvent(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type)? checkForUpdatesEvent,
  }) {
    return checkForUpdatesEvent?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type)? checkForUpdatesEvent,
    required TResult orElse(),
  }) {
    if (checkForUpdatesEvent != null) {
      return checkForUpdatesEvent(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckForUpdatesEvent value) checkForUpdatesEvent,
  }) {
    return checkForUpdatesEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckForUpdatesEvent value)? checkForUpdatesEvent,
  }) {
    return checkForUpdatesEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckForUpdatesEvent value)? checkForUpdatesEvent,
    required TResult orElse(),
  }) {
    if (checkForUpdatesEvent != null) {
      return checkForUpdatesEvent(this);
    }
    return orElse();
  }
}

abstract class CheckForUpdatesEvent implements AutoUpdateEvent {
  const factory CheckForUpdatesEvent({required final String type}) =
      _$CheckForUpdatesEventImpl;

  @override
  String get type;

  /// Create a copy of AutoUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckForUpdatesEventImplCopyWith<_$CheckForUpdatesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AutoUpdateState {
  AutoUpdateRespModel? get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AutoUpdateRespModel? status)
        autoUpdateStatusState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AutoUpdateRespModel? status)? autoUpdateStatusState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AutoUpdateRespModel? status)? autoUpdateStatusState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AutoUpdateStatusState value)
        autoUpdateStatusState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AutoUpdateStatusState value)? autoUpdateStatusState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AutoUpdateStatusState value)? autoUpdateStatusState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AutoUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AutoUpdateStateCopyWith<AutoUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoUpdateStateCopyWith<$Res> {
  factory $AutoUpdateStateCopyWith(
          AutoUpdateState value, $Res Function(AutoUpdateState) then) =
      _$AutoUpdateStateCopyWithImpl<$Res, AutoUpdateState>;
  @useResult
  $Res call({AutoUpdateRespModel? status});
}

/// @nodoc
class _$AutoUpdateStateCopyWithImpl<$Res, $Val extends AutoUpdateState>
    implements $AutoUpdateStateCopyWith<$Res> {
  _$AutoUpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AutoUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AutoUpdateRespModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AutoUpdateStatusStateImplCopyWith<$Res>
    implements $AutoUpdateStateCopyWith<$Res> {
  factory _$$AutoUpdateStatusStateImplCopyWith(
          _$AutoUpdateStatusStateImpl value,
          $Res Function(_$AutoUpdateStatusStateImpl) then) =
      __$$AutoUpdateStatusStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AutoUpdateRespModel? status});
}

/// @nodoc
class __$$AutoUpdateStatusStateImplCopyWithImpl<$Res>
    extends _$AutoUpdateStateCopyWithImpl<$Res, _$AutoUpdateStatusStateImpl>
    implements _$$AutoUpdateStatusStateImplCopyWith<$Res> {
  __$$AutoUpdateStatusStateImplCopyWithImpl(_$AutoUpdateStatusStateImpl _value,
      $Res Function(_$AutoUpdateStatusStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$AutoUpdateStatusStateImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AutoUpdateRespModel?,
    ));
  }
}

/// @nodoc

class _$AutoUpdateStatusStateImpl implements AutoUpdateStatusState {
  const _$AutoUpdateStatusStateImpl({required this.status});

  @override
  final AutoUpdateRespModel? status;

  @override
  String toString() {
    return 'AutoUpdateState.autoUpdateStatusState(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoUpdateStatusStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of AutoUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoUpdateStatusStateImplCopyWith<_$AutoUpdateStatusStateImpl>
      get copyWith => __$$AutoUpdateStatusStateImplCopyWithImpl<
          _$AutoUpdateStatusStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AutoUpdateRespModel? status)
        autoUpdateStatusState,
  }) {
    return autoUpdateStatusState(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AutoUpdateRespModel? status)? autoUpdateStatusState,
  }) {
    return autoUpdateStatusState?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AutoUpdateRespModel? status)? autoUpdateStatusState,
    required TResult orElse(),
  }) {
    if (autoUpdateStatusState != null) {
      return autoUpdateStatusState(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AutoUpdateStatusState value)
        autoUpdateStatusState,
  }) {
    return autoUpdateStatusState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AutoUpdateStatusState value)? autoUpdateStatusState,
  }) {
    return autoUpdateStatusState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AutoUpdateStatusState value)? autoUpdateStatusState,
    required TResult orElse(),
  }) {
    if (autoUpdateStatusState != null) {
      return autoUpdateStatusState(this);
    }
    return orElse();
  }
}

abstract class AutoUpdateStatusState implements AutoUpdateState {
  const factory AutoUpdateStatusState(
          {required final AutoUpdateRespModel? status}) =
      _$AutoUpdateStatusStateImpl;

  @override
  AutoUpdateRespModel? get status;

  /// Create a copy of AutoUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AutoUpdateStatusStateImplCopyWith<_$AutoUpdateStatusStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
