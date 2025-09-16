// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settlement_pay_mode_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettlementPayModeDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getPaymodeDetailEvent,
    required TResult Function() clearPaymodeDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getPaymodeDetailEvent,
    TResult? Function()? clearPaymodeDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getPaymodeDetailEvent,
    TResult Function()? clearPaymodeDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPaymodeDetailEvent value)
        getPaymodeDetailEvent,
    required TResult Function(ClearPaymodeDetailEvent value)
        clearPaymodeDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPaymodeDetailEvent value)? getPaymodeDetailEvent,
    TResult? Function(ClearPaymodeDetailEvent value)? clearPaymodeDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPaymodeDetailEvent value)? getPaymodeDetailEvent,
    TResult Function(ClearPaymodeDetailEvent value)? clearPaymodeDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettlementPayModeDetailEventCopyWith<$Res> {
  factory $SettlementPayModeDetailEventCopyWith(
          SettlementPayModeDetailEvent value,
          $Res Function(SettlementPayModeDetailEvent) then) =
      _$SettlementPayModeDetailEventCopyWithImpl<$Res,
          SettlementPayModeDetailEvent>;
}

/// @nodoc
class _$SettlementPayModeDetailEventCopyWithImpl<$Res,
        $Val extends SettlementPayModeDetailEvent>
    implements $SettlementPayModeDetailEventCopyWith<$Res> {
  _$SettlementPayModeDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettlementPayModeDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetPaymodeDetailEventImplCopyWith<$Res> {
  factory _$$GetPaymodeDetailEventImplCopyWith(
          _$GetPaymodeDetailEventImpl value,
          $Res Function(_$GetPaymodeDetailEventImpl) then) =
      __$$GetPaymodeDetailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String udpID});
}

/// @nodoc
class __$$GetPaymodeDetailEventImplCopyWithImpl<$Res>
    extends _$SettlementPayModeDetailEventCopyWithImpl<$Res,
        _$GetPaymodeDetailEventImpl>
    implements _$$GetPaymodeDetailEventImplCopyWith<$Res> {
  __$$GetPaymodeDetailEventImplCopyWithImpl(_$GetPaymodeDetailEventImpl _value,
      $Res Function(_$GetPaymodeDetailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettlementPayModeDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? udpID = null,
  }) {
    return _then(_$GetPaymodeDetailEventImpl(
      udpID: null == udpID
          ? _value.udpID
          : udpID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPaymodeDetailEventImpl implements GetPaymodeDetailEvent {
  const _$GetPaymodeDetailEventImpl({required this.udpID});

  @override
  final String udpID;

  @override
  String toString() {
    return 'SettlementPayModeDetailEvent.getPaymodeDetailEvent(udpID: $udpID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPaymodeDetailEventImpl &&
            (identical(other.udpID, udpID) || other.udpID == udpID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, udpID);

  /// Create a copy of SettlementPayModeDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPaymodeDetailEventImplCopyWith<_$GetPaymodeDetailEventImpl>
      get copyWith => __$$GetPaymodeDetailEventImplCopyWithImpl<
          _$GetPaymodeDetailEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getPaymodeDetailEvent,
    required TResult Function() clearPaymodeDetailEvent,
  }) {
    return getPaymodeDetailEvent(udpID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getPaymodeDetailEvent,
    TResult? Function()? clearPaymodeDetailEvent,
  }) {
    return getPaymodeDetailEvent?.call(udpID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getPaymodeDetailEvent,
    TResult Function()? clearPaymodeDetailEvent,
    required TResult orElse(),
  }) {
    if (getPaymodeDetailEvent != null) {
      return getPaymodeDetailEvent(udpID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPaymodeDetailEvent value)
        getPaymodeDetailEvent,
    required TResult Function(ClearPaymodeDetailEvent value)
        clearPaymodeDetailEvent,
  }) {
    return getPaymodeDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPaymodeDetailEvent value)? getPaymodeDetailEvent,
    TResult? Function(ClearPaymodeDetailEvent value)? clearPaymodeDetailEvent,
  }) {
    return getPaymodeDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPaymodeDetailEvent value)? getPaymodeDetailEvent,
    TResult Function(ClearPaymodeDetailEvent value)? clearPaymodeDetailEvent,
    required TResult orElse(),
  }) {
    if (getPaymodeDetailEvent != null) {
      return getPaymodeDetailEvent(this);
    }
    return orElse();
  }
}

