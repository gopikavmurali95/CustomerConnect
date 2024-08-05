// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'target_details_graph_amt_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TargetDetailsGraphAmtEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String rotID)
        getTargetGraphAmtEvent,
    required TResult Function() clearGraphAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String rotID)? getTargetGraphAmtEvent,
    TResult? Function()? clearGraphAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String rotID)? getTargetGraphAmtEvent,
    TResult Function()? clearGraphAmount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetGraphAmtEvent value)
        getTargetGraphAmtEvent,
    required TResult Function(ClearGraphAmount value) clearGraphAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetGraphAmtEvent value)? getTargetGraphAmtEvent,
    TResult? Function(ClearGraphAmount value)? clearGraphAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetGraphAmtEvent value)? getTargetGraphAmtEvent,
    TResult Function(ClearGraphAmount value)? clearGraphAmount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetDetailsGraphAmtEventCopyWith<$Res> {
  factory $TargetDetailsGraphAmtEventCopyWith(TargetDetailsGraphAmtEvent value,
          $Res Function(TargetDetailsGraphAmtEvent) then) =
      _$TargetDetailsGraphAmtEventCopyWithImpl<$Res,
          TargetDetailsGraphAmtEvent>;
}

/// @nodoc
class _$TargetDetailsGraphAmtEventCopyWithImpl<$Res,
        $Val extends TargetDetailsGraphAmtEvent>
    implements $TargetDetailsGraphAmtEventCopyWith<$Res> {
  _$TargetDetailsGraphAmtEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTargetGraphAmtEventImplCopyWith<$Res> {
  factory _$$GetTargetGraphAmtEventImplCopyWith(
          _$GetTargetGraphAmtEventImpl value,
          $Res Function(_$GetTargetGraphAmtEventImpl) then) =
      __$$GetTargetGraphAmtEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fromDate, String rotID});
}

/// @nodoc
class __$$GetTargetGraphAmtEventImplCopyWithImpl<$Res>
    extends _$TargetDetailsGraphAmtEventCopyWithImpl<$Res,
        _$GetTargetGraphAmtEventImpl>
    implements _$$GetTargetGraphAmtEventImplCopyWith<$Res> {
  __$$GetTargetGraphAmtEventImplCopyWithImpl(
      _$GetTargetGraphAmtEventImpl _value,
      $Res Function(_$GetTargetGraphAmtEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
    Object? rotID = null,
  }) {
    return _then(_$GetTargetGraphAmtEventImpl(
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      rotID: null == rotID
          ? _value.rotID
          : rotID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTargetGraphAmtEventImpl implements GetTargetGraphAmtEvent {
  const _$GetTargetGraphAmtEventImpl(
      {required this.fromDate, required this.rotID});

  @override
  final String fromDate;
  @override
  final String rotID;

  @override
  String toString() {
    return 'TargetDetailsGraphAmtEvent.getTargetGraphAmtEvent(fromDate: $fromDate, rotID: $rotID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTargetGraphAmtEventImpl &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.rotID, rotID) || other.rotID == rotID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromDate, rotID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTargetGraphAmtEventImplCopyWith<_$GetTargetGraphAmtEventImpl>
      get copyWith => __$$GetTargetGraphAmtEventImplCopyWithImpl<
          _$GetTargetGraphAmtEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String rotID)
        getTargetGraphAmtEvent,
    required TResult Function() clearGraphAmount,
  }) {
    return getTargetGraphAmtEvent(fromDate, rotID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String rotID)? getTargetGraphAmtEvent,
    TResult? Function()? clearGraphAmount,
  }) {
    return getTargetGraphAmtEvent?.call(fromDate, rotID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String rotID)? getTargetGraphAmtEvent,
    TResult Function()? clearGraphAmount,
    required TResult orElse(),
  }) {
    if (getTargetGraphAmtEvent != null) {
      return getTargetGraphAmtEvent(fromDate, rotID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetGraphAmtEvent value)
        getTargetGraphAmtEvent,
    required TResult Function(ClearGraphAmount value) clearGraphAmount,
  }) {
    return getTargetGraphAmtEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetGraphAmtEvent value)? getTargetGraphAmtEvent,
    TResult? Function(ClearGraphAmount value)? clearGraphAmount,
  }) {
    return getTargetGraphAmtEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetGraphAmtEvent value)? getTargetGraphAmtEvent,
    TResult Function(ClearGraphAmount value)? clearGraphAmount,
    required TResult orElse(),
  }) {
    if (getTargetGraphAmtEvent != null) {
      return getTargetGraphAmtEvent(this);
    }
    return orElse();
  }
}

abstract class GetTargetGraphAmtEvent implements TargetDetailsGraphAmtEvent {
  const factory GetTargetGraphAmtEvent(
      {required final String fromDate,
      required final String rotID}) = _$GetTargetGraphAmtEventImpl;

