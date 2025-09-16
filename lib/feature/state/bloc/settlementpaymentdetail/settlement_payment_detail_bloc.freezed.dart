// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settlement_payment_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettlementPaymentDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getPaymentDetailEvent,
    required TResult Function() clearPaymentDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getPaymentDetailEvent,
    TResult? Function()? clearPaymentDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getPaymentDetailEvent,
    TResult Function()? clearPaymentDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPaymentDetailEvent value)
        getPaymentDetailEvent,
    required TResult Function(ClearPaymentDetailEvent value)
        clearPaymentDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPaymentDetailEvent value)? getPaymentDetailEvent,
    TResult? Function(ClearPaymentDetailEvent value)? clearPaymentDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPaymentDetailEvent value)? getPaymentDetailEvent,
    TResult Function(ClearPaymentDetailEvent value)? clearPaymentDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettlementPaymentDetailEventCopyWith<$Res> {
  factory $SettlementPaymentDetailEventCopyWith(
          SettlementPaymentDetailEvent value,
          $Res Function(SettlementPaymentDetailEvent) then) =
      _$SettlementPaymentDetailEventCopyWithImpl<$Res,
          SettlementPaymentDetailEvent>;
}

/// @nodoc
class _$SettlementPaymentDetailEventCopyWithImpl<$Res,
        $Val extends SettlementPaymentDetailEvent>
    implements $SettlementPaymentDetailEventCopyWith<$Res> {
  _$SettlementPaymentDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettlementPaymentDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetPaymentDetailEventImplCopyWith<$Res> {
  factory _$$GetPaymentDetailEventImplCopyWith(
          _$GetPaymentDetailEventImpl value,
          $Res Function(_$GetPaymentDetailEventImpl) then) =
      __$$GetPaymentDetailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String udpID});
}

/// @nodoc
class __$$GetPaymentDetailEventImplCopyWithImpl<$Res>
    extends _$SettlementPaymentDetailEventCopyWithImpl<$Res,
        _$GetPaymentDetailEventImpl>
    implements _$$GetPaymentDetailEventImplCopyWith<$Res> {
  __$$GetPaymentDetailEventImplCopyWithImpl(_$GetPaymentDetailEventImpl _value,
      $Res Function(_$GetPaymentDetailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettlementPaymentDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? udpID = null,
  }) {
    return _then(_$GetPaymentDetailEventImpl(
      udpID: null == udpID
          ? _value.udpID
          : udpID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPaymentDetailEventImpl implements GetPaymentDetailEvent {
  const _$GetPaymentDetailEventImpl({required this.udpID});

  @override
  final String udpID;

  @override
  String toString() {
    return 'SettlementPaymentDetailEvent.getPaymentDetailEvent(udpID: $udpID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPaymentDetailEventImpl &&
            (identical(other.udpID, udpID) || other.udpID == udpID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, udpID);

  /// Create a copy of SettlementPaymentDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPaymentDetailEventImplCopyWith<_$GetPaymentDetailEventImpl>
      get copyWith => __$$GetPaymentDetailEventImplCopyWithImpl<
          _$GetPaymentDetailEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getPaymentDetailEvent,
    required TResult Function() clearPaymentDetailEvent,
  }) {
    return getPaymentDetailEvent(udpID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getPaymentDetailEvent,
    TResult? Function()? clearPaymentDetailEvent,
  }) {
    return getPaymentDetailEvent?.call(udpID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getPaymentDetailEvent,
    TResult Function()? clearPaymentDetailEvent,
    required TResult orElse(),
  }) {
    if (getPaymentDetailEvent != null) {
      return getPaymentDetailEvent(udpID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPaymentDetailEvent value)
        getPaymentDetailEvent,
    required TResult Function(ClearPaymentDetailEvent value)
        clearPaymentDetailEvent,
  }) {
    return getPaymentDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPaymentDetailEvent value)? getPaymentDetailEvent,
    TResult? Function(ClearPaymentDetailEvent value)? clearPaymentDetailEvent,
  }) {
    return getPaymentDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPaymentDetailEvent value)? getPaymentDetailEvent,
    TResult Function(ClearPaymentDetailEvent value)? clearPaymentDetailEvent,
    required TResult orElse(),
  }) {
    if (getPaymentDetailEvent != null) {
      return getPaymentDetailEvent(this);
    }
    return orElse();
  }
}

abstract class GetPaymentDetailEvent implements SettlementPaymentDetailEvent {
  const factory GetPaymentDetailEvent({required final String udpID}) =
      _$GetPaymentDetailEventImpl;

  String get udpID;