abstract class GetPaymodeDetailEvent implements SettlementPayModeDetailEvent {
  const factory GetPaymodeDetailEvent({required final String udpID}) =
      _$GetPaymodeDetailEventImpl;

  String get udpID;

  /// Create a copy of SettlementPayModeDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPaymodeDetailEventImplCopyWith<_$GetPaymodeDetailEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearPaymodeDetailEventImplCopyWith<$Res> {
  factory _$$ClearPaymodeDetailEventImplCopyWith(
          _$ClearPaymodeDetailEventImpl value,
          $Res Function(_$ClearPaymodeDetailEventImpl) then) =
      __$$ClearPaymodeDetailEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPaymodeDetailEventImplCopyWithImpl<$Res>
    extends _$SettlementPayModeDetailEventCopyWithImpl<$Res,
        _$ClearPaymodeDetailEventImpl>
    implements _$$ClearPaymodeDetailEventImplCopyWith<$Res> {
  __$$ClearPaymodeDetailEventImplCopyWithImpl(
      _$ClearPaymodeDetailEventImpl _value,
      $Res Function(_$ClearPaymodeDetailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettlementPayModeDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearPaymodeDetailEventImpl implements ClearPaymodeDetailEvent {
  const _$ClearPaymodeDetailEventImpl();

  @override
  String toString() {
    return 'SettlementPayModeDetailEvent.clearPaymodeDetailEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearPaymodeDetailEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getPaymodeDetailEvent,
    required TResult Function() clearPaymodeDetailEvent,
  }) {
    return clearPaymodeDetailEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getPaymodeDetailEvent,
    TResult? Function()? clearPaymodeDetailEvent,
  }) {
    return clearPaymodeDetailEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getPaymodeDetailEvent,
    TResult Function()? clearPaymodeDetailEvent,
    required TResult orElse(),
  }) {
    if (clearPaymodeDetailEvent != null) {
      return clearPaymodeDetailEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPaymodeDetailEvent value)
        getPaymodeDetailEvent,
    required TResult Function(ClearPaymodeDetailEvent value)
        clearPaymodeDetailEvent,
  }) {
    return clearPaymodeDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPaymodeDetailEvent value)? getPaymodeDetailEvent,
    TResult? Function(ClearPaymodeDetailEvent value)? clearPaymodeDetailEvent,
  }) {
    return clearPaymodeDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPaymodeDetailEvent value)? getPaymodeDetailEvent,
    TResult Function(ClearPaymodeDetailEvent value)? clearPaymodeDetailEvent,
    required TResult orElse(),
  }) {
    if (clearPaymodeDetailEvent != null) {
      return clearPaymodeDetailEvent(this);
    }
    return orElse();
  }
}

abstract class ClearPaymodeDetailEvent implements SettlementPayModeDetailEvent {
  const factory ClearPaymodeDetailEvent() = _$ClearPaymodeDetailEventImpl;
}

/// @nodoc
mixin _$SettlementPayModeDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<SettlemenetApprovalPayModeDetailModel>? paymode)
        getSettlementPayModeDetailState,
    required TResult Function() paymodeDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SettlemenetApprovalPayModeDetailModel>? paymode)?
        getSettlementPayModeDetailState,
    TResult? Function()? paymodeDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SettlemenetApprovalPayModeDetailModel>? paymode)?
        getSettlementPayModeDetailState,
    TResult Function()? paymodeDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSettlementPayModeDetailState value)
        getSettlementPayModeDetailState,
    required TResult Function(PaymodeDetailFailedState value)
        paymodeDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSettlementPayModeDetailState value)?
        getSettlementPayModeDetailState,
    TResult? Function(PaymodeDetailFailedState value)? paymodeDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSettlementPayModeDetailState value)?
        getSettlementPayModeDetailState,
    TResult Function(PaymodeDetailFailedState value)? paymodeDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettlementPayModeDetailStateCopyWith<$Res> {
  factory $SettlementPayModeDetailStateCopyWith(
          SettlementPayModeDetailState value,
          $Res Function(SettlementPayModeDetailState) then) =
      _$SettlementPayModeDetailStateCopyWithImpl<$Res,
          SettlementPayModeDetailState>;
}

