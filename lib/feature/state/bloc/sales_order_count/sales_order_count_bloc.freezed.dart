// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_order_count_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SalesOrderCountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID) salesOrderCountSuccessEvent,
    required TResult Function() salesOrderCountFailedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID)? salesOrderCountSuccessEvent,
    TResult? Function()? salesOrderCountFailedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID)? salesOrderCountSuccessEvent,
    TResult Function()? salesOrderCountFailedEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SalesOrderCountSuccessEvent value)
        salesOrderCountSuccessEvent,
    required TResult Function(SalesOrderCountFailedEvent value)
        salesOrderCountFailedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SalesOrderCountSuccessEvent value)?
        salesOrderCountSuccessEvent,
    TResult? Function(SalesOrderCountFailedEvent value)?
        salesOrderCountFailedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SalesOrderCountSuccessEvent value)?
        salesOrderCountSuccessEvent,
    TResult Function(SalesOrderCountFailedEvent value)?
        salesOrderCountFailedEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesOrderCountEventCopyWith<$Res> {
  factory $SalesOrderCountEventCopyWith(SalesOrderCountEvent value,
          $Res Function(SalesOrderCountEvent) then) =
      _$SalesOrderCountEventCopyWithImpl<$Res, SalesOrderCountEvent>;
}

/// @nodoc
class _$SalesOrderCountEventCopyWithImpl<$Res,
        $Val extends SalesOrderCountEvent>
    implements $SalesOrderCountEventCopyWith<$Res> {
  _$SalesOrderCountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SalesOrderCountSuccessEventImplCopyWith<$Res> {
  factory _$$SalesOrderCountSuccessEventImplCopyWith(
          _$SalesOrderCountSuccessEventImpl value,
          $Res Function(_$SalesOrderCountSuccessEventImpl) then) =
      __$$SalesOrderCountSuccessEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userID});
}

/// @nodoc
class __$$SalesOrderCountSuccessEventImplCopyWithImpl<$Res>
    extends _$SalesOrderCountEventCopyWithImpl<$Res,
        _$SalesOrderCountSuccessEventImpl>
    implements _$$SalesOrderCountSuccessEventImplCopyWith<$Res> {
  __$$SalesOrderCountSuccessEventImplCopyWithImpl(
      _$SalesOrderCountSuccessEventImpl _value,
      $Res Function(_$SalesOrderCountSuccessEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
  }) {
    return _then(_$SalesOrderCountSuccessEventImpl(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SalesOrderCountSuccessEventImpl implements SalesOrderCountSuccessEvent {
  const _$SalesOrderCountSuccessEventImpl({required this.userID});

  @override
  final String userID;

  @override
  String toString() {
    return 'SalesOrderCountEvent.salesOrderCountSuccessEvent(userID: $userID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesOrderCountSuccessEventImpl &&
            (identical(other.userID, userID) || other.userID == userID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesOrderCountSuccessEventImplCopyWith<_$SalesOrderCountSuccessEventImpl>
      get copyWith => __$$SalesOrderCountSuccessEventImplCopyWithImpl<
          _$SalesOrderCountSuccessEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID) salesOrderCountSuccessEvent,
    required TResult Function() salesOrderCountFailedEvent,
  }) {
    return salesOrderCountSuccessEvent(userID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID)? salesOrderCountSuccessEvent,
    TResult? Function()? salesOrderCountFailedEvent,
  }) {
    return salesOrderCountSuccessEvent?.call(userID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID)? salesOrderCountSuccessEvent,
    TResult Function()? salesOrderCountFailedEvent,
    required TResult orElse(),
  }) {
    if (salesOrderCountSuccessEvent != null) {
      return salesOrderCountSuccessEvent(userID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SalesOrderCountSuccessEvent value)
        salesOrderCountSuccessEvent,
    required TResult Function(SalesOrderCountFailedEvent value)
        salesOrderCountFailedEvent,
  }) {
    return salesOrderCountSuccessEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SalesOrderCountSuccessEvent value)?
        salesOrderCountSuccessEvent,
    TResult? Function(SalesOrderCountFailedEvent value)?
        salesOrderCountFailedEvent,
  }) {
    return salesOrderCountSuccessEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SalesOrderCountSuccessEvent value)?
        salesOrderCountSuccessEvent,
    TResult Function(SalesOrderCountFailedEvent value)?
        salesOrderCountFailedEvent,
    required TResult orElse(),
  }) {
    if (salesOrderCountSuccessEvent != null) {
      return salesOrderCountSuccessEvent(this);
    }
    return orElse();
  }
}

abstract class SalesOrderCountSuccessEvent implements SalesOrderCountEvent {
  const factory SalesOrderCountSuccessEvent({required final String userID}) =
      _$SalesOrderCountSuccessEventImpl;

