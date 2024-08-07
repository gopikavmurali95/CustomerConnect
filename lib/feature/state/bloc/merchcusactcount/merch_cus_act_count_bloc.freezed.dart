// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merch_cus_act_count_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MerchCusActCountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String toDate)
        getCusActCountEvent,
    required TResult Function() cusActCountClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String toDate)? getCusActCountEvent,
    TResult? Function()? cusActCountClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String toDate)? getCusActCountEvent,
    TResult Function()? cusActCountClearEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusActCountEvent value) getCusActCountEvent,
    required TResult Function(CusActCountClearEvent value)
        cusActCountClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusActCountEvent value)? getCusActCountEvent,
    TResult? Function(CusActCountClearEvent value)? cusActCountClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusActCountEvent value)? getCusActCountEvent,
    TResult Function(CusActCountClearEvent value)? cusActCountClearEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchCusActCountEventCopyWith<$Res> {
  factory $MerchCusActCountEventCopyWith(MerchCusActCountEvent value,
          $Res Function(MerchCusActCountEvent) then) =
      _$MerchCusActCountEventCopyWithImpl<$Res, MerchCusActCountEvent>;
}

/// @nodoc
class _$MerchCusActCountEventCopyWithImpl<$Res,
        $Val extends MerchCusActCountEvent>
    implements $MerchCusActCountEventCopyWith<$Res> {
  _$MerchCusActCountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCusActCountEventImplCopyWith<$Res> {
  factory _$$GetCusActCountEventImplCopyWith(_$GetCusActCountEventImpl value,
          $Res Function(_$GetCusActCountEventImpl) then) =
      __$$GetCusActCountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fromDate, String toDate});
}

/// @nodoc
class __$$GetCusActCountEventImplCopyWithImpl<$Res>
    extends _$MerchCusActCountEventCopyWithImpl<$Res, _$GetCusActCountEventImpl>
    implements _$$GetCusActCountEventImplCopyWith<$Res> {
  __$$GetCusActCountEventImplCopyWithImpl(_$GetCusActCountEventImpl _value,
      $Res Function(_$GetCusActCountEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
    Object? toDate = null,
  }) {
    return _then(_$GetCusActCountEventImpl(
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCusActCountEventImpl implements GetCusActCountEvent {
  const _$GetCusActCountEventImpl(
      {required this.fromDate, required this.toDate});

  @override
  final String fromDate;
  @override
  final String toDate;

  @override
  String toString() {
    return 'MerchCusActCountEvent.getCusActCountEvent(fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCusActCountEventImpl &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromDate, toDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCusActCountEventImplCopyWith<_$GetCusActCountEventImpl> get copyWith =>
      __$$GetCusActCountEventImplCopyWithImpl<_$GetCusActCountEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String toDate)
        getCusActCountEvent,
    required TResult Function() cusActCountClearEvent,
  }) {
    return getCusActCountEvent(fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String toDate)? getCusActCountEvent,
    TResult? Function()? cusActCountClearEvent,
  }) {
    return getCusActCountEvent?.call(fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String toDate)? getCusActCountEvent,
    TResult Function()? cusActCountClearEvent,
    required TResult orElse(),
  }) {
    if (getCusActCountEvent != null) {
      return getCusActCountEvent(fromDate, toDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusActCountEvent value) getCusActCountEvent,
    required TResult Function(CusActCountClearEvent value)
        cusActCountClearEvent,
  }) {
    return getCusActCountEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusActCountEvent value)? getCusActCountEvent,
    TResult? Function(CusActCountClearEvent value)? cusActCountClearEvent,
  }) {
    return getCusActCountEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusActCountEvent value)? getCusActCountEvent,
    TResult Function(CusActCountClearEvent value)? cusActCountClearEvent,
    required TResult orElse(),
  }) {
    if (getCusActCountEvent != null) {
      return getCusActCountEvent(this);
    }
    return orElse();
  }
}

abstract class GetCusActCountEvent implements MerchCusActCountEvent {
  const factory GetCusActCountEvent(
      {required final String fromDate,
      required final String toDate}) = _$GetCusActCountEventImpl;