/// @nodoc
class _$SettlementPayModeDetailStateCopyWithImpl<$Res,
        $Val extends SettlementPayModeDetailState>
    implements $SettlementPayModeDetailStateCopyWith<$Res> {
  _$SettlementPayModeDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettlementPayModeDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetSettlementPayModeDetailStateImplCopyWith<$Res> {
  factory _$$GetSettlementPayModeDetailStateImplCopyWith(
          _$GetSettlementPayModeDetailStateImpl value,
          $Res Function(_$GetSettlementPayModeDetailStateImpl) then) =
      __$$GetSettlementPayModeDetailStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SettlemenetApprovalPayModeDetailModel>? paymode});
}

/// @nodoc
class __$$GetSettlementPayModeDetailStateImplCopyWithImpl<$Res>
    extends _$SettlementPayModeDetailStateCopyWithImpl<$Res,
        _$GetSettlementPayModeDetailStateImpl>
    implements _$$GetSettlementPayModeDetailStateImplCopyWith<$Res> {
  __$$GetSettlementPayModeDetailStateImplCopyWithImpl(
      _$GetSettlementPayModeDetailStateImpl _value,
      $Res Function(_$GetSettlementPayModeDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettlementPayModeDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymode = freezed,
  }) {
    return _then(_$GetSettlementPayModeDetailStateImpl(
      paymode: freezed == paymode
          ? _value._paymode
          : paymode // ignore: cast_nullable_to_non_nullable
              as List<SettlemenetApprovalPayModeDetailModel>?,
    ));
  }
}

/// @nodoc

class _$GetSettlementPayModeDetailStateImpl
    implements GetSettlementPayModeDetailState {
  const _$GetSettlementPayModeDetailStateImpl(
      {required final List<SettlemenetApprovalPayModeDetailModel>? paymode})
      : _paymode = paymode;

  final List<SettlemenetApprovalPayModeDetailModel>? _paymode;
  @override
  List<SettlemenetApprovalPayModeDetailModel>? get paymode {
    final value = _paymode;
    if (value == null) return null;
    if (_paymode is EqualUnmodifiableListView) return _paymode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SettlementPayModeDetailState.getSettlementPayModeDetailState(paymode: $paymode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSettlementPayModeDetailStateImpl &&
            const DeepCollectionEquality().equals(other._paymode, _paymode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_paymode));

  /// Create a copy of SettlementPayModeDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSettlementPayModeDetailStateImplCopyWith<
          _$GetSettlementPayModeDetailStateImpl>
      get copyWith => __$$GetSettlementPayModeDetailStateImplCopyWithImpl<
          _$GetSettlementPayModeDetailStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<SettlemenetApprovalPayModeDetailModel>? paymode)
        getSettlementPayModeDetailState,
    required TResult Function() paymodeDetailFailedState,
  }) {
    return getSettlementPayModeDetailState(paymode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SettlemenetApprovalPayModeDetailModel>? paymode)?
        getSettlementPayModeDetailState,
    TResult? Function()? paymodeDetailFailedState,
  }) {
    return getSettlementPayModeDetailState?.call(paymode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SettlemenetApprovalPayModeDetailModel>? paymode)?
        getSettlementPayModeDetailState,
    TResult Function()? paymodeDetailFailedState,
    required TResult orElse(),
  }) {
    if (getSettlementPayModeDetailState != null) {
      return getSettlementPayModeDetailState(paymode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSettlementPayModeDetailState value)
        getSettlementPayModeDetailState,
    required TResult Function(PaymodeDetailFailedState value)
        paymodeDetailFailedState,
  }) {
    return getSettlementPayModeDetailState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSettlementPayModeDetailState value)?
        getSettlementPayModeDetailState,
    TResult? Function(PaymodeDetailFailedState value)? paymodeDetailFailedState,
  }) {
    return getSettlementPayModeDetailState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSettlementPayModeDetailState value)?
        getSettlementPayModeDetailState,
    TResult Function(PaymodeDetailFailedState value)? paymodeDetailFailedState,
    required TResult orElse(),
  }) {
    if (getSettlementPayModeDetailState != null) {
      return getSettlementPayModeDetailState(this);
    }
    return orElse();
  }
}