  String get userID;
  @JsonKey(ignore: true)
  _$$SalesOrderCountSuccessEventImplCopyWith<_$SalesOrderCountSuccessEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SalesOrderCountFailedEventImplCopyWith<$Res> {
  factory _$$SalesOrderCountFailedEventImplCopyWith(
          _$SalesOrderCountFailedEventImpl value,
          $Res Function(_$SalesOrderCountFailedEventImpl) then) =
      __$$SalesOrderCountFailedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SalesOrderCountFailedEventImplCopyWithImpl<$Res>
    extends _$SalesOrderCountEventCopyWithImpl<$Res,
        _$SalesOrderCountFailedEventImpl>
    implements _$$SalesOrderCountFailedEventImplCopyWith<$Res> {
  __$$SalesOrderCountFailedEventImplCopyWithImpl(
      _$SalesOrderCountFailedEventImpl _value,
      $Res Function(_$SalesOrderCountFailedEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SalesOrderCountFailedEventImpl implements SalesOrderCountFailedEvent {
  const _$SalesOrderCountFailedEventImpl();

  @override
  String toString() {
    return 'SalesOrderCountEvent.salesOrderCountFailedEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesOrderCountFailedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID) salesOrderCountSuccessEvent,
    required TResult Function() salesOrderCountFailedEvent,
  }) {
    return salesOrderCountFailedEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID)? salesOrderCountSuccessEvent,
    TResult? Function()? salesOrderCountFailedEvent,
  }) {
    return salesOrderCountFailedEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID)? salesOrderCountSuccessEvent,
    TResult Function()? salesOrderCountFailedEvent,
    required TResult orElse(),
  }) {
    if (salesOrderCountFailedEvent != null) {
      return salesOrderCountFailedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SalesOrderCountSuccessEvent value)
        salesOrderCountSuccessEvent,
    required TResult Function(SalesOrderCountFailedEvent value)
        salesOrderCountFailedEvent,
  }) {
    return salesOrderCountFailedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SalesOrderCountSuccessEvent value)?
        salesOrderCountSuccessEvent,
    TResult? Function(SalesOrderCountFailedEvent value)?
        salesOrderCountFailedEvent,
  }) {
    return salesOrderCountFailedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SalesOrderCountSuccessEvent value)?
        salesOrderCountSuccessEvent,
    TResult Function(SalesOrderCountFailedEvent value)?
        salesOrderCountFailedEvent,
    required TResult orElse(),
  }) {
    if (salesOrderCountFailedEvent != null) {
      return salesOrderCountFailedEvent(this);
    }
    return orElse();
  }
}

abstract class SalesOrderCountFailedEvent implements SalesOrderCountEvent {
  const factory SalesOrderCountFailedEvent() = _$SalesOrderCountFailedEventImpl;
}

/// @nodoc
mixin _$SalesOrderCountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SalesOderCountModel? salesord)
        salesOrderCountSuccessState,
    required TResult Function() salesOrderCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SalesOderCountModel? salesord)?
        salesOrderCountSuccessState,
    TResult? Function()? salesOrderCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SalesOderCountModel? salesord)?
        salesOrderCountSuccessState,
    TResult Function()? salesOrderCountFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SalesOrderCountSuccessState value)
        salesOrderCountSuccessState,
    required TResult Function(SalesOrderCountFailedState value)
        salesOrderCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SalesOrderCountSuccessState value)?
        salesOrderCountSuccessState,
    TResult? Function(SalesOrderCountFailedState value)?
        salesOrderCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SalesOrderCountSuccessState value)?
        salesOrderCountSuccessState,
    TResult Function(SalesOrderCountFailedState value)?
        salesOrderCountFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesOrderCountStateCopyWith<$Res> {
  factory $SalesOrderCountStateCopyWith(SalesOrderCountState value,
          $Res Function(SalesOrderCountState) then) =
      _$SalesOrderCountStateCopyWithImpl<$Res, SalesOrderCountState>;
}

/// @nodoc
class _$SalesOrderCountStateCopyWithImpl<$Res,
        $Val extends SalesOrderCountState>
    implements $SalesOrderCountStateCopyWith<$Res> {
  _$SalesOrderCountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SalesOrderCountSuccessStateImplCopyWith<$Res> {
  factory _$$SalesOrderCountSuccessStateImplCopyWith(
          _$SalesOrderCountSuccessStateImpl value,
          $Res Function(_$SalesOrderCountSuccessStateImpl) then) =
      __$$SalesOrderCountSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SalesOderCountModel? salesord});
}

/// @nodoc
class __$$SalesOrderCountSuccessStateImplCopyWithImpl<$Res>
    extends _$SalesOrderCountStateCopyWithImpl<$Res,
        _$SalesOrderCountSuccessStateImpl>
    implements _$$SalesOrderCountSuccessStateImplCopyWith<$Res> {
  __$$SalesOrderCountSuccessStateImplCopyWithImpl(
      _$SalesOrderCountSuccessStateImpl _value,
      $Res Function(_$SalesOrderCountSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salesord = freezed,
  }) {
    return _then(_$SalesOrderCountSuccessStateImpl(
      salesord: freezed == salesord
          ? _value.salesord
          : salesord // ignore: cast_nullable_to_non_nullable
              as SalesOderCountModel?,
    ));
  }
}

/// @nodoc

