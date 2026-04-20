// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assets_tracked_count_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AssetsTrackedCountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) assetsTrackedCountSuccessEvent,
    required TResult Function() assetsTrackedCountClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? assetsTrackedCountSuccessEvent,
    TResult? Function()? assetsTrackedCountClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? assetsTrackedCountSuccessEvent,
    TResult Function()? assetsTrackedCountClearEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetsTrackedCountSuccessEvent value)
        assetsTrackedCountSuccessEvent,
    required TResult Function(AssetsTrackedCountClearEvent value)
        assetsTrackedCountClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetsTrackedCountSuccessEvent value)?
        assetsTrackedCountSuccessEvent,
    TResult? Function(AssetsTrackedCountClearEvent value)?
        assetsTrackedCountClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetsTrackedCountSuccessEvent value)?
        assetsTrackedCountSuccessEvent,
    TResult Function(AssetsTrackedCountClearEvent value)?
        assetsTrackedCountClearEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetsTrackedCountEventCopyWith<$Res> {
  factory $AssetsTrackedCountEventCopyWith(AssetsTrackedCountEvent value,
          $Res Function(AssetsTrackedCountEvent) then) =
      _$AssetsTrackedCountEventCopyWithImpl<$Res, AssetsTrackedCountEvent>;
}

/// @nodoc
class _$AssetsTrackedCountEventCopyWithImpl<$Res,
        $Val extends AssetsTrackedCountEvent>
    implements $AssetsTrackedCountEventCopyWith<$Res> {
  _$AssetsTrackedCountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssetsTrackedCountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AssetsTrackedCountSuccessEventImplCopyWith<$Res> {
  factory _$$AssetsTrackedCountSuccessEventImplCopyWith(
          _$AssetsTrackedCountSuccessEventImpl value,
          $Res Function(_$AssetsTrackedCountSuccessEventImpl) then) =
      __$$AssetsTrackedCountSuccessEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$AssetsTrackedCountSuccessEventImplCopyWithImpl<$Res>
    extends _$AssetsTrackedCountEventCopyWithImpl<$Res,
        _$AssetsTrackedCountSuccessEventImpl>
    implements _$$AssetsTrackedCountSuccessEventImplCopyWith<$Res> {
  __$$AssetsTrackedCountSuccessEventImplCopyWithImpl(
      _$AssetsTrackedCountSuccessEventImpl _value,
      $Res Function(_$AssetsTrackedCountSuccessEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssetsTrackedCountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$AssetsTrackedCountSuccessEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AssetsTrackedCountSuccessEventImpl
    implements AssetsTrackedCountSuccessEvent {
  const _$AssetsTrackedCountSuccessEventImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'AssetsTrackedCountEvent.assetsTrackedCountSuccessEvent(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetsTrackedCountSuccessEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of AssetsTrackedCountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetsTrackedCountSuccessEventImplCopyWith<
          _$AssetsTrackedCountSuccessEventImpl>
      get copyWith => __$$AssetsTrackedCountSuccessEventImplCopyWithImpl<
          _$AssetsTrackedCountSuccessEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) assetsTrackedCountSuccessEvent,
    required TResult Function() assetsTrackedCountClearEvent,
  }) {
    return assetsTrackedCountSuccessEvent(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? assetsTrackedCountSuccessEvent,
    TResult? Function()? assetsTrackedCountClearEvent,
  }) {
    return assetsTrackedCountSuccessEvent?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? assetsTrackedCountSuccessEvent,
    TResult Function()? assetsTrackedCountClearEvent,
    required TResult orElse(),
  }) {
    if (assetsTrackedCountSuccessEvent != null) {
      return assetsTrackedCountSuccessEvent(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetsTrackedCountSuccessEvent value)
        assetsTrackedCountSuccessEvent,
    required TResult Function(AssetsTrackedCountClearEvent value)
        assetsTrackedCountClearEvent,
  }) {
    return assetsTrackedCountSuccessEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetsTrackedCountSuccessEvent value)?
        assetsTrackedCountSuccessEvent,
    TResult? Function(AssetsTrackedCountClearEvent value)?
        assetsTrackedCountClearEvent,
  }) {
    return assetsTrackedCountSuccessEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetsTrackedCountSuccessEvent value)?
        assetsTrackedCountSuccessEvent,
    TResult Function(AssetsTrackedCountClearEvent value)?
        assetsTrackedCountClearEvent,
    required TResult orElse(),
  }) {
    if (assetsTrackedCountSuccessEvent != null) {
      return assetsTrackedCountSuccessEvent(this);
    }
    return orElse();
  }
}

