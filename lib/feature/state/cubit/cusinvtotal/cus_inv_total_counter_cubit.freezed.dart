// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cus_inv_total_counter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CusInvTotalCounterState {
  String get amount => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String amount) totalInvoiceAmountState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String amount)? totalInvoiceAmountState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amount)? totalInvoiceAmountState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TotalInvoiceAmountState value)
        totalInvoiceAmountState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TotalInvoiceAmountState value)? totalInvoiceAmountState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TotalInvoiceAmountState value)? totalInvoiceAmountState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CusInvTotalCounterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CusInvTotalCounterStateCopyWith<CusInvTotalCounterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusInvTotalCounterStateCopyWith<$Res> {
  factory $CusInvTotalCounterStateCopyWith(CusInvTotalCounterState value,
          $Res Function(CusInvTotalCounterState) then) =
      _$CusInvTotalCounterStateCopyWithImpl<$Res, CusInvTotalCounterState>;
  @useResult
  $Res call({String amount});
}

/// @nodoc
class _$CusInvTotalCounterStateCopyWithImpl<$Res,
        $Val extends CusInvTotalCounterState>
    implements $CusInvTotalCounterStateCopyWith<$Res> {
  _$CusInvTotalCounterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CusInvTotalCounterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TotalInvoiceAmountStateImplCopyWith<$Res>
    implements $CusInvTotalCounterStateCopyWith<$Res> {
  factory _$$TotalInvoiceAmountStateImplCopyWith(
          _$TotalInvoiceAmountStateImpl value,
          $Res Function(_$TotalInvoiceAmountStateImpl) then) =
      __$$TotalInvoiceAmountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String amount});
}

/// @nodoc
class __$$TotalInvoiceAmountStateImplCopyWithImpl<$Res>
    extends _$CusInvTotalCounterStateCopyWithImpl<$Res,
        _$TotalInvoiceAmountStateImpl>
    implements _$$TotalInvoiceAmountStateImplCopyWith<$Res> {
  __$$TotalInvoiceAmountStateImplCopyWithImpl(
      _$TotalInvoiceAmountStateImpl _value,
      $Res Function(_$TotalInvoiceAmountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CusInvTotalCounterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$TotalInvoiceAmountStateImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TotalInvoiceAmountStateImpl implements TotalInvoiceAmountState {
  const _$TotalInvoiceAmountStateImpl({required this.amount});

  @override
  final String amount;

  @override
  String toString() {
    return 'CusInvTotalCounterState.totalInvoiceAmountState(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalInvoiceAmountStateImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  /// Create a copy of CusInvTotalCounterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TotalInvoiceAmountStateImplCopyWith<_$TotalInvoiceAmountStateImpl>
      get copyWith => __$$TotalInvoiceAmountStateImplCopyWithImpl<
          _$TotalInvoiceAmountStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String amount) totalInvoiceAmountState,
  }) {
    return totalInvoiceAmountState(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String amount)? totalInvoiceAmountState,
  }) {
    return totalInvoiceAmountState?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amount)? totalInvoiceAmountState,
    required TResult orElse(),
  }) {
    if (totalInvoiceAmountState != null) {
      return totalInvoiceAmountState(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TotalInvoiceAmountState value)
        totalInvoiceAmountState,
  }) {
    return totalInvoiceAmountState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TotalInvoiceAmountState value)? totalInvoiceAmountState,
  }) {
    return totalInvoiceAmountState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TotalInvoiceAmountState value)? totalInvoiceAmountState,
    required TResult orElse(),
  }) {
    if (totalInvoiceAmountState != null) {
      return totalInvoiceAmountState(this);
    }
    return orElse();
  }
}

abstract class TotalInvoiceAmountState implements CusInvTotalCounterState {
  const factory TotalInvoiceAmountState({required final String amount}) =
      _$TotalInvoiceAmountStateImpl;

  @override
  String get amount;

  /// Create a copy of CusInvTotalCounterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TotalInvoiceAmountStateImplCopyWith<_$TotalInvoiceAmountStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