class _$SalesOrderCountSuccessStateImpl implements SalesOrderCountSuccessState {
  const _$SalesOrderCountSuccessStateImpl({required this.salesord});

  @override
  final SalesOderCountModel? salesord;

  @override
  String toString() {
    return 'SalesOrderCountState.salesOrderCountSuccessState(salesord: $salesord)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesOrderCountSuccessStateImpl &&
            (identical(other.salesord, salesord) ||
                other.salesord == salesord));
  }

  @override
  int get hashCode => Object.hash(runtimeType, salesord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesOrderCountSuccessStateImplCopyWith<_$SalesOrderCountSuccessStateImpl>
      get copyWith => __$$SalesOrderCountSuccessStateImplCopyWithImpl<
          _$SalesOrderCountSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SalesOderCountModel? salesord)
        salesOrderCountSuccessState,
    required TResult Function() salesOrderCountFailedState,
  }) {
    return salesOrderCountSuccessState(salesord);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SalesOderCountModel? salesord)?
        salesOrderCountSuccessState,
    TResult? Function()? salesOrderCountFailedState,
  }) {
    return salesOrderCountSuccessState?.call(salesord);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SalesOderCountModel? salesord)?
        salesOrderCountSuccessState,
    TResult Function()? salesOrderCountFailedState,
    required TResult orElse(),
  }) {
    if (salesOrderCountSuccessState != null) {
      return salesOrderCountSuccessState(salesord);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SalesOrderCountSuccessState value)
        salesOrderCountSuccessState,
    required TResult Function(SalesOrderCountFailedState value)
        salesOrderCountFailedState,
  }) {
    return salesOrderCountSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SalesOrderCountSuccessState value)?
        salesOrderCountSuccessState,
    TResult? Function(SalesOrderCountFailedState value)?
        salesOrderCountFailedState,
  }) {
    return salesOrderCountSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SalesOrderCountSuccessState value)?
        salesOrderCountSuccessState,
    TResult Function(SalesOrderCountFailedState value)?
        salesOrderCountFailedState,
    required TResult orElse(),
  }) {
    if (salesOrderCountSuccessState != null) {
      return salesOrderCountSuccessState(this);
    }
    return orElse();
  }
}

abstract class SalesOrderCountSuccessState implements SalesOrderCountState {
  const factory SalesOrderCountSuccessState(
          {required final SalesOderCountModel? salesord}) =
      _$SalesOrderCountSuccessStateImpl;

  SalesOderCountModel? get salesord;
  @JsonKey(ignore: true)
  _$$SalesOrderCountSuccessStateImplCopyWith<_$SalesOrderCountSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SalesOrderCountFailedStateImplCopyWith<$Res> {
  factory _$$SalesOrderCountFailedStateImplCopyWith(
          _$SalesOrderCountFailedStateImpl value,
          $Res Function(_$SalesOrderCountFailedStateImpl) then) =
      __$$SalesOrderCountFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SalesOrderCountFailedStateImplCopyWithImpl<$Res>
    extends _$SalesOrderCountStateCopyWithImpl<$Res,
        _$SalesOrderCountFailedStateImpl>
    implements _$$SalesOrderCountFailedStateImplCopyWith<$Res> {
  __$$SalesOrderCountFailedStateImplCopyWithImpl(
      _$SalesOrderCountFailedStateImpl _value,
      $Res Function(_$SalesOrderCountFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SalesOrderCountFailedStateImpl implements SalesOrderCountFailedState {
  const _$SalesOrderCountFailedStateImpl();

  @override
  String toString() {
    return 'SalesOrderCountState.salesOrderCountFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesOrderCountFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SalesOderCountModel? salesord)
        salesOrderCountSuccessState,
    required TResult Function() salesOrderCountFailedState,
  }) {
    return salesOrderCountFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SalesOderCountModel? salesord)?
        salesOrderCountSuccessState,
    TResult? Function()? salesOrderCountFailedState,
  }) {
    return salesOrderCountFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SalesOderCountModel? salesord)?
        salesOrderCountSuccessState,
    TResult Function()? salesOrderCountFailedState,
    required TResult orElse(),
  }) {
    if (salesOrderCountFailedState != null) {
      return salesOrderCountFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SalesOrderCountSuccessState value)
        salesOrderCountSuccessState,
    required TResult Function(SalesOrderCountFailedState value)
        salesOrderCountFailedState,
  }) {
    return salesOrderCountFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SalesOrderCountSuccessState value)?
        salesOrderCountSuccessState,
    TResult? Function(SalesOrderCountFailedState value)?
        salesOrderCountFailedState,
  }) {
    return salesOrderCountFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SalesOrderCountSuccessState value)?
        salesOrderCountSuccessState,
    TResult Function(SalesOrderCountFailedState value)?
        salesOrderCountFailedState,
    required TResult orElse(),
  }) {
    if (salesOrderCountFailedState != null) {
      return salesOrderCountFailedState(this);
    }
    return orElse();
  }
}

abstract class SalesOrderCountFailedState implements SalesOrderCountState {
  const factory SalesOrderCountFailedState() = _$SalesOrderCountFailedStateImpl;
}