abstract class GetSettlementPayModeDetailState
    implements SettlementPayModeDetailState {
  const factory GetSettlementPayModeDetailState(
      {required final List<SettlemenetApprovalPayModeDetailModel>?
          paymode}) = _$GetSettlementPayModeDetailStateImpl;

  List<SettlemenetApprovalPayModeDetailModel>? get paymode;

  /// Create a copy of SettlementPayModeDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSettlementPayModeDetailStateImplCopyWith<
          _$GetSettlementPayModeDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymodeDetailFailedStateImplCopyWith<$Res> {
  factory _$$PaymodeDetailFailedStateImplCopyWith(
          _$PaymodeDetailFailedStateImpl value,
          $Res Function(_$PaymodeDetailFailedStateImpl) then) =
      __$$PaymodeDetailFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymodeDetailFailedStateImplCopyWithImpl<$Res>
    extends _$SettlementPayModeDetailStateCopyWithImpl<$Res,
        _$PaymodeDetailFailedStateImpl>
    implements _$$PaymodeDetailFailedStateImplCopyWith<$Res> {
  __$$PaymodeDetailFailedStateImplCopyWithImpl(
      _$PaymodeDetailFailedStateImpl _value,
      $Res Function(_$PaymodeDetailFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettlementPayModeDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PaymodeDetailFailedStateImpl implements PaymodeDetailFailedState {
  const _$PaymodeDetailFailedStateImpl();

  @override
  String toString() {
    return 'SettlementPayModeDetailState.paymodeDetailFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymodeDetailFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<SettlemenetApprovalPayModeDetailModel>? paymode)
        getSettlementPayModeDetailState,
    required TResult Function() paymodeDetailFailedState,
  }) {
    return paymodeDetailFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SettlemenetApprovalPayModeDetailModel>? paymode)?
        getSettlementPayModeDetailState,
    TResult? Function()? paymodeDetailFailedState,
  }) {
    return paymodeDetailFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SettlemenetApprovalPayModeDetailModel>? paymode)?
        getSettlementPayModeDetailState,
    TResult Function()? paymodeDetailFailedState,
    required TResult orElse(),
  }) {
    if (paymodeDetailFailedState != null) {
      return paymodeDetailFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSettlementPayModeDetailState value)
        getSettlementPayModeDetailState,
    required TResult Function(PaymodeDetailFailedState value)
        paymodeDetailFailedState,
  }) {
    return paymodeDetailFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSettlementPayModeDetailState value)?
        getSettlementPayModeDetailState,
    TResult? Function(PaymodeDetailFailedState value)? paymodeDetailFailedState,
  }) {
    return paymodeDetailFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSettlementPayModeDetailState value)?
        getSettlementPayModeDetailState,
    TResult Function(PaymodeDetailFailedState value)? paymodeDetailFailedState,
    required TResult orElse(),
  }) {
    if (paymodeDetailFailedState != null) {
      return paymodeDetailFailedState(this);
    }
    return orElse();
  }
}

abstract class PaymodeDetailFailedState
    implements SettlementPayModeDetailState {
  const factory PaymodeDetailFailedState() = _$PaymodeDetailFailedStateImpl;
}