  String get fromDate;
  String get toDate;
  @JsonKey(ignore: true)
  _$$GetCusActCountEventImplCopyWith<_$GetCusActCountEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CusActCountClearEventImplCopyWith<$Res> {
  factory _$$CusActCountClearEventImplCopyWith(
          _$CusActCountClearEventImpl value,
          $Res Function(_$CusActCountClearEventImpl) then) =
      __$$CusActCountClearEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CusActCountClearEventImplCopyWithImpl<$Res>
    extends _$MerchCusActCountEventCopyWithImpl<$Res,
        _$CusActCountClearEventImpl>
    implements _$$CusActCountClearEventImplCopyWith<$Res> {
  __$$CusActCountClearEventImplCopyWithImpl(_$CusActCountClearEventImpl _value,
      $Res Function(_$CusActCountClearEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CusActCountClearEventImpl implements CusActCountClearEvent {
  const _$CusActCountClearEventImpl();

  @override
  String toString() {
    return 'MerchCusActCountEvent.cusActCountClearEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CusActCountClearEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String toDate)
        getCusActCountEvent,
    required TResult Function() cusActCountClearEvent,
  }) {
    return cusActCountClearEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String toDate)? getCusActCountEvent,
    TResult? Function()? cusActCountClearEvent,
  }) {
    return cusActCountClearEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String toDate)? getCusActCountEvent,
    TResult Function()? cusActCountClearEvent,
    required TResult orElse(),
  }) {
    if (cusActCountClearEvent != null) {
      return cusActCountClearEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusActCountEvent value) getCusActCountEvent,
    required TResult Function(CusActCountClearEvent value)
        cusActCountClearEvent,
  }) {
    return cusActCountClearEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusActCountEvent value)? getCusActCountEvent,
    TResult? Function(CusActCountClearEvent value)? cusActCountClearEvent,
  }) {
    return cusActCountClearEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusActCountEvent value)? getCusActCountEvent,
    TResult Function(CusActCountClearEvent value)? cusActCountClearEvent,
    required TResult orElse(),
  }) {
    if (cusActCountClearEvent != null) {
      return cusActCountClearEvent(this);
    }
    return orElse();
  }
}

abstract class CusActCountClearEvent implements MerchCusActCountEvent {
  const factory CusActCountClearEvent() = _$CusActCountClearEventImpl;
}

/// @nodoc
mixin _$MerchCusActCountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetCusActcountModel? cuscount)
        getCusActCountState,
    required TResult Function() cusActCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetCusActcountModel? cuscount)? getCusActCountState,
    TResult? Function()? cusActCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetCusActcountModel? cuscount)? getCusActCountState,
    TResult Function()? cusActCountFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusActCountState value) getCusActCountState,
    required TResult Function(CusActCountFailedState value)
        cusActCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusActCountState value)? getCusActCountState,
    TResult? Function(CusActCountFailedState value)? cusActCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusActCountState value)? getCusActCountState,
    TResult Function(CusActCountFailedState value)? cusActCountFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchCusActCountStateCopyWith<$Res> {
  factory $MerchCusActCountStateCopyWith(MerchCusActCountState value,
          $Res Function(MerchCusActCountState) then) =
      _$MerchCusActCountStateCopyWithImpl<$Res, MerchCusActCountState>;
}

/// @nodoc
class _$MerchCusActCountStateCopyWithImpl<$Res,
        $Val extends MerchCusActCountState>
    implements $MerchCusActCountStateCopyWith<$Res> {
  _$MerchCusActCountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCusActCountStateImplCopyWith<$Res> {
  factory _$$GetCusActCountStateImplCopyWith(_$GetCusActCountStateImpl value,
          $Res Function(_$GetCusActCountStateImpl) then) =
      __$$GetCusActCountStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetCusActcountModel? cuscount});
}

/// @nodoc
class __$$GetCusActCountStateImplCopyWithImpl<$Res>
    extends _$MerchCusActCountStateCopyWithImpl<$Res, _$GetCusActCountStateImpl>
    implements _$$GetCusActCountStateImplCopyWith<$Res> {
  __$$GetCusActCountStateImplCopyWithImpl(_$GetCusActCountStateImpl _value,
      $Res Function(_$GetCusActCountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cuscount = freezed,
  }) {
    return _then(_$GetCusActCountStateImpl(
      cuscount: freezed == cuscount
          ? _value.cuscount
          : cuscount // ignore: cast_nullable_to_non_nullable
              as GetCusActcountModel?,
    ));
  }
}

