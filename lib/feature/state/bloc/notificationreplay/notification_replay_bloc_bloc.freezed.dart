// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_replay_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationReplayBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NotificationReplayInModel replay)
        sendNotiReplayEvent,
    required TResult Function() clearNotiReplayState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NotificationReplayInModel replay)? sendNotiReplayEvent,
    TResult? Function()? clearNotiReplayState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationReplayInModel replay)? sendNotiReplayEvent,
    TResult Function()? clearNotiReplayState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendNotiReplayEvent value) sendNotiReplayEvent,
    required TResult Function(ClearNotiReplayState value) clearNotiReplayState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendNotiReplayEvent value)? sendNotiReplayEvent,
    TResult? Function(ClearNotiReplayState value)? clearNotiReplayState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendNotiReplayEvent value)? sendNotiReplayEvent,
    TResult Function(ClearNotiReplayState value)? clearNotiReplayState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationReplayBlocEventCopyWith<$Res> {
  factory $NotificationReplayBlocEventCopyWith(
          NotificationReplayBlocEvent value,
          $Res Function(NotificationReplayBlocEvent) then) =
      _$NotificationReplayBlocEventCopyWithImpl<$Res,
          NotificationReplayBlocEvent>;
}

/// @nodoc
class _$NotificationReplayBlocEventCopyWithImpl<$Res,
        $Val extends NotificationReplayBlocEvent>
    implements $NotificationReplayBlocEventCopyWith<$Res> {
  _$NotificationReplayBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendNotiReplayEventImplCopyWith<$Res> {
  factory _$$SendNotiReplayEventImplCopyWith(_$SendNotiReplayEventImpl value,
          $Res Function(_$SendNotiReplayEventImpl) then) =
      __$$SendNotiReplayEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NotificationReplayInModel replay});
}

/// @nodoc
class __$$SendNotiReplayEventImplCopyWithImpl<$Res>
    extends _$NotificationReplayBlocEventCopyWithImpl<$Res,
        _$SendNotiReplayEventImpl>
    implements _$$SendNotiReplayEventImplCopyWith<$Res> {
  __$$SendNotiReplayEventImplCopyWithImpl(_$SendNotiReplayEventImpl _value,
      $Res Function(_$SendNotiReplayEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replay = null,
  }) {
    return _then(_$SendNotiReplayEventImpl(
      replay: null == replay
          ? _value.replay
          : replay // ignore: cast_nullable_to_non_nullable
              as NotificationReplayInModel,
    ));
  }
}

/// @nodoc

class _$SendNotiReplayEventImpl implements SendNotiReplayEvent {
  const _$SendNotiReplayEventImpl({required this.replay});

  @override
  final NotificationReplayInModel replay;

  @override
  String toString() {
    return 'NotificationReplayBlocEvent.sendNotiReplayEvent(replay: $replay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendNotiReplayEventImpl &&
            (identical(other.replay, replay) || other.replay == replay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, replay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendNotiReplayEventImplCopyWith<_$SendNotiReplayEventImpl> get copyWith =>
      __$$SendNotiReplayEventImplCopyWithImpl<_$SendNotiReplayEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NotificationReplayInModel replay)
        sendNotiReplayEvent,
    required TResult Function() clearNotiReplayState,
  }) {
    return sendNotiReplayEvent(replay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NotificationReplayInModel replay)? sendNotiReplayEvent,
    TResult? Function()? clearNotiReplayState,
  }) {
    return sendNotiReplayEvent?.call(replay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationReplayInModel replay)? sendNotiReplayEvent,
    TResult Function()? clearNotiReplayState,
    required TResult orElse(),
  }) {
    if (sendNotiReplayEvent != null) {
      return sendNotiReplayEvent(replay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendNotiReplayEvent value) sendNotiReplayEvent,
    required TResult Function(ClearNotiReplayState value) clearNotiReplayState,
  }) {
    return sendNotiReplayEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendNotiReplayEvent value)? sendNotiReplayEvent,
    TResult? Function(ClearNotiReplayState value)? clearNotiReplayState,
  }) {
    return sendNotiReplayEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendNotiReplayEvent value)? sendNotiReplayEvent,
    TResult Function(ClearNotiReplayState value)? clearNotiReplayState,
    required TResult orElse(),
  }) {
    if (sendNotiReplayEvent != null) {
      return sendNotiReplayEvent(this);
    }
    return orElse();
  }
}

abstract class SendNotiReplayEvent implements NotificationReplayBlocEvent {
  const factory SendNotiReplayEvent(
          {required final NotificationReplayInModel replay}) =
      _$SendNotiReplayEventImpl;