abstract class AssetsTrackedCountSuccessEvent
    implements AssetsTrackedCountEvent {
  const factory AssetsTrackedCountSuccessEvent({required final String userId}) =
      _$AssetsTrackedCountSuccessEventImpl;

  String get userId;

  /// Create a copy of AssetsTrackedCountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssetsTrackedCountSuccessEventImplCopyWith<
          _$AssetsTrackedCountSuccessEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssetsTrackedCountClearEventImplCopyWith<$Res> {
  factory _$$AssetsTrackedCountClearEventImplCopyWith(
          _$AssetsTrackedCountClearEventImpl value,
          $Res Function(_$AssetsTrackedCountClearEventImpl) then) =
      __$$AssetsTrackedCountClearEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssetsTrackedCountClearEventImplCopyWithImpl<$Res>
    extends _$AssetsTrackedCountEventCopyWithImpl<$Res,
        _$AssetsTrackedCountClearEventImpl>
    implements _$$AssetsTrackedCountClearEventImplCopyWith<$Res> {
  __$$AssetsTrackedCountClearEventImplCopyWithImpl(
      _$AssetsTrackedCountClearEventImpl _value,
      $Res Function(_$AssetsTrackedCountClearEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssetsTrackedCountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AssetsTrackedCountClearEventImpl
    implements AssetsTrackedCountClearEvent {
  const _$AssetsTrackedCountClearEventImpl();

  @override
  String toString() {
    return 'AssetsTrackedCountEvent.assetsTrackedCountClearEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetsTrackedCountClearEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) assetsTrackedCountSuccessEvent,
    required TResult Function() assetsTrackedCountClearEvent,
  }) {
    return assetsTrackedCountClearEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? assetsTrackedCountSuccessEvent,
    TResult? Function()? assetsTrackedCountClearEvent,
  }) {
    return assetsTrackedCountClearEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? assetsTrackedCountSuccessEvent,
    TResult Function()? assetsTrackedCountClearEvent,
    required TResult orElse(),
  }) {
    if (assetsTrackedCountClearEvent != null) {
      return assetsTrackedCountClearEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetsTrackedCountSuccessEvent value)
        assetsTrackedCountSuccessEvent,
    required TResult Function(AssetsTrackedCountClearEvent value)
        assetsTrackedCountClearEvent,
  }) {
    return assetsTrackedCountClearEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetsTrackedCountSuccessEvent value)?
        assetsTrackedCountSuccessEvent,
    TResult? Function(AssetsTrackedCountClearEvent value)?
        assetsTrackedCountClearEvent,
  }) {
    return assetsTrackedCountClearEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetsTrackedCountSuccessEvent value)?
        assetsTrackedCountSuccessEvent,
    TResult Function(AssetsTrackedCountClearEvent value)?
        assetsTrackedCountClearEvent,
    required TResult orElse(),
  }) {
    if (assetsTrackedCountClearEvent != null) {
      return assetsTrackedCountClearEvent(this);
    }
    return orElse();
  }
}

abstract class AssetsTrackedCountClearEvent implements AssetsTrackedCountEvent {
  const factory AssetsTrackedCountClearEvent() =
      _$AssetsTrackedCountClearEventImpl;
}

