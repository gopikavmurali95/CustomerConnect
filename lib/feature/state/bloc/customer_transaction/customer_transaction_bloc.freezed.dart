// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerTransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID) cusTransactionSuccessEvent,
    required TResult Function() cusTransactionFailedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID)? cusTransactionSuccessEvent,
    TResult? Function()? cusTransactionFailedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID)? cusTransactionSuccessEvent,
    TResult Function()? cusTransactionFailedEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CusTransactionSuccessEvent value)
        cusTransactionSuccessEvent,
    required TResult Function(CusTransactionFailedEvent value)
        cusTransactionFailedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CusTransactionSuccessEvent value)?
        cusTransactionSuccessEvent,
    TResult? Function(CusTransactionFailedEvent value)?
        cusTransactionFailedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CusTransactionSuccessEvent value)?
        cusTransactionSuccessEvent,
    TResult Function(CusTransactionFailedEvent value)?
        cusTransactionFailedEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerTransactionEventCopyWith<$Res> {
  factory $CustomerTransactionEventCopyWith(CustomerTransactionEvent value,
          $Res Function(CustomerTransactionEvent) then) =
      _$CustomerTransactionEventCopyWithImpl<$Res, CustomerTransactionEvent>;
}

/// @nodoc
class _$CustomerTransactionEventCopyWithImpl<$Res,
        $Val extends CustomerTransactionEvent>
    implements $CustomerTransactionEventCopyWith<$Res> {
  _$CustomerTransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CusTransactionSuccessEventImplCopyWith<$Res> {
  factory _$$CusTransactionSuccessEventImplCopyWith(
          _$CusTransactionSuccessEventImpl value,
          $Res Function(_$CusTransactionSuccessEventImpl) then) =
      __$$CusTransactionSuccessEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userID});
}

/// @nodoc
class __$$CusTransactionSuccessEventImplCopyWithImpl<$Res>
    extends _$CustomerTransactionEventCopyWithImpl<$Res,
        _$CusTransactionSuccessEventImpl>
    implements _$$CusTransactionSuccessEventImplCopyWith<$Res> {
  __$$CusTransactionSuccessEventImplCopyWithImpl(
      _$CusTransactionSuccessEventImpl _value,
      $Res Function(_$CusTransactionSuccessEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
  }) {
    return _then(_$CusTransactionSuccessEventImpl(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CusTransactionSuccessEventImpl implements CusTransactionSuccessEvent {
  const _$CusTransactionSuccessEventImpl({required this.userID});

  @override
  final String userID;

  @override
  String toString() {
    return 'CustomerTransactionEvent.cusTransactionSuccessEvent(userID: $userID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CusTransactionSuccessEventImpl &&
            (identical(other.userID, userID) || other.userID == userID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CusTransactionSuccessEventImplCopyWith<_$CusTransactionSuccessEventImpl>
      get copyWith => __$$CusTransactionSuccessEventImplCopyWithImpl<
          _$CusTransactionSuccessEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID) cusTransactionSuccessEvent,
    required TResult Function() cusTransactionFailedEvent,
  }) {
    return cusTransactionSuccessEvent(userID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID)? cusTransactionSuccessEvent,
    TResult? Function()? cusTransactionFailedEvent,
  }) {
    return cusTransactionSuccessEvent?.call(userID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID)? cusTransactionSuccessEvent,
    TResult Function()? cusTransactionFailedEvent,
    required TResult orElse(),
  }) {
    if (cusTransactionSuccessEvent != null) {
      return cusTransactionSuccessEvent(userID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CusTransactionSuccessEvent value)
        cusTransactionSuccessEvent,
    required TResult Function(CusTransactionFailedEvent value)
        cusTransactionFailedEvent,
  }) {
    return cusTransactionSuccessEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CusTransactionSuccessEvent value)?
        cusTransactionSuccessEvent,
    TResult? Function(CusTransactionFailedEvent value)?
        cusTransactionFailedEvent,
  }) {
    return cusTransactionSuccessEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CusTransactionSuccessEvent value)?
        cusTransactionSuccessEvent,
    TResult Function(CusTransactionFailedEvent value)?
        cusTransactionFailedEvent,
    required TResult orElse(),
  }) {
    if (cusTransactionSuccessEvent != null) {
      return cusTransactionSuccessEvent(this);
    }
    return orElse();
  }
}

abstract class CusTransactionSuccessEvent implements CustomerTransactionEvent {
  const factory CusTransactionSuccessEvent({required final String userID}) =
      _$CusTransactionSuccessEventImpl;