  NotificationReplayInModel get replay;
  @JsonKey(ignore: true)
  _$$SendNotiReplayEventImplCopyWith<_$SendNotiReplayEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearNotiReplayStateImplCopyWith<$Res> {
  factory _$$ClearNotiReplayStateImplCopyWith(_$ClearNotiReplayStateImpl value,
          $Res Function(_$ClearNotiReplayStateImpl) then) =
      __$$ClearNotiReplayStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearNotiReplayStateImplCopyWithImpl<$Res>
    extends _$NotificationReplayBlocEventCopyWithImpl<$Res,
        _$ClearNotiReplayStateImpl>
    implements _$$ClearNotiReplayStateImplCopyWith<$Res> {
  __$$ClearNotiReplayStateImplCopyWithImpl(_$ClearNotiReplayStateImpl _value,
      $Res Function(_$ClearNotiReplayStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearNotiReplayStateImpl implements ClearNotiReplayState {
  const _$ClearNotiReplayStateImpl();

  @override
  String toString() {
    return 'NotificationReplayBlocEvent.clearNotiReplayState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearNotiReplayStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NotificationReplayInModel replay)
        sendNotiReplayEvent,
    required TResult Function() clearNotiReplayState,
  }) {
    return clearNotiReplayState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NotificationReplayInModel replay)? sendNotiReplayEvent,
    TResult? Function()? clearNotiReplayState,
  }) {
    return clearNotiReplayState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationReplayInModel replay)? sendNotiReplayEvent,
    TResult Function()? clearNotiReplayState,
    required TResult orElse(),
  }) {
    if (clearNotiReplayState != null) {
      return clearNotiReplayState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendNotiReplayEvent value) sendNotiReplayEvent,
    required TResult Function(ClearNotiReplayState value) clearNotiReplayState,
  }) {
    return clearNotiReplayState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendNotiReplayEvent value)? sendNotiReplayEvent,
    TResult? Function(ClearNotiReplayState value)? clearNotiReplayState,
  }) {
    return clearNotiReplayState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendNotiReplayEvent value)? sendNotiReplayEvent,
    TResult Function(ClearNotiReplayState value)? clearNotiReplayState,
    required TResult orElse(),
  }) {
    if (clearNotiReplayState != null) {
      return clearNotiReplayState(this);
    }
    return orElse();
  }
}

abstract class ClearNotiReplayState implements NotificationReplayBlocEvent {
  const factory ClearNotiReplayState() = _$ClearNotiReplayStateImpl;
}

/// @nodoc
mixin _$NotificationReplayBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NotificationReplayOutModel? replay)
        sendNotiReplayState,
    required TResult Function() notiReplayFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NotificationReplayOutModel? replay)? sendNotiReplayState,
    TResult? Function()? notiReplayFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationReplayOutModel? replay)? sendNotiReplayState,
    TResult Function()? notiReplayFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendNotiReplayState value) sendNotiReplayState,
    required TResult Function(NotiReplayFailedState value)
        notiReplayFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendNotiReplayState value)? sendNotiReplayState,
    TResult? Function(NotiReplayFailedState value)? notiReplayFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendNotiReplayState value)? sendNotiReplayState,
    TResult Function(NotiReplayFailedState value)? notiReplayFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationReplayBlocStateCopyWith<$Res> {
  factory $NotificationReplayBlocStateCopyWith(
          NotificationReplayBlocState value,
          $Res Function(NotificationReplayBlocState) then) =
      _$NotificationReplayBlocStateCopyWithImpl<$Res,
          NotificationReplayBlocState>;
}

/// @nodoc
class _$NotificationReplayBlocStateCopyWithImpl<$Res,
        $Val extends NotificationReplayBlocState>
    implements $NotificationReplayBlocStateCopyWith<$Res> {
  _$NotificationReplayBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendNotiReplayStateImplCopyWith<$Res> {
  factory _$$SendNotiReplayStateImplCopyWith(_$SendNotiReplayStateImpl value,
          $Res Function(_$SendNotiReplayStateImpl) then) =
      __$$SendNotiReplayStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NotificationReplayOutModel? replay});
}

/// @nodoc
class __$$SendNotiReplayStateImplCopyWithImpl<$Res>
    extends _$NotificationReplayBlocStateCopyWithImpl<$Res,
        _$SendNotiReplayStateImpl>
    implements _$$SendNotiReplayStateImplCopyWith<$Res> {
  __$$SendNotiReplayStateImplCopyWithImpl(_$SendNotiReplayStateImpl _value,
      $Res Function(_$SendNotiReplayStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replay = freezed,
  }) {
    return _then(_$SendNotiReplayStateImpl(
      replay: freezed == replay
          ? _value.replay
          : replay // ignore: cast_nullable_to_non_nullable
              as NotificationReplayOutModel?,
    ));
  }
}