/// @nodoc
mixin _$AssetsTrackedCountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetsTrackedInMerchModel? assetsTracked)
        assetsTrackedCountSuccessState,
    required TResult Function() assetsTrackedCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetsTrackedInMerchModel? assetsTracked)?
        assetsTrackedCountSuccessState,
    TResult? Function()? assetsTrackedCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetsTrackedInMerchModel? assetsTracked)?
        assetsTrackedCountSuccessState,
    TResult Function()? assetsTrackedCountFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetsTrackedCountSuccessState value)
        assetsTrackedCountSuccessState,
    required TResult Function(AssetsTrackedCountFailedState value)
        assetsTrackedCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetsTrackedCountSuccessState value)?
        assetsTrackedCountSuccessState,
    TResult? Function(AssetsTrackedCountFailedState value)?
        assetsTrackedCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetsTrackedCountSuccessState value)?
        assetsTrackedCountSuccessState,
    TResult Function(AssetsTrackedCountFailedState value)?
        assetsTrackedCountFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetsTrackedCountStateCopyWith<$Res> {
  factory $AssetsTrackedCountStateCopyWith(AssetsTrackedCountState value,
          $Res Function(AssetsTrackedCountState) then) =
      _$AssetsTrackedCountStateCopyWithImpl<$Res, AssetsTrackedCountState>;
}

/// @nodoc
class _$AssetsTrackedCountStateCopyWithImpl<$Res,
        $Val extends AssetsTrackedCountState>
    implements $AssetsTrackedCountStateCopyWith<$Res> {
  _$AssetsTrackedCountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssetsTrackedCountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AssetsTrackedCountSuccessStateImplCopyWith<$Res> {
  factory _$$AssetsTrackedCountSuccessStateImplCopyWith(
          _$AssetsTrackedCountSuccessStateImpl value,
          $Res Function(_$AssetsTrackedCountSuccessStateImpl) then) =
      __$$AssetsTrackedCountSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AssetsTrackedInMerchModel? assetsTracked});
}

/// @nodoc
class __$$AssetsTrackedCountSuccessStateImplCopyWithImpl<$Res>
    extends _$AssetsTrackedCountStateCopyWithImpl<$Res,
        _$AssetsTrackedCountSuccessStateImpl>
    implements _$$AssetsTrackedCountSuccessStateImplCopyWith<$Res> {
  __$$AssetsTrackedCountSuccessStateImplCopyWithImpl(
      _$AssetsTrackedCountSuccessStateImpl _value,
      $Res Function(_$AssetsTrackedCountSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssetsTrackedCountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assetsTracked = freezed,
  }) {
    return _then(_$AssetsTrackedCountSuccessStateImpl(
      assetsTracked: freezed == assetsTracked
          ? _value.assetsTracked
          : assetsTracked // ignore: cast_nullable_to_non_nullable
              as AssetsTrackedInMerchModel?,
    ));
  }
}

/// @nodoc

class _$AssetsTrackedCountSuccessStateImpl
    implements AssetsTrackedCountSuccessState {
  const _$AssetsTrackedCountSuccessStateImpl({required this.assetsTracked});

  @override
  final AssetsTrackedInMerchModel? assetsTracked;

  @override
  String toString() {
    return 'AssetsTrackedCountState.assetsTrackedCountSuccessState(assetsTracked: $assetsTracked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetsTrackedCountSuccessStateImpl &&
            (identical(other.assetsTracked, assetsTracked) ||
                other.assetsTracked == assetsTracked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, assetsTracked);

  /// Create a copy of AssetsTrackedCountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetsTrackedCountSuccessStateImplCopyWith<
          _$AssetsTrackedCountSuccessStateImpl>
      get copyWith => __$$AssetsTrackedCountSuccessStateImplCopyWithImpl<
          _$AssetsTrackedCountSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetsTrackedInMerchModel? assetsTracked)
        assetsTrackedCountSuccessState,
    required TResult Function() assetsTrackedCountFailedState,
  }) {
    return assetsTrackedCountSuccessState(assetsTracked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetsTrackedInMerchModel? assetsTracked)?
        assetsTrackedCountSuccessState,
    TResult? Function()? assetsTrackedCountFailedState,
  }) {
    return assetsTrackedCountSuccessState?.call(assetsTracked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetsTrackedInMerchModel? assetsTracked)?
        assetsTrackedCountSuccessState,
    TResult Function()? assetsTrackedCountFailedState,
    required TResult orElse(),
  }) {
    if (assetsTrackedCountSuccessState != null) {
      return assetsTrackedCountSuccessState(assetsTracked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetsTrackedCountSuccessState value)
        assetsTrackedCountSuccessState,
    required TResult Function(AssetsTrackedCountFailedState value)
        assetsTrackedCountFailedState,
  }) {
    return assetsTrackedCountSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetsTrackedCountSuccessState value)?
        assetsTrackedCountSuccessState,
    TResult? Function(AssetsTrackedCountFailedState value)?
        assetsTrackedCountFailedState,
  }) {
    return assetsTrackedCountSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetsTrackedCountSuccessState value)?
        assetsTrackedCountSuccessState,
    TResult Function(AssetsTrackedCountFailedState value)?
        assetsTrackedCountFailedState,
    required TResult orElse(),
  }) {
    if (assetsTrackedCountSuccessState != null) {
      return assetsTrackedCountSuccessState(this);
    }
    return orElse();
  }
}