  String get userID;
  @JsonKey(ignore: true)
  _$$CusTransactionSuccessEventImplCopyWith<_$CusTransactionSuccessEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CusTransactionFailedEventImplCopyWith<$Res> {
  factory _$$CusTransactionFailedEventImplCopyWith(
          _$CusTransactionFailedEventImpl value,
          $Res Function(_$CusTransactionFailedEventImpl) then) =
      __$$CusTransactionFailedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CusTransactionFailedEventImplCopyWithImpl<$Res>
    extends _$CustomerTransactionEventCopyWithImpl<$Res,
        _$CusTransactionFailedEventImpl>
    implements _$$CusTransactionFailedEventImplCopyWith<$Res> {
  __$$CusTransactionFailedEventImplCopyWithImpl(
      _$CusTransactionFailedEventImpl _value,
      $Res Function(_$CusTransactionFailedEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CusTransactionFailedEventImpl implements CusTransactionFailedEvent {
  const _$CusTransactionFailedEventImpl();

  @override
  String toString() {
    return 'CustomerTransactionEvent.cusTransactionFailedEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CusTransactionFailedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID) cusTransactionSuccessEvent,
    required TResult Function() cusTransactionFailedEvent,
  }) {
    return cusTransactionFailedEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID)? cusTransactionSuccessEvent,
    TResult? Function()? cusTransactionFailedEvent,
  }) {
    return cusTransactionFailedEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID)? cusTransactionSuccessEvent,
    TResult Function()? cusTransactionFailedEvent,
    required TResult orElse(),
  }) {
    if (cusTransactionFailedEvent != null) {
      return cusTransactionFailedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CusTransactionSuccessEvent value)
        cusTransactionSuccessEvent,
    required TResult Function(CusTransactionFailedEvent value)
        cusTransactionFailedEvent,
  }) {
    return cusTransactionFailedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CusTransactionSuccessEvent value)?
        cusTransactionSuccessEvent,
    TResult? Function(CusTransactionFailedEvent value)?
        cusTransactionFailedEvent,
  }) {
    return cusTransactionFailedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CusTransactionSuccessEvent value)?
        cusTransactionSuccessEvent,
    TResult Function(CusTransactionFailedEvent value)?
        cusTransactionFailedEvent,
    required TResult orElse(),
  }) {
    if (cusTransactionFailedEvent != null) {
      return cusTransactionFailedEvent(this);
    }
    return orElse();
  }
}

abstract class CusTransactionFailedEvent implements CustomerTransactionEvent {
  const factory CusTransactionFailedEvent() = _$CusTransactionFailedEventImpl;
}

/// @nodoc
mixin _$CustomerTransactionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerTransactionModel? customertrans)
        cusTransactionSuccessState,
    required TResult Function() cusTransactionFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerTransactionModel? customertrans)?
        cusTransactionSuccessState,
    TResult? Function()? cusTransactionFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerTransactionModel? customertrans)?
        cusTransactionSuccessState,
    TResult Function()? cusTransactionFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CusTransactionSuccessState value)
        cusTransactionSuccessState,
    required TResult Function(CusTransactionFailedState value)
        cusTransactionFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CusTransactionSuccessState value)?
        cusTransactionSuccessState,
    TResult? Function(CusTransactionFailedState value)?
        cusTransactionFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CusTransactionSuccessState value)?
        cusTransactionSuccessState,
    TResult Function(CusTransactionFailedState value)?
        cusTransactionFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerTransactionStateCopyWith<$Res> {
  factory $CustomerTransactionStateCopyWith(CustomerTransactionState value,
          $Res Function(CustomerTransactionState) then) =
      _$CustomerTransactionStateCopyWithImpl<$Res, CustomerTransactionState>;
}

/// @nodoc
class _$CustomerTransactionStateCopyWithImpl<$Res,
        $Val extends CustomerTransactionState>
    implements $CustomerTransactionStateCopyWith<$Res> {
  _$CustomerTransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CusTransactionSuccessStateImplCopyWith<$Res> {
  factory _$$CusTransactionSuccessStateImplCopyWith(
          _$CusTransactionSuccessStateImpl value,
          $Res Function(_$CusTransactionSuccessStateImpl) then) =
      __$$CusTransactionSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CustomerTransactionModel? customertrans});
}

/// @nodoc
class __$$CusTransactionSuccessStateImplCopyWithImpl<$Res>
    extends _$CustomerTransactionStateCopyWithImpl<$Res,
        _$CusTransactionSuccessStateImpl>
    implements _$$CusTransactionSuccessStateImplCopyWith<$Res> {
  __$$CusTransactionSuccessStateImplCopyWithImpl(
      _$CusTransactionSuccessStateImpl _value,
      $Res Function(_$CusTransactionSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customertrans = freezed,
  }) {
    return _then(_$CusTransactionSuccessStateImpl(
      customertrans: freezed == customertrans
          ? _value.customertrans
          : customertrans // ignore: cast_nullable_to_non_nullable
              as CustomerTransactionModel?,
    ));
  }
}

/// @nodoc

