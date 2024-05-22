// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_details_total_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InvoiceDetailsTotalState {
  String get amount => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String amount) getInvoiceDetailsTotal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String amount)? getInvoiceDetailsTotal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amount)? getInvoiceDetailsTotal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInvoiceDetailsTotal value)
        getInvoiceDetailsTotal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInvoiceDetailsTotal value)? getInvoiceDetailsTotal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInvoiceDetailsTotal value)? getInvoiceDetailsTotal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvoiceDetailsTotalStateCopyWith<InvoiceDetailsTotalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDetailsTotalStateCopyWith<$Res> {
  factory $InvoiceDetailsTotalStateCopyWith(InvoiceDetailsTotalState value,
          $Res Function(InvoiceDetailsTotalState) then) =
      _$InvoiceDetailsTotalStateCopyWithImpl<$Res, InvoiceDetailsTotalState>;
  @useResult
  $Res call({String amount});
}

/// @nodoc
class _$InvoiceDetailsTotalStateCopyWithImpl<$Res,
        $Val extends InvoiceDetailsTotalState>
    implements $InvoiceDetailsTotalStateCopyWith<$Res> {
  _$InvoiceDetailsTotalStateCopyWithImpl(this._value, this._then);

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
abstract class _$$GetInvoiceDetailsTotalImplCopyWith<$Res>
    implements $InvoiceDetailsTotalStateCopyWith<$Res> {
  factory _$$GetInvoiceDetailsTotalImplCopyWith(
          _$GetInvoiceDetailsTotalImpl value,
          $Res Function(_$GetInvoiceDetailsTotalImpl) then) =
      __$$GetInvoiceDetailsTotalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String amount});
}

/// @nodoc
class __$$GetInvoiceDetailsTotalImplCopyWithImpl<$Res>
    extends _$InvoiceDetailsTotalStateCopyWithImpl<$Res,
        _$GetInvoiceDetailsTotalImpl>
    implements _$$GetInvoiceDetailsTotalImplCopyWith<$Res> {
  __$$GetInvoiceDetailsTotalImplCopyWithImpl(
      _$GetInvoiceDetailsTotalImpl _value,
      $Res Function(_$GetInvoiceDetailsTotalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$GetInvoiceDetailsTotalImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetInvoiceDetailsTotalImpl implements GetInvoiceDetailsTotal {
  const _$GetInvoiceDetailsTotalImpl({required this.amount});

  @override
  final String amount;

  @override
  String toString() {
    return 'InvoiceDetailsTotalState.getInvoiceDetailsTotal(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInvoiceDetailsTotalImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInvoiceDetailsTotalImplCopyWith<_$GetInvoiceDetailsTotalImpl>
      get copyWith => __$$GetInvoiceDetailsTotalImplCopyWithImpl<
          _$GetInvoiceDetailsTotalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String amount) getInvoiceDetailsTotal,
  }) {
    return getInvoiceDetailsTotal(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String amount)? getInvoiceDetailsTotal,
  }) {
    return getInvoiceDetailsTotal?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amount)? getInvoiceDetailsTotal,
    required TResult orElse(),
  }) {
    if (getInvoiceDetailsTotal != null) {
      return getInvoiceDetailsTotal(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInvoiceDetailsTotal value)
        getInvoiceDetailsTotal,
  }) {
    return getInvoiceDetailsTotal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInvoiceDetailsTotal value)? getInvoiceDetailsTotal,
  }) {
    return getInvoiceDetailsTotal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInvoiceDetailsTotal value)? getInvoiceDetailsTotal,
    required TResult orElse(),
  }) {
    if (getInvoiceDetailsTotal != null) {
      return getInvoiceDetailsTotal(this);
    }
    return orElse();
  }
}

abstract class GetInvoiceDetailsTotal implements InvoiceDetailsTotalState {
  const factory GetInvoiceDetailsTotal({required final String amount}) =
      _$GetInvoiceDetailsTotalImpl;

  @override
  String get amount;
  @override
  @JsonKey(ignore: true)
  _$$GetInvoiceDetailsTotalImplCopyWith<_$GetInvoiceDetailsTotalImpl>
      get copyWith => throw _privateConstructorUsedError;
}