  String get fromDate;
  String get rotID;
  @JsonKey(ignore: true)
  _$$GetTargetGraphAmtEventImplCopyWith<_$GetTargetGraphAmtEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearGraphAmountImplCopyWith<$Res> {
  factory _$$ClearGraphAmountImplCopyWith(_$ClearGraphAmountImpl value,
          $Res Function(_$ClearGraphAmountImpl) then) =
      __$$ClearGraphAmountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearGraphAmountImplCopyWithImpl<$Res>
    extends _$TargetDetailsGraphAmtEventCopyWithImpl<$Res,
        _$ClearGraphAmountImpl>
    implements _$$ClearGraphAmountImplCopyWith<$Res> {
  __$$ClearGraphAmountImplCopyWithImpl(_$ClearGraphAmountImpl _value,
      $Res Function(_$ClearGraphAmountImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearGraphAmountImpl implements ClearGraphAmount {
  const _$ClearGraphAmountImpl();

  @override
  String toString() {
    return 'TargetDetailsGraphAmtEvent.clearGraphAmount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearGraphAmountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String rotID)
        getTargetGraphAmtEvent,
    required TResult Function() clearGraphAmount,
  }) {
    return clearGraphAmount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String rotID)? getTargetGraphAmtEvent,
    TResult? Function()? clearGraphAmount,
  }) {
    return clearGraphAmount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String rotID)? getTargetGraphAmtEvent,
    TResult Function()? clearGraphAmount,
    required TResult orElse(),
  }) {
    if (clearGraphAmount != null) {
      return clearGraphAmount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetGraphAmtEvent value)
        getTargetGraphAmtEvent,
    required TResult Function(ClearGraphAmount value) clearGraphAmount,
  }) {
    return clearGraphAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetGraphAmtEvent value)? getTargetGraphAmtEvent,
    TResult? Function(ClearGraphAmount value)? clearGraphAmount,
  }) {
    return clearGraphAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetGraphAmtEvent value)? getTargetGraphAmtEvent,
    TResult Function(ClearGraphAmount value)? clearGraphAmount,
    required TResult orElse(),
  }) {
    if (clearGraphAmount != null) {
      return clearGraphAmount(this);
    }
    return orElse();
  }
}

abstract class ClearGraphAmount implements TargetDetailsGraphAmtEvent {
  const factory ClearGraphAmount() = _$ClearGraphAmountImpl;
}

/// @nodoc
mixin _$TargetDetailsGraphAmtState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TargetDetailsGraphAmtModel? amount)
        getTargetGraphAmt,
    required TResult Function() getTargetGraphAmtFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TargetDetailsGraphAmtModel? amount)? getTargetGraphAmt,
    TResult? Function()? getTargetGraphAmtFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TargetDetailsGraphAmtModel? amount)? getTargetGraphAmt,
    TResult Function()? getTargetGraphAmtFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetGraphAmt value) getTargetGraphAmt,
    required TResult Function(GetTargetGraphAmtFailed value)
        getTargetGraphAmtFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetGraphAmt value)? getTargetGraphAmt,
    TResult? Function(GetTargetGraphAmtFailed value)? getTargetGraphAmtFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetGraphAmt value)? getTargetGraphAmt,
    TResult Function(GetTargetGraphAmtFailed value)? getTargetGraphAmtFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetDetailsGraphAmtStateCopyWith<$Res> {
  factory $TargetDetailsGraphAmtStateCopyWith(TargetDetailsGraphAmtState value,
          $Res Function(TargetDetailsGraphAmtState) then) =
      _$TargetDetailsGraphAmtStateCopyWithImpl<$Res,
          TargetDetailsGraphAmtState>;
}

/// @nodoc
class _$TargetDetailsGraphAmtStateCopyWithImpl<$Res,
        $Val extends TargetDetailsGraphAmtState>
    implements $TargetDetailsGraphAmtStateCopyWith<$Res> {
  _$TargetDetailsGraphAmtStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTargetGraphAmtImplCopyWith<$Res> {
  factory _$$GetTargetGraphAmtImplCopyWith(_$GetTargetGraphAmtImpl value,
          $Res Function(_$GetTargetGraphAmtImpl) then) =
      __$$GetTargetGraphAmtImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TargetDetailsGraphAmtModel? amount});
}

/// @nodoc
class __$$GetTargetGraphAmtImplCopyWithImpl<$Res>
    extends _$TargetDetailsGraphAmtStateCopyWithImpl<$Res,
        _$GetTargetGraphAmtImpl>
    implements _$$GetTargetGraphAmtImplCopyWith<$Res> {
  __$$GetTargetGraphAmtImplCopyWithImpl(_$GetTargetGraphAmtImpl _value,
      $Res Function(_$GetTargetGraphAmtImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_$GetTargetGraphAmtImpl(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as TargetDetailsGraphAmtModel?,
    ));
  }
}

/// @nodoc

class _$GetTargetGraphAmtImpl implements GetTargetGraphAmt {
  const _$GetTargetGraphAmtImpl({required this.amount});