/// @nodoc

class _$SendNotiReplayStateImpl implements SendNotiReplayState {
  const _$SendNotiReplayStateImpl({required this.replay});

  @override
  final NotificationReplayOutModel? replay;

  @override
  String toString() {
    return 'NotificationReplayBlocState.sendNotiReplayState(replay: $replay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendNotiReplayStateImpl &&
            (identical(other.replay, replay) || other.replay == replay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, replay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendNotiReplayStateImplCopyWith<_$SendNotiReplayStateImpl> get copyWith =>
      __$$SendNotiReplayStateImplCopyWithImpl<_$SendNotiReplayStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NotificationReplayOutModel? replay)
        sendNotiReplayState,
    required TResult Function() notiReplayFailedState,
  }) {
    return sendNotiReplayState(replay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NotificationReplayOutModel? replay)? sendNotiReplayState,
    TResult? Function()? notiReplayFailedState,
  }) {
    return sendNotiReplayState?.call(replay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationReplayOutModel? replay)? sendNotiReplayState,
    TResult Function()? notiReplayFailedState,
    required TResult orElse(),
  }) {
    if (sendNotiReplayState != null) {
      return sendNotiReplayState(replay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendNotiReplayState value) sendNotiReplayState,
    required TResult Function(NotiReplayFailedState value)
        notiReplayFailedState,
  }) {
    return sendNotiReplayState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendNotiReplayState value)? sendNotiReplayState,
    TResult? Function(NotiReplayFailedState value)? notiReplayFailedState,
  }) {
    return sendNotiReplayState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendNotiReplayState value)? sendNotiReplayState,
    TResult Function(NotiReplayFailedState value)? notiReplayFailedState,
    required TResult orElse(),
  }) {
    if (sendNotiReplayState != null) {
      return sendNotiReplayState(this);
    }
    return orElse();
  }
}

abstract class SendNotiReplayState implements NotificationReplayBlocState {
  const factory SendNotiReplayState(
          {required final NotificationReplayOutModel? replay}) =
      _$SendNotiReplayStateImpl;

  NotificationReplayOutModel? get replay;
  @JsonKey(ignore: true)
  _$$SendNotiReplayStateImplCopyWith<_$SendNotiReplayStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotiReplayFailedStateImplCopyWith<$Res> {
  factory _$$NotiReplayFailedStateImplCopyWith(
          _$NotiReplayFailedStateImpl value,
          $Res Function(_$NotiReplayFailedStateImpl) then) =
      __$$NotiReplayFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotiReplayFailedStateImplCopyWithImpl<$Res>
    extends _$NotificationReplayBlocStateCopyWithImpl<$Res,
        _$NotiReplayFailedStateImpl>
    implements _$$NotiReplayFailedStateImplCopyWith<$Res> {
  __$$NotiReplayFailedStateImplCopyWithImpl(_$NotiReplayFailedStateImpl _value,
      $Res Function(_$NotiReplayFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotiReplayFailedStateImpl implements NotiReplayFailedState {
  const _$NotiReplayFailedStateImpl();

  @override
  String toString() {
    return 'NotificationReplayBlocState.notiReplayFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotiReplayFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NotificationReplayOutModel? replay)
        sendNotiReplayState,
    required TResult Function() notiReplayFailedState,
  }) {
    return notiReplayFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NotificationReplayOutModel? replay)? sendNotiReplayState,
    TResult? Function()? notiReplayFailedState,
  }) {
    return notiReplayFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationReplayOutModel? replay)? sendNotiReplayState,
    TResult Function()? notiReplayFailedState,
    required TResult orElse(),
  }) {
    if (notiReplayFailedState != null) {
      return notiReplayFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendNotiReplayState value) sendNotiReplayState,
    required TResult Function(NotiReplayFailedState value)
        notiReplayFailedState,
  }) {
    return notiReplayFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendNotiReplayState value)? sendNotiReplayState,
    TResult? Function(NotiReplayFailedState value)? notiReplayFailedState,
  }) {
    return notiReplayFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendNotiReplayState value)? sendNotiReplayState,
    TResult Function(NotiReplayFailedState value)? notiReplayFailedState,
    required TResult orElse(),
  }) {
    if (notiReplayFailedState != null) {
      return notiReplayFailedState(this);
    }
    return orElse();
  }
}

abstract class NotiReplayFailedState implements NotificationReplayBlocState {
  const factory NotiReplayFailedState() = _$NotiReplayFailedStateImpl;
}