  /// Create a copy of SettlementPaymentDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPaymentDetailEventImplCopyWith<_$GetPaymentDetailEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearPaymentDetailEventImplCopyWith<$Res> {
  factory _$$ClearPaymentDetailEventImplCopyWith(
          _$ClearPaymentDetailEventImpl value,
          $Res Function(_$ClearPaymentDetailEventImpl) then) =
      __$$ClearPaymentDetailEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPaymentDetailEventImplCopyWithImpl<$Res>
    extends _$SettlementPaymentDetailEventCopyWithImpl<$Res,
        _$ClearPaymentDetailEventImpl>
    implements _$$ClearPaymentDetailEventImplCopyWith<$Res> {
  __$$ClearPaymentDetailEventImplCopyWithImpl(
      _$ClearPaymentDetailEventImpl _value,
      $Res Function(_$ClearPaymentDetailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettlementPaymentDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearPaymentDetailEventImpl implements ClearPaymentDetailEvent {
  const _$ClearPaymentDetailEventImpl();

  @override
  String toString() {
    return 'SettlementPaymentDetailEvent.clearPaymentDetailEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearPaymentDetailEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getPaymentDetailEvent,
    required TResult Function() clearPaymentDetailEvent,
  }) {
    return clearPaymentDetailEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getPaymentDetailEvent,
    TResult? Function()? clearPaymentDetailEvent,
  }) {
    return clearPaymentDetailEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getPaymentDetailEvent,
    TResult Function()? clearPaymentDetailEvent,
    required TResult orElse(),
  }) {
    if (clearPaymentDetailEvent != null) {
      return clearPaymentDetailEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPaymentDetailEvent value)
        getPaymentDetailEvent,
    required TResult Function(ClearPaymentDetailEvent value)
        clearPaymentDetailEvent,
  }) {
    return clearPaymentDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPaymentDetailEvent value)? getPaymentDetailEvent,
    TResult? Function(ClearPaymentDetailEvent value)? clearPaymentDetailEvent,
  }) {
    return clearPaymentDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPaymentDetailEvent value)? getPaymentDetailEvent,
    TResult Function(ClearPaymentDetailEvent value)? clearPaymentDetailEvent,
    required TResult orElse(),
  }) {
    if (clearPaymentDetailEvent != null) {
      return clearPaymentDetailEvent(this);
    }
    return orElse();
  }
}

abstract class ClearPaymentDetailEvent implements SettlementPaymentDetailEvent {
  const factory ClearPaymentDetailEvent() = _$ClearPaymentDetailEventImpl;
}

/// @nodoc
mixin _$SettlementPaymentDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SettlementPaymentDetailModel>? payment)
        getPaymentDetailState,
    required TResult Function() paymentDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SettlementPaymentDetailModel>? payment)?
        getPaymentDetailState,
    TResult? Function()? paymentDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SettlementPaymentDetailModel>? payment)?
        getPaymentDetailState,
    TResult Function()? paymentDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPaymentDetailState value)
        getPaymentDetailState,
    required TResult Function(PaymentDetailFailedState value)
        paymentDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPaymentDetailState value)? getPaymentDetailState,
    TResult? Function(PaymentDetailFailedState value)? paymentDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPaymentDetailState value)? getPaymentDetailState,
    TResult Function(PaymentDetailFailedState value)? paymentDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettlementPaymentDetailStateCopyWith<$Res> {
  factory $SettlementPaymentDetailStateCopyWith(
          SettlementPaymentDetailState value,
          $Res Function(SettlementPaymentDetailState) then) =
      _$SettlementPaymentDetailStateCopyWithImpl<$Res,
          SettlementPaymentDetailState>;
}

/// @nodoc
class _$SettlementPaymentDetailStateCopyWithImpl<$Res,
        $Val extends SettlementPaymentDetailState>
    implements $SettlementPaymentDetailStateCopyWith<$Res> {
  _$SettlementPaymentDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettlementPaymentDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetPaymentDetailStateImplCopyWith<$Res> {
  factory _$$GetPaymentDetailStateImplCopyWith(
          _$GetPaymentDetailStateImpl value,
          $Res Function(_$GetPaymentDetailStateImpl) then) =
      __$$GetPaymentDetailStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SettlementPaymentDetailModel>? payment});
}

/// @nodoc
class __$$GetPaymentDetailStateImplCopyWithImpl<$Res>
    extends _$SettlementPaymentDetailStateCopyWithImpl<$Res,
        _$GetPaymentDetailStateImpl>
    implements _$$GetPaymentDetailStateImplCopyWith<$Res> {
  __$$GetPaymentDetailStateImplCopyWithImpl(_$GetPaymentDetailStateImpl _value,
      $Res Function(_$GetPaymentDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettlementPaymentDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payment = freezed,
  }) {
    return _then(_$GetPaymentDetailStateImpl(
      payment: freezed == payment
          ? _value._payment
          : payment // ignore: cast_nullable_to_non_nullable
              as List<SettlementPaymentDetailModel>?,
    ));
  }
}

/// @nodoc

class _$GetPaymentDetailStateImpl implements GetPaymentDetailState {
  const _$GetPaymentDetailStateImpl(
      {required final List<SettlementPaymentDetailModel>? payment})
      : _payment = payment;