  @override
  final TargetDetailsGraphAmtModel? amount;

  @override
  String toString() {
    return 'TargetDetailsGraphAmtState.getTargetGraphAmt(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTargetGraphAmtImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTargetGraphAmtImplCopyWith<_$GetTargetGraphAmtImpl> get copyWith =>
      __$$GetTargetGraphAmtImplCopyWithImpl<_$GetTargetGraphAmtImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TargetDetailsGraphAmtModel? amount)
        getTargetGraphAmt,
    required TResult Function() getTargetGraphAmtFailed,
  }) {
    return getTargetGraphAmt(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TargetDetailsGraphAmtModel? amount)? getTargetGraphAmt,
    TResult? Function()? getTargetGraphAmtFailed,
  }) {
    return getTargetGraphAmt?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TargetDetailsGraphAmtModel? amount)? getTargetGraphAmt,
    TResult Function()? getTargetGraphAmtFailed,
    required TResult orElse(),
  }) {
    if (getTargetGraphAmt != null) {
      return getTargetGraphAmt(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetGraphAmt value) getTargetGraphAmt,
    required TResult Function(GetTargetGraphAmtFailed value)
        getTargetGraphAmtFailed,
  }) {
    return getTargetGraphAmt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetGraphAmt value)? getTargetGraphAmt,
    TResult? Function(GetTargetGraphAmtFailed value)? getTargetGraphAmtFailed,
  }) {
    return getTargetGraphAmt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetGraphAmt value)? getTargetGraphAmt,
    TResult Function(GetTargetGraphAmtFailed value)? getTargetGraphAmtFailed,
    required TResult orElse(),
  }) {
    if (getTargetGraphAmt != null) {
      return getTargetGraphAmt(this);
    }
    return orElse();
  }
}

abstract class GetTargetGraphAmt implements TargetDetailsGraphAmtState {
  const factory GetTargetGraphAmt(
          {required final TargetDetailsGraphAmtModel? amount}) =
      _$GetTargetGraphAmtImpl;

  TargetDetailsGraphAmtModel? get amount;
  @JsonKey(ignore: true)
  _$$GetTargetGraphAmtImplCopyWith<_$GetTargetGraphAmtImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTargetGraphAmtFailedImplCopyWith<$Res> {
  factory _$$GetTargetGraphAmtFailedImplCopyWith(
          _$GetTargetGraphAmtFailedImpl value,
          $Res Function(_$GetTargetGraphAmtFailedImpl) then) =
      __$$GetTargetGraphAmtFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTargetGraphAmtFailedImplCopyWithImpl<$Res>
    extends _$TargetDetailsGraphAmtStateCopyWithImpl<$Res,
        _$GetTargetGraphAmtFailedImpl>
    implements _$$GetTargetGraphAmtFailedImplCopyWith<$Res> {
  __$$GetTargetGraphAmtFailedImplCopyWithImpl(
      _$GetTargetGraphAmtFailedImpl _value,
      $Res Function(_$GetTargetGraphAmtFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTargetGraphAmtFailedImpl implements GetTargetGraphAmtFailed {
  const _$GetTargetGraphAmtFailedImpl();

  @override
  String toString() {
    return 'TargetDetailsGraphAmtState.getTargetGraphAmtFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTargetGraphAmtFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TargetDetailsGraphAmtModel? amount)
        getTargetGraphAmt,
    required TResult Function() getTargetGraphAmtFailed,
  }) {
    return getTargetGraphAmtFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TargetDetailsGraphAmtModel? amount)? getTargetGraphAmt,
    TResult? Function()? getTargetGraphAmtFailed,
  }) {
    return getTargetGraphAmtFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TargetDetailsGraphAmtModel? amount)? getTargetGraphAmt,
    TResult Function()? getTargetGraphAmtFailed,
    required TResult orElse(),
  }) {
    if (getTargetGraphAmtFailed != null) {
      return getTargetGraphAmtFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetGraphAmt value) getTargetGraphAmt,
    required TResult Function(GetTargetGraphAmtFailed value)
        getTargetGraphAmtFailed,
  }) {
    return getTargetGraphAmtFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetGraphAmt value)? getTargetGraphAmt,
    TResult? Function(GetTargetGraphAmtFailed value)? getTargetGraphAmtFailed,
  }) {
    return getTargetGraphAmtFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetGraphAmt value)? getTargetGraphAmt,
    TResult Function(GetTargetGraphAmtFailed value)? getTargetGraphAmtFailed,
    required TResult orElse(),
  }) {
    if (getTargetGraphAmtFailed != null) {
      return getTargetGraphAmtFailed(this);
    }
    return orElse();
  }
}

abstract class GetTargetGraphAmtFailed implements TargetDetailsGraphAmtState {
  const factory GetTargetGraphAmtFailed() = _$GetTargetGraphAmtFailedImpl;
}