abstract class AssetsTrackedCountSuccessState
    implements AssetsTrackedCountState {
  const factory AssetsTrackedCountSuccessState(
          {required final AssetsTrackedInMerchModel? assetsTracked}) =
      _$AssetsTrackedCountSuccessStateImpl;

  AssetsTrackedInMerchModel? get assetsTracked;

  /// Create a copy of AssetsTrackedCountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssetsTrackedCountSuccessStateImplCopyWith<
          _$AssetsTrackedCountSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssetsTrackedCountFailedStateImplCopyWith<$Res> {
  factory _$$AssetsTrackedCountFailedStateImplCopyWith(
          _$AssetsTrackedCountFailedStateImpl value,
          $Res Function(_$AssetsTrackedCountFailedStateImpl) then) =
      __$$AssetsTrackedCountFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssetsTrackedCountFailedStateImplCopyWithImpl<$Res>
    extends _$AssetsTrackedCountStateCopyWithImpl<$Res,
        _$AssetsTrackedCountFailedStateImpl>
    implements _$$AssetsTrackedCountFailedStateImplCopyWith<$Res> {
  __$$AssetsTrackedCountFailedStateImplCopyWithImpl(
      _$AssetsTrackedCountFailedStateImpl _value,
      $Res Function(_$AssetsTrackedCountFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssetsTrackedCountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AssetsTrackedCountFailedStateImpl
    implements AssetsTrackedCountFailedState {
  const _$AssetsTrackedCountFailedStateImpl();

  @override
  String toString() {
    return 'AssetsTrackedCountState.assetsTrackedCountFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetsTrackedCountFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetsTrackedInMerchModel? assetsTracked)
        assetsTrackedCountSuccessState,
    required TResult Function() assetsTrackedCountFailedState,
  }) {
    return assetsTrackedCountFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetsTrackedInMerchModel? assetsTracked)?
        assetsTrackedCountSuccessState,
    TResult? Function()? assetsTrackedCountFailedState,
  }) {
    return assetsTrackedCountFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetsTrackedInMerchModel? assetsTracked)?
        assetsTrackedCountSuccessState,
    TResult Function()? assetsTrackedCountFailedState,
    required TResult orElse(),
  }) {
    if (assetsTrackedCountFailedState != null) {
      return assetsTrackedCountFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetsTrackedCountSuccessState value)
        assetsTrackedCountSuccessState,
    required TResult Function(AssetsTrackedCountFailedState value)
        assetsTrackedCountFailedState,
  }) {
    return assetsTrackedCountFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetsTrackedCountSuccessState value)?
        assetsTrackedCountSuccessState,
    TResult? Function(AssetsTrackedCountFailedState value)?
        assetsTrackedCountFailedState,
  }) {
    return assetsTrackedCountFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetsTrackedCountSuccessState value)?
        assetsTrackedCountSuccessState,
    TResult Function(AssetsTrackedCountFailedState value)?
        assetsTrackedCountFailedState,
    required TResult orElse(),
  }) {
    if (assetsTrackedCountFailedState != null) {
      return assetsTrackedCountFailedState(this);
    }
    return orElse();
  }
}

abstract class AssetsTrackedCountFailedState
    implements AssetsTrackedCountState {
  const factory AssetsTrackedCountFailedState() =
      _$AssetsTrackedCountFailedStateImpl;
}