class _$CusTransactionSuccessStateImpl implements CusTransactionSuccessState {
  const _$CusTransactionSuccessStateImpl({required this.customertrans});

  @override
  final CustomerTransactionModel? customertrans;

  @override
  String toString() {
    return 'CustomerTransactionState.cusTransactionSuccessState(customertrans: $customertrans)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CusTransactionSuccessStateImpl &&
            (identical(other.customertrans, customertrans) ||
                other.customertrans == customertrans));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customertrans);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CusTransactionSuccessStateImplCopyWith<_$CusTransactionSuccessStateImpl>
      get copyWith => __$$CusTransactionSuccessStateImplCopyWithImpl<
          _$CusTransactionSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerTransactionModel? customertrans)
        cusTransactionSuccessState,
    required TResult Function() cusTransactionFailedState,
  }) {
    return cusTransactionSuccessState(customertrans);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerTransactionModel? customertrans)?
        cusTransactionSuccessState,
    TResult? Function()? cusTransactionFailedState,
  }) {
    return cusTransactionSuccessState?.call(customertrans);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerTransactionModel? customertrans)?
        cusTransactionSuccessState,
    TResult Function()? cusTransactionFailedState,
    required TResult orElse(),
  }) {
    if (cusTransactionSuccessState != null) {
      return cusTransactionSuccessState(customertrans);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CusTransactionSuccessState value)
        cusTransactionSuccessState,
    required TResult Function(CusTransactionFailedState value)
        cusTransactionFailedState,
  }) {
    return cusTransactionSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CusTransactionSuccessState value)?
        cusTransactionSuccessState,
    TResult? Function(CusTransactionFailedState value)?
        cusTransactionFailedState,
  }) {
    return cusTransactionSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CusTransactionSuccessState value)?
        cusTransactionSuccessState,
    TResult Function(CusTransactionFailedState value)?
        cusTransactionFailedState,
    required TResult orElse(),
  }) {
    if (cusTransactionSuccessState != null) {
      return cusTransactionSuccessState(this);
    }
    return orElse();
  }
}

abstract class CusTransactionSuccessState implements CustomerTransactionState {
  const factory CusTransactionSuccessState(
          {required final CustomerTransactionModel? customertrans}) =
      _$CusTransactionSuccessStateImpl;

  CustomerTransactionModel? get customertrans;
  @JsonKey(ignore: true)
  _$$CusTransactionSuccessStateImplCopyWith<_$CusTransactionSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CusTransactionFailedStateImplCopyWith<$Res> {
  factory _$$CusTransactionFailedStateImplCopyWith(
          _$CusTransactionFailedStateImpl value,
          $Res Function(_$CusTransactionFailedStateImpl) then) =
      __$$CusTransactionFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CusTransactionFailedStateImplCopyWithImpl<$Res>
    extends _$CustomerTransactionStateCopyWithImpl<$Res,
        _$CusTransactionFailedStateImpl>
    implements _$$CusTransactionFailedStateImplCopyWith<$Res> {
  __$$CusTransactionFailedStateImplCopyWithImpl(
      _$CusTransactionFailedStateImpl _value,
      $Res Function(_$CusTransactionFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CusTransactionFailedStateImpl implements CusTransactionFailedState {
  const _$CusTransactionFailedStateImpl();

  @override
  String toString() {
    return 'CustomerTransactionState.cusTransactionFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CusTransactionFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerTransactionModel? customertrans)
        cusTransactionSuccessState,
    required TResult Function() cusTransactionFailedState,
  }) {
    return cusTransactionFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerTransactionModel? customertrans)?
        cusTransactionSuccessState,
    TResult? Function()? cusTransactionFailedState,
  }) {
    return cusTransactionFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerTransactionModel? customertrans)?
        cusTransactionSuccessState,
    TResult Function()? cusTransactionFailedState,
    required TResult orElse(),
  }) {
    if (cusTransactionFailedState != null) {
      return cusTransactionFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CusTransactionSuccessState value)
        cusTransactionSuccessState,
    required TResult Function(CusTransactionFailedState value)
        cusTransactionFailedState,
  }) {
    return cusTransactionFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CusTransactionSuccessState value)?
        cusTransactionSuccessState,
    TResult? Function(CusTransactionFailedState value)?
        cusTransactionFailedState,
  }) {
    return cusTransactionFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CusTransactionSuccessState value)?
        cusTransactionSuccessState,
    TResult Function(CusTransactionFailedState value)?
        cusTransactionFailedState,
    required TResult orElse(),
  }) {
    if (cusTransactionFailedState != null) {
      return cusTransactionFailedState(this);
    }
    return orElse();
  }
}

abstract class CusTransactionFailedState implements CustomerTransactionState {
  const factory CusTransactionFailedState() = _$CusTransactionFailedStateImpl;
}
