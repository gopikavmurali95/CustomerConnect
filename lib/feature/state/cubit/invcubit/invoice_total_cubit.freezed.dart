// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_total_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InvoiceTotalState {
  String get amount => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String amount) getInvoiceTotal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String amount)? getInvoiceTotal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amount)? getInvoiceTotal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInvoiceTotal value) getInvoiceTotal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInvoiceTotal value)? getInvoiceTotal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInvoiceTotal value)? getInvoiceTotal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvoiceTotalStateCopyWith<InvoiceTotalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceTotalStateCopyWith<$Res> {
  factory $InvoiceTotalStateCopyWith(
          InvoiceTotalState value, $Res Function(InvoiceTotalState) then) =
      _$InvoiceTotalStateCopyWithImpl<$Res, InvoiceTotalState>;
  @useResult
  $Res call({String amount});
}

/// @nodoc
class _$InvoiceTotalStateCopyWithImpl<$Res, $Val extends InvoiceTotalState>
    implements $InvoiceTotalStateCopyWith<$Res> {
  _$InvoiceTotalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$GetInvoiceTotalImplCopyWith<$Res>
    implements $InvoiceTotalStateCopyWith<$Res> {
  factory _$$GetInvoiceTotalImplCopyWith(_$GetInvoiceTotalImpl value,
          $Res Function(_$GetInvoiceTotalImpl) then) =
      __$$GetInvoiceTotalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String amount});
}

/// @nodoc
class __$$GetInvoiceTotalImplCopyWithImpl<$Res>
    extends _$InvoiceTotalStateCopyWithImpl<$Res, _$GetInvoiceTotalImpl>
    implements _$$GetInvoiceTotalImplCopyWith<$Res> {
  __$$GetInvoiceTotalImplCopyWithImpl(
      _$GetInvoiceTotalImpl _value, $Res Function(_$GetInvoiceTotalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$GetInvoiceTotalImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetInvoiceTotalImpl implements GetInvoiceTotal {
  const _$GetInvoiceTotalImpl({required this.amount});

  @override
  final String amount;

  @override
  String toString() {
    return 'InvoiceTotalState.getInvoiceTotal(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInvoiceTotalImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInvoiceTotalImplCopyWith<_$GetInvoiceTotalImpl> get copyWith =>
      __$$GetInvoiceTotalImplCopyWithImpl<_$GetInvoiceTotalImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String amount) getInvoiceTotal,
  }) {
    return getInvoiceTotal(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String amount)? getInvoiceTotal,
  }) {
    return getInvoiceTotal?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amount)? getInvoiceTotal,
    required TResult orElse(),
  }) {
    if (getInvoiceTotal != null) {
      return getInvoiceTotal(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInvoiceTotal value) getInvoiceTotal,
  }) {
    return getInvoiceTotal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInvoiceTotal value)? getInvoiceTotal,
  }) {
    return getInvoiceTotal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInvoiceTotal value)? getInvoiceTotal,
    required TResult orElse(),
  }) {
    if (getInvoiceTotal != null) {
      return getInvoiceTotal(this);
    }
    return orElse();
  }
}

abstract class GetInvoiceTotal implements InvoiceTotalState {
  const factory GetInvoiceTotal({required final String amount}) =
      _$GetInvoiceTotalImpl;

  @override
  String get amount;
  @override
  @JsonKey(ignore: true)
  _$$GetInvoiceTotalImplCopyWith<_$GetInvoiceTotalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