/// @nodoc

class _$GetCusActCountStateImpl implements GetCusActCountState {
  const _$GetCusActCountStateImpl({required this.cuscount});

  @override
  final GetCusActcountModel? cuscount;

  @override
  String toString() {
    return 'MerchCusActCountState.getCusActCountState(cuscount: $cuscount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCusActCountStateImpl &&
            (identical(other.cuscount, cuscount) ||
                other.cuscount == cuscount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cuscount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCusActCountStateImplCopyWith<_$GetCusActCountStateImpl> get copyWith =>
      __$$GetCusActCountStateImplCopyWithImpl<_$GetCusActCountStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetCusActcountModel? cuscount)
        getCusActCountState,
    required TResult Function() cusActCountFailedState,
  }) {
    return getCusActCountState(cuscount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetCusActcountModel? cuscount)? getCusActCountState,
    TResult? Function()? cusActCountFailedState,
  }) {
    return getCusActCountState?.call(cuscount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetCusActcountModel? cuscount)? getCusActCountState,
    TResult Function()? cusActCountFailedState,
    required TResult orElse(),
  }) {
    if (getCusActCountState != null) {
      return getCusActCountState(cuscount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusActCountState value) getCusActCountState,
    required TResult Function(CusActCountFailedState value)
        cusActCountFailedState,
  }) {
    return getCusActCountState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusActCountState value)? getCusActCountState,
    TResult? Function(CusActCountFailedState value)? cusActCountFailedState,
  }) {
    return getCusActCountState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusActCountState value)? getCusActCountState,
    TResult Function(CusActCountFailedState value)? cusActCountFailedState,
    required TResult orElse(),
  }) {
    if (getCusActCountState != null) {
      return getCusActCountState(this);
    }
    return orElse();
  }
}

abstract class GetCusActCountState implements MerchCusActCountState {
  const factory GetCusActCountState(
          {required final GetCusActcountModel? cuscount}) =
      _$GetCusActCountStateImpl;

  GetCusActcountModel? get cuscount;
  @JsonKey(ignore: true)
  _$$GetCusActCountStateImplCopyWith<_$GetCusActCountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CusActCountFailedStateImplCopyWith<$Res> {
  factory _$$CusActCountFailedStateImplCopyWith(
          _$CusActCountFailedStateImpl value,
          $Res Function(_$CusActCountFailedStateImpl) then) =
      __$$CusActCountFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CusActCountFailedStateImplCopyWithImpl<$Res>
    extends _$MerchCusActCountStateCopyWithImpl<$Res,
        _$CusActCountFailedStateImpl>
    implements _$$CusActCountFailedStateImplCopyWith<$Res> {
  __$$CusActCountFailedStateImplCopyWithImpl(
      _$CusActCountFailedStateImpl _value,
      $Res Function(_$CusActCountFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CusActCountFailedStateImpl implements CusActCountFailedState {
  const _$CusActCountFailedStateImpl();

  @override
  String toString() {
    return 'MerchCusActCountState.cusActCountFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CusActCountFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetCusActcountModel? cuscount)
        getCusActCountState,
    required TResult Function() cusActCountFailedState,
  }) {
    return cusActCountFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetCusActcountModel? cuscount)? getCusActCountState,
    TResult? Function()? cusActCountFailedState,
  }) {
    return cusActCountFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetCusActcountModel? cuscount)? getCusActCountState,
    TResult Function()? cusActCountFailedState,
    required TResult orElse(),
  }) {
    if (cusActCountFailedState != null) {
      return cusActCountFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusActCountState value) getCusActCountState,
    required TResult Function(CusActCountFailedState value)
        cusActCountFailedState,
  }) {
    return cusActCountFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusActCountState value)? getCusActCountState,
    TResult? Function(CusActCountFailedState value)? cusActCountFailedState,
  }) {
    return cusActCountFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusActCountState value)? getCusActCountState,
    TResult Function(CusActCountFailedState value)? cusActCountFailedState,
    required TResult orElse(),
  }) {
    if (cusActCountFailedState != null) {
      return cusActCountFailedState(this);
    }
    return orElse();
  }
}

abstract class CusActCountFailedState implements MerchCusActCountState {
  const factory CusActCountFailedState() = _$CusActCountFailedStateImpl;
}