  final List<SettlementPaymentDetailModel>? _payment;
  @override
  List<SettlementPaymentDetailModel>? get payment {
    final value = _payment;
    if (value == null) return null;
    if (_payment is EqualUnmodifiableListView) return _payment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SettlementPaymentDetailState.getPaymentDetailState(payment: $payment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPaymentDetailStateImpl &&
            const DeepCollectionEquality().equals(other._payment, _payment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_payment));

  /// Create a copy of SettlementPaymentDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPaymentDetailStateImplCopyWith<_$GetPaymentDetailStateImpl>
      get copyWith => __$$GetPaymentDetailStateImplCopyWithImpl<
          _$GetPaymentDetailStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SettlementPaymentDetailModel>? payment)
        getPaymentDetailState,
    required TResult Function() paymentDetailFailedState,
  }) {
    return getPaymentDetailState(payment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SettlementPaymentDetailModel>? payment)?
        getPaymentDetailState,
    TResult? Function()? paymentDetailFailedState,
  }) {
    return getPaymentDetailState?.call(payment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SettlementPaymentDetailModel>? payment)?
        getPaymentDetailState,
    TResult Function()? paymentDetailFailedState,
    required TResult orElse(),
  }) {
    if (getPaymentDetailState != null) {
      return getPaymentDetailState(payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPaymentDetailState value)
        getPaymentDetailState,
    required TResult Function(PaymentDetailFailedState value)
        paymentDetailFailedState,
  }) {
    return getPaymentDetailState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPaymentDetailState value)? getPaymentDetailState,
    TResult? Function(PaymentDetailFailedState value)? paymentDetailFailedState,
  }) {
    return getPaymentDetailState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPaymentDetailState value)? getPaymentDetailState,
    TResult Function(PaymentDetailFailedState value)? paymentDetailFailedState,
    required TResult orElse(),
  }) {
    if (getPaymentDetailState != null) {
      return getPaymentDetailState(this);
    }
    return orElse();
  }
}

abstract class GetPaymentDetailState implements SettlementPaymentDetailState {
  const factory GetPaymentDetailState(
          {required final List<SettlementPaymentDetailModel>? payment}) =
      _$GetPaymentDetailStateImpl;

  List<SettlementPaymentDetailModel>? get payment;

  /// Create a copy of SettlementPaymentDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPaymentDetailStateImplCopyWith<_$GetPaymentDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentDetailFailedStateImplCopyWith<$Res> {
  factory _$$PaymentDetailFailedStateImplCopyWith(
          _$PaymentDetailFailedStateImpl value,
          $Res Function(_$PaymentDetailFailedStateImpl) then) =
      __$$PaymentDetailFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentDetailFailedStateImplCopyWithImpl<$Res>
    extends _$SettlementPaymentDetailStateCopyWithImpl<$Res,
        _$PaymentDetailFailedStateImpl>
    implements _$$PaymentDetailFailedStateImplCopyWith<$Res> {
  __$$PaymentDetailFailedStateImplCopyWithImpl(
      _$PaymentDetailFailedStateImpl _value,
      $Res Function(_$PaymentDetailFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettlementPaymentDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PaymentDetailFailedStateImpl implements PaymentDetailFailedState {
  const _$PaymentDetailFailedStateImpl();

  @override
  String toString() {
    return 'SettlementPaymentDetailState.paymentDetailFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentDetailFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SettlementPaymentDetailModel>? payment)
        getPaymentDetailState,
    required TResult Function() paymentDetailFailedState,
  }) {
    return paymentDetailFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SettlementPaymentDetailModel>? payment)?
        getPaymentDetailState,
    TResult? Function()? paymentDetailFailedState,
  }) {
    return paymentDetailFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SettlementPaymentDetailModel>? payment)?
        getPaymentDetailState,
    TResult Function()? paymentDetailFailedState,
    required TResult orElse(),
  }) {
    if (paymentDetailFailedState != null) {
      return paymentDetailFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPaymentDetailState value)
        getPaymentDetailState,
    required TResult Function(PaymentDetailFailedState value)
        paymentDetailFailedState,
  }) {
    return paymentDetailFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPaymentDetailState value)? getPaymentDetailState,
    TResult? Function(PaymentDetailFailedState value)? paymentDetailFailedState,
  }) {
    return paymentDetailFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPaymentDetailState value)? getPaymentDetailState,
    TResult Function(PaymentDetailFailedState value)? paymentDetailFailedState,
    required TResult orElse(),
  }) {
    if (paymentDetailFailedState != null) {
      return paymentDetailFailedState(this);
    }
    return orElse();
  }
}

abstract class PaymentDetailFailedState
    implements SettlementPaymentDetailState {
  const factory PaymentDetailFailedState() = _$PaymentDetailFailedStateImpl;
}
