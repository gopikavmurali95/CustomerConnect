// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_transaction_target_count_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerTransactionTargetCountEvent {
  String get userId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) targetCountSuccessEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? targetCountSuccessEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? targetCountSuccessEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TargetCountSuccessEvent value)
        targetCountSuccessEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TargetCountSuccessEvent value)? targetCountSuccessEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TargetCountSuccessEvent value)? targetCountSuccessEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CustomerTransactionTargetCountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerTransactionTargetCountEventCopyWith<
          CustomerTransactionTargetCountEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerTransactionTargetCountEventCopyWith<$Res> {
  factory $CustomerTransactionTargetCountEventCopyWith(
          CustomerTransactionTargetCountEvent value,
          $Res Function(CustomerTransactionTargetCountEvent) then) =
      _$CustomerTransactionTargetCountEventCopyWithImpl<$Res,
          CustomerTransactionTargetCountEvent>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class _$CustomerTransactionTargetCountEventCopyWithImpl<$Res,
        $Val extends CustomerTransactionTargetCountEvent>
    implements $CustomerTransactionTargetCountEventCopyWith<$Res> {
  _$CustomerTransactionTargetCountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerTransactionTargetCountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TargetCountSuccessEventImplCopyWith<$Res>
    implements $CustomerTransactionTargetCountEventCopyWith<$Res> {
  factory _$$TargetCountSuccessEventImplCopyWith(
          _$TargetCountSuccessEventImpl value,
          $Res Function(_$TargetCountSuccessEventImpl) then) =
      __$$TargetCountSuccessEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$TargetCountSuccessEventImplCopyWithImpl<$Res>
    extends _$CustomerTransactionTargetCountEventCopyWithImpl<$Res,
        _$TargetCountSuccessEventImpl>
    implements _$$TargetCountSuccessEventImplCopyWith<$Res> {
  __$$TargetCountSuccessEventImplCopyWithImpl(
      _$TargetCountSuccessEventImpl _value,
      $Res Function(_$TargetCountSuccessEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerTransactionTargetCountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$TargetCountSuccessEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TargetCountSuccessEventImpl implements TargetCountSuccessEvent {
  const _$TargetCountSuccessEventImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'CustomerTransactionTargetCountEvent.targetCountSuccessEvent(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TargetCountSuccessEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of CustomerTransactionTargetCountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TargetCountSuccessEventImplCopyWith<_$TargetCountSuccessEventImpl>
      get copyWith => __$$TargetCountSuccessEventImplCopyWithImpl<
          _$TargetCountSuccessEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) targetCountSuccessEvent,
  }) {
    return targetCountSuccessEvent(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? targetCountSuccessEvent,
  }) {
    return targetCountSuccessEvent?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? targetCountSuccessEvent,
    required TResult orElse(),
  }) {
    if (targetCountSuccessEvent != null) {
      return targetCountSuccessEvent(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TargetCountSuccessEvent value)
        targetCountSuccessEvent,
  }) {
    return targetCountSuccessEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TargetCountSuccessEvent value)? targetCountSuccessEvent,
  }) {
    return targetCountSuccessEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TargetCountSuccessEvent value)? targetCountSuccessEvent,
    required TResult orElse(),
  }) {
    if (targetCountSuccessEvent != null) {
      return targetCountSuccessEvent(this);
    }
    return orElse();
  }
}

abstract class TargetCountSuccessEvent
    implements CustomerTransactionTargetCountEvent {
  const factory TargetCountSuccessEvent({required final String userId}) =
      _$TargetCountSuccessEventImpl;

  @override
  String get userId;

  /// Create a copy of CustomerTransactionTargetCountEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TargetCountSuccessEventImplCopyWith<_$TargetCountSuccessEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomerTransactionTargetCountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerTransactionTargetCount? count)
        targetCountSuccessState,
    required TResult Function() targetCountFailureState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerTransactionTargetCount? count)?
        targetCountSuccessState,
    TResult? Function()? targetCountFailureState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerTransactionTargetCount? count)?
        targetCountSuccessState,
    TResult Function()? targetCountFailureState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TargetCountSuccessState value)
        targetCountSuccessState,
    required TResult Function(TargetCountFailureState value)
        targetCountFailureState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TargetCountSuccessState value)? targetCountSuccessState,
    TResult? Function(TargetCountFailureState value)? targetCountFailureState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TargetCountSuccessState value)? targetCountSuccessState,
    TResult Function(TargetCountFailureState value)? targetCountFailureState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerTransactionTargetCountStateCopyWith<$Res> {
  factory $CustomerTransactionTargetCountStateCopyWith(
          CustomerTransactionTargetCountState value,
          $Res Function(CustomerTransactionTargetCountState) then) =
      _$CustomerTransactionTargetCountStateCopyWithImpl<$Res,
          CustomerTransactionTargetCountState>;
}

/// @nodoc
class _$CustomerTransactionTargetCountStateCopyWithImpl<$Res,
        $Val extends CustomerTransactionTargetCountState>
    implements $CustomerTransactionTargetCountStateCopyWith<$Res> {
  _$CustomerTransactionTargetCountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerTransactionTargetCountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TargetCountSuccessStateImplCopyWith<$Res> {
  factory _$$TargetCountSuccessStateImplCopyWith(
          _$TargetCountSuccessStateImpl value,
          $Res Function(_$TargetCountSuccessStateImpl) then) =
      __$$TargetCountSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CustomerTransactionTargetCount? count});
}

