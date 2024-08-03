// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settlement_cash_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettlementCashDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getCashDetailEvent,
    required TResult Function() clearCashDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getCashDetailEvent,
    TResult? Function()? clearCashDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getCashDetailEvent,
    TResult Function()? clearCashDetailsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCashDetailEvent value) getCashDetailEvent,
    required TResult Function(ClearCashDetailsEvent value)
        clearCashDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCashDetailEvent value)? getCashDetailEvent,
    TResult? Function(ClearCashDetailsEvent value)? clearCashDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCashDetailEvent value)? getCashDetailEvent,
    TResult Function(ClearCashDetailsEvent value)? clearCashDetailsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettlementCashDetailsEventCopyWith<$Res> {
  factory $SettlementCashDetailsEventCopyWith(SettlementCashDetailsEvent value,
          $Res Function(SettlementCashDetailsEvent) then) =
      _$SettlementCashDetailsEventCopyWithImpl<$Res,
          SettlementCashDetailsEvent>;
}

/// @nodoc
class _$SettlementCashDetailsEventCopyWithImpl<$Res,
        $Val extends SettlementCashDetailsEvent>
    implements $SettlementCashDetailsEventCopyWith<$Res> {
  _$SettlementCashDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCashDetailEventImplCopyWith<$Res> {
  factory _$$GetCashDetailEventImplCopyWith(_$GetCashDetailEventImpl value,
          $Res Function(_$GetCashDetailEventImpl) then) =
      __$$GetCashDetailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String udpID});
}

/// @nodoc
class __$$GetCashDetailEventImplCopyWithImpl<$Res>
    extends _$SettlementCashDetailsEventCopyWithImpl<$Res,
        _$GetCashDetailEventImpl>
    implements _$$GetCashDetailEventImplCopyWith<$Res> {
  __$$GetCashDetailEventImplCopyWithImpl(_$GetCashDetailEventImpl _value,
      $Res Function(_$GetCashDetailEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? udpID = null,
  }) {
    return _then(_$GetCashDetailEventImpl(
      udpID: null == udpID
          ? _value.udpID
          : udpID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCashDetailEventImpl implements GetCashDetailEvent {
  const _$GetCashDetailEventImpl({required this.udpID});

  @override
  final String udpID;

  @override
  String toString() {
    return 'SettlementCashDetailsEvent.getCashDetailEvent(udpID: $udpID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCashDetailEventImpl &&
            (identical(other.udpID, udpID) || other.udpID == udpID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, udpID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCashDetailEventImplCopyWith<_$GetCashDetailEventImpl> get copyWith =>
      __$$GetCashDetailEventImplCopyWithImpl<_$GetCashDetailEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getCashDetailEvent,
    required TResult Function() clearCashDetailsEvent,
  }) {
    return getCashDetailEvent(udpID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getCashDetailEvent,
    TResult? Function()? clearCashDetailsEvent,
  }) {
    return getCashDetailEvent?.call(udpID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getCashDetailEvent,
    TResult Function()? clearCashDetailsEvent,
    required TResult orElse(),
  }) {
    if (getCashDetailEvent != null) {
      return getCashDetailEvent(udpID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCashDetailEvent value) getCashDetailEvent,
    required TResult Function(ClearCashDetailsEvent value)
        clearCashDetailsEvent,
  }) {
    return getCashDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCashDetailEvent value)? getCashDetailEvent,
    TResult? Function(ClearCashDetailsEvent value)? clearCashDetailsEvent,
  }) {
    return getCashDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCashDetailEvent value)? getCashDetailEvent,
    TResult Function(ClearCashDetailsEvent value)? clearCashDetailsEvent,
    required TResult orElse(),
  }) {
    if (getCashDetailEvent != null) {
      return getCashDetailEvent(this);
    }
    return orElse();
  }
}

abstract class GetCashDetailEvent implements SettlementCashDetailsEvent {
  const factory GetCashDetailEvent({required final String udpID}) =
      _$GetCashDetailEventImpl;