/// @nodoc
class __$$TargetCountSuccessStateImplCopyWithImpl<$Res>
    extends _$CustomerTransactionTargetCountStateCopyWithImpl<$Res,
        _$TargetCountSuccessStateImpl>
    implements _$$TargetCountSuccessStateImplCopyWith<$Res> {
  __$$TargetCountSuccessStateImplCopyWithImpl(
      _$TargetCountSuccessStateImpl _value,
      $Res Function(_$TargetCountSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerTransactionTargetCountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_$TargetCountSuccessStateImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as CustomerTransactionTargetCount?,
    ));
  }
}

/// @nodoc

class _$TargetCountSuccessStateImpl implements TargetCountSuccessState {
  const _$TargetCountSuccessStateImpl({required this.count});

  @override
  final CustomerTransactionTargetCount? count;

  @override
  String toString() {
    return 'CustomerTransactionTargetCountState.targetCountSuccessState(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TargetCountSuccessStateImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  /// Create a copy of CustomerTransactionTargetCountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TargetCountSuccessStateImplCopyWith<_$TargetCountSuccessStateImpl>
      get copyWith => __$$TargetCountSuccessStateImplCopyWithImpl<
          _$TargetCountSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerTransactionTargetCount? count)
        targetCountSuccessState,
    required TResult Function() targetCountFailureState,
  }) {
    return targetCountSuccessState(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerTransactionTargetCount? count)?
        targetCountSuccessState,
    TResult? Function()? targetCountFailureState,
  }) {
    return targetCountSuccessState?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerTransactionTargetCount? count)?
        targetCountSuccessState,
    TResult Function()? targetCountFailureState,
    required TResult orElse(),
  }) {
    if (targetCountSuccessState != null) {
      return targetCountSuccessState(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TargetCountSuccessState value)
        targetCountSuccessState,
    required TResult Function(TargetCountFailureState value)
        targetCountFailureState,
  }) {
    return targetCountSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TargetCountSuccessState value)? targetCountSuccessState,
    TResult? Function(TargetCountFailureState value)? targetCountFailureState,
  }) {
    return targetCountSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TargetCountSuccessState value)? targetCountSuccessState,
    TResult Function(TargetCountFailureState value)? targetCountFailureState,
    required TResult orElse(),
  }) {
    if (targetCountSuccessState != null) {
      return targetCountSuccessState(this);
    }
    return orElse();
  }
}

abstract class TargetCountSuccessState
    implements CustomerTransactionTargetCountState {
  const factory TargetCountSuccessState(
          {required final CustomerTransactionTargetCount? count}) =
      _$TargetCountSuccessStateImpl;

  CustomerTransactionTargetCount? get count;

  /// Create a copy of CustomerTransactionTargetCountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TargetCountSuccessStateImplCopyWith<_$TargetCountSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TargetCountFailureStateImplCopyWith<$Res> {
  factory _$$TargetCountFailureStateImplCopyWith(
          _$TargetCountFailureStateImpl value,
          $Res Function(_$TargetCountFailureStateImpl) then) =
      __$$TargetCountFailureStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TargetCountFailureStateImplCopyWithImpl<$Res>
    extends _$CustomerTransactionTargetCountStateCopyWithImpl<$Res,
        _$TargetCountFailureStateImpl>
    implements _$$TargetCountFailureStateImplCopyWith<$Res> {
  __$$TargetCountFailureStateImplCopyWithImpl(
      _$TargetCountFailureStateImpl _value,
      $Res Function(_$TargetCountFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerTransactionTargetCountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TargetCountFailureStateImpl implements TargetCountFailureState {
  const _$TargetCountFailureStateImpl();

  @override
  String toString() {
    return 'CustomerTransactionTargetCountState.targetCountFailureState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TargetCountFailureStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerTransactionTargetCount? count)
        targetCountSuccessState,
    required TResult Function() targetCountFailureState,
  }) {
    return targetCountFailureState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerTransactionTargetCount? count)?
        targetCountSuccessState,
    TResult? Function()? targetCountFailureState,
  }) {
    return targetCountFailureState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerTransactionTargetCount? count)?
        targetCountSuccessState,
    TResult Function()? targetCountFailureState,
    required TResult orElse(),
  }) {
    if (targetCountFailureState != null) {
      return targetCountFailureState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TargetCountSuccessState value)
        targetCountSuccessState,
    required TResult Function(TargetCountFailureState value)
        targetCountFailureState,
  }) {
    return targetCountFailureState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TargetCountSuccessState value)? targetCountSuccessState,
    TResult? Function(TargetCountFailureState value)? targetCountFailureState,
  }) {
    return targetCountFailureState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TargetCountSuccessState value)? targetCountSuccessState,
    TResult Function(TargetCountFailureState value)? targetCountFailureState,
    required TResult orElse(),
  }) {
    if (targetCountFailureState != null) {
      return targetCountFailureState(this);
    }
    return orElse();
  }
}

abstract class TargetCountFailureState
    implements CustomerTransactionTargetCountState {
  const factory TargetCountFailureState() = _$TargetCountFailureStateImpl;
}