  String get udpID;
  @JsonKey(ignore: true)
  _$$GetCashDetailEventImplCopyWith<_$GetCashDetailEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCashDetailsEventImplCopyWith<$Res> {
  factory _$$ClearCashDetailsEventImplCopyWith(
          _$ClearCashDetailsEventImpl value,
          $Res Function(_$ClearCashDetailsEventImpl) then) =
      __$$ClearCashDetailsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCashDetailsEventImplCopyWithImpl<$Res>
    extends _$SettlementCashDetailsEventCopyWithImpl<$Res,
        _$ClearCashDetailsEventImpl>
    implements _$$ClearCashDetailsEventImplCopyWith<$Res> {
  __$$ClearCashDetailsEventImplCopyWithImpl(_$ClearCashDetailsEventImpl _value,
      $Res Function(_$ClearCashDetailsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearCashDetailsEventImpl implements ClearCashDetailsEvent {
  const _$ClearCashDetailsEventImpl();

  @override
  String toString() {
    return 'SettlementCashDetailsEvent.clearCashDetailsEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearCashDetailsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getCashDetailEvent,
    required TResult Function() clearCashDetailsEvent,
  }) {
    return clearCashDetailsEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getCashDetailEvent,
    TResult? Function()? clearCashDetailsEvent,
  }) {
    return clearCashDetailsEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getCashDetailEvent,
    TResult Function()? clearCashDetailsEvent,
    required TResult orElse(),
  }) {
    if (clearCashDetailsEvent != null) {
      return clearCashDetailsEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCashDetailEvent value) getCashDetailEvent,
    required TResult Function(ClearCashDetailsEvent value)
        clearCashDetailsEvent,
  }) {
    return clearCashDetailsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCashDetailEvent value)? getCashDetailEvent,
    TResult? Function(ClearCashDetailsEvent value)? clearCashDetailsEvent,
  }) {
    return clearCashDetailsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCashDetailEvent value)? getCashDetailEvent,
    TResult Function(ClearCashDetailsEvent value)? clearCashDetailsEvent,
    required TResult orElse(),
  }) {
    if (clearCashDetailsEvent != null) {
      return clearCashDetailsEvent(this);
    }
    return orElse();
  }
}

abstract class ClearCashDetailsEvent implements SettlementCashDetailsEvent {
  const factory ClearCashDetailsEvent() = _$ClearCashDetailsEventImpl;
}

/// @nodoc
mixin _$SettlementCashDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettlemetApprovalcashDetailModel? cash)
        getCashDetailsState,
    required TResult Function() cashDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettlemetApprovalcashDetailModel? cash)?
        getCashDetailsState,
    TResult? Function()? cashDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettlemetApprovalcashDetailModel? cash)?
        getCashDetailsState,
    TResult Function()? cashDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCashDetailsState value) getCashDetailsState,
    required TResult Function(CashDetailFailedState value)
        cashDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCashDetailsState value)? getCashDetailsState,
    TResult? Function(CashDetailFailedState value)? cashDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCashDetailsState value)? getCashDetailsState,
    TResult Function(CashDetailFailedState value)? cashDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettlementCashDetailsStateCopyWith<$Res> {
  factory $SettlementCashDetailsStateCopyWith(SettlementCashDetailsState value,
          $Res Function(SettlementCashDetailsState) then) =
      _$SettlementCashDetailsStateCopyWithImpl<$Res,
          SettlementCashDetailsState>;
}

/// @nodoc
class _$SettlementCashDetailsStateCopyWithImpl<$Res,
        $Val extends SettlementCashDetailsState>
    implements $SettlementCashDetailsStateCopyWith<$Res> {
  _$SettlementCashDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCashDetailsStateImplCopyWith<$Res> {
  factory _$$GetCashDetailsStateImplCopyWith(_$GetCashDetailsStateImpl value,
          $Res Function(_$GetCashDetailsStateImpl) then) =
      __$$GetCashDetailsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SettlemetApprovalcashDetailModel? cash});
}

/// @nodoc
class __$$GetCashDetailsStateImplCopyWithImpl<$Res>
    extends _$SettlementCashDetailsStateCopyWithImpl<$Res,
        _$GetCashDetailsStateImpl>
    implements _$$GetCashDetailsStateImplCopyWith<$Res> {
  __$$GetCashDetailsStateImplCopyWithImpl(_$GetCashDetailsStateImpl _value,
      $Res Function(_$GetCashDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cash = freezed,
  }) {
    return _then(_$GetCashDetailsStateImpl(
      cash: freezed == cash
          ? _value.cash
          : cash // ignore: cast_nullable_to_non_nullable
              as SettlemetApprovalcashDetailModel?,
    ));
  }
}

/// @nodoc

class _$GetCashDetailsStateImpl implements GetCashDetailsState {
  const _$GetCashDetailsStateImpl({required this.cash});

  @override
  final SettlemetApprovalcashDetailModel? cash;

  @override
  String toString() {
    return 'SettlementCashDetailsState.getCashDetailsState(cash: $cash)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCashDetailsStateImpl &&
            (identical(other.cash, cash) || other.cash == cash));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cash);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCashDetailsStateImplCopyWith<_$GetCashDetailsStateImpl> get copyWith =>
      __$$GetCashDetailsStateImplCopyWithImpl<_$GetCashDetailsStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettlemetApprovalcashDetailModel? cash)
        getCashDetailsState,
    required TResult Function() cashDetailFailedState,
  }) {
    return getCashDetailsState(cash);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettlemetApprovalcashDetailModel? cash)?
        getCashDetailsState,
    TResult? Function()? cashDetailFailedState,
  }) {
    return getCashDetailsState?.call(cash);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettlemetApprovalcashDetailModel? cash)?
        getCashDetailsState,
    TResult Function()? cashDetailFailedState,
    required TResult orElse(),
  }) {
    if (getCashDetailsState != null) {
      return getCashDetailsState(cash);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCashDetailsState value) getCashDetailsState,
    required TResult Function(CashDetailFailedState value)
        cashDetailFailedState,
  }) {
    return getCashDetailsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCashDetailsState value)? getCashDetailsState,
    TResult? Function(CashDetailFailedState value)? cashDetailFailedState,
  }) {
    return getCashDetailsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCashDetailsState value)? getCashDetailsState,
    TResult Function(CashDetailFailedState value)? cashDetailFailedState,
    required TResult orElse(),
  }) {
    if (getCashDetailsState != null) {
      return getCashDetailsState(this);
    }
    return orElse();
  }
}

abstract class GetCashDetailsState implements SettlementCashDetailsState {
  const factory GetCashDetailsState(
          {required final SettlemetApprovalcashDetailModel? cash}) =
      _$GetCashDetailsStateImpl;

  SettlemetApprovalcashDetailModel? get cash;
  @JsonKey(ignore: true)
  _$$GetCashDetailsStateImplCopyWith<_$GetCashDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CashDetailFailedStateImplCopyWith<$Res> {
  factory _$$CashDetailFailedStateImplCopyWith(
          _$CashDetailFailedStateImpl value,
          $Res Function(_$CashDetailFailedStateImpl) then) =
      __$$CashDetailFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CashDetailFailedStateImplCopyWithImpl<$Res>
    extends _$SettlementCashDetailsStateCopyWithImpl<$Res,
        _$CashDetailFailedStateImpl>
    implements _$$CashDetailFailedStateImplCopyWith<$Res> {
  __$$CashDetailFailedStateImplCopyWithImpl(_$CashDetailFailedStateImpl _value,
      $Res Function(_$CashDetailFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CashDetailFailedStateImpl implements CashDetailFailedState {
  const _$CashDetailFailedStateImpl();

  @override
  String toString() {
    return 'SettlementCashDetailsState.cashDetailFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CashDetailFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettlemetApprovalcashDetailModel? cash)
        getCashDetailsState,
    required TResult Function() cashDetailFailedState,
  }) {
    return cashDetailFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettlemetApprovalcashDetailModel? cash)?
        getCashDetailsState,
    TResult? Function()? cashDetailFailedState,
  }) {
    return cashDetailFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettlemetApprovalcashDetailModel? cash)?
        getCashDetailsState,
    TResult Function()? cashDetailFailedState,
    required TResult orElse(),
  }) {
    if (cashDetailFailedState != null) {
      return cashDetailFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCashDetailsState value) getCashDetailsState,
    required TResult Function(CashDetailFailedState value)
        cashDetailFailedState,
  }) {
    return cashDetailFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCashDetailsState value)? getCashDetailsState,
    TResult? Function(CashDetailFailedState value)? cashDetailFailedState,
  }) {
    return cashDetailFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCashDetailsState value)? getCashDetailsState,
    TResult Function(CashDetailFailedState value)? cashDetailFailedState,
    required TResult orElse(),
  }) {
    if (cashDetailFailedState != null) {
      return cashDetailFailedState(this);
    }
    return orElse();
  }
}

abstract class CashDetailFailedState implements SettlementCashDetailsState {
  const factory CashDetailFailedState() = _$CashDetailFailedStateImpl;
}
