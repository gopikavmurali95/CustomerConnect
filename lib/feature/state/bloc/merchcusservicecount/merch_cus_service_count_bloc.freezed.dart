// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merch_cus_service_count_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MerchCusServiceCountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromdate, String toDate)
        getCusserviceCountEvent,
    required TResult Function() cusServiceCountClearevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromdate, String toDate)? getCusserviceCountEvent,
    TResult? Function()? cusServiceCountClearevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromdate, String toDate)? getCusserviceCountEvent,
    TResult Function()? cusServiceCountClearevent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusserviceCountEvent value)
        getCusserviceCountEvent,
    required TResult Function(CusServiceCountClearevent value)
        cusServiceCountClearevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusserviceCountEvent value)? getCusserviceCountEvent,
    TResult? Function(CusServiceCountClearevent value)?
        cusServiceCountClearevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusserviceCountEvent value)? getCusserviceCountEvent,
    TResult Function(CusServiceCountClearevent value)?
        cusServiceCountClearevent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchCusServiceCountEventCopyWith<$Res> {
  factory $MerchCusServiceCountEventCopyWith(MerchCusServiceCountEvent value,
          $Res Function(MerchCusServiceCountEvent) then) =
      _$MerchCusServiceCountEventCopyWithImpl<$Res, MerchCusServiceCountEvent>;
}

/// @nodoc
class _$MerchCusServiceCountEventCopyWithImpl<$Res,
        $Val extends MerchCusServiceCountEvent>
    implements $MerchCusServiceCountEventCopyWith<$Res> {
  _$MerchCusServiceCountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchCusServiceCountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetCusserviceCountEventImplCopyWith<$Res> {
  factory _$$GetCusserviceCountEventImplCopyWith(
          _$GetCusserviceCountEventImpl value,
          $Res Function(_$GetCusserviceCountEventImpl) then) =
      __$$GetCusserviceCountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fromdate, String toDate});
}

/// @nodoc
class __$$GetCusserviceCountEventImplCopyWithImpl<$Res>
    extends _$MerchCusServiceCountEventCopyWithImpl<$Res,
        _$GetCusserviceCountEventImpl>
    implements _$$GetCusserviceCountEventImplCopyWith<$Res> {
  __$$GetCusserviceCountEventImplCopyWithImpl(
      _$GetCusserviceCountEventImpl _value,
      $Res Function(_$GetCusserviceCountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchCusServiceCountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromdate = null,
    Object? toDate = null,
  }) {
    return _then(_$GetCusserviceCountEventImpl(
      fromdate: null == fromdate
          ? _value.fromdate
          : fromdate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCusserviceCountEventImpl implements GetCusserviceCountEvent {
  const _$GetCusserviceCountEventImpl(
      {required this.fromdate, required this.toDate});

  @override
  final String fromdate;
  @override
  final String toDate;

  @override
  String toString() {
    return 'MerchCusServiceCountEvent.getCusserviceCountEvent(fromdate: $fromdate, toDate: $toDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCusserviceCountEventImpl &&
            (identical(other.fromdate, fromdate) ||
                other.fromdate == fromdate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromdate, toDate);

  /// Create a copy of MerchCusServiceCountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCusserviceCountEventImplCopyWith<_$GetCusserviceCountEventImpl>
      get copyWith => __$$GetCusserviceCountEventImplCopyWithImpl<
          _$GetCusserviceCountEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromdate, String toDate)
        getCusserviceCountEvent,
    required TResult Function() cusServiceCountClearevent,
  }) {
    return getCusserviceCountEvent(fromdate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromdate, String toDate)? getCusserviceCountEvent,
    TResult? Function()? cusServiceCountClearevent,
  }) {
    return getCusserviceCountEvent?.call(fromdate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromdate, String toDate)? getCusserviceCountEvent,
    TResult Function()? cusServiceCountClearevent,
    required TResult orElse(),
  }) {
    if (getCusserviceCountEvent != null) {
      return getCusserviceCountEvent(fromdate, toDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusserviceCountEvent value)
        getCusserviceCountEvent,
    required TResult Function(CusServiceCountClearevent value)
        cusServiceCountClearevent,
  }) {
    return getCusserviceCountEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusserviceCountEvent value)? getCusserviceCountEvent,
    TResult? Function(CusServiceCountClearevent value)?
        cusServiceCountClearevent,
  }) {
    return getCusserviceCountEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusserviceCountEvent value)? getCusserviceCountEvent,
    TResult Function(CusServiceCountClearevent value)?
        cusServiceCountClearevent,
    required TResult orElse(),
  }) {
    if (getCusserviceCountEvent != null) {
      return getCusserviceCountEvent(this);
    }
    return orElse();
  }
}

abstract class GetCusserviceCountEvent implements MerchCusServiceCountEvent {
  const factory GetCusserviceCountEvent(
      {required final String fromdate,
      required final String toDate}) = _$GetCusserviceCountEventImpl;

  String get fromdate;
  String get toDate;

  /// Create a copy of MerchCusServiceCountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCusserviceCountEventImplCopyWith<_$GetCusserviceCountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CusServiceCountCleareventImplCopyWith<$Res> {
  factory _$$CusServiceCountCleareventImplCopyWith(
          _$CusServiceCountCleareventImpl value,
          $Res Function(_$CusServiceCountCleareventImpl) then) =
      __$$CusServiceCountCleareventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CusServiceCountCleareventImplCopyWithImpl<$Res>
    extends _$MerchCusServiceCountEventCopyWithImpl<$Res,
        _$CusServiceCountCleareventImpl>
    implements _$$CusServiceCountCleareventImplCopyWith<$Res> {
  __$$CusServiceCountCleareventImplCopyWithImpl(
      _$CusServiceCountCleareventImpl _value,
      $Res Function(_$CusServiceCountCleareventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchCusServiceCountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CusServiceCountCleareventImpl implements CusServiceCountClearevent {
  const _$CusServiceCountCleareventImpl();

  @override
  String toString() {
    return 'MerchCusServiceCountEvent.cusServiceCountClearevent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CusServiceCountCleareventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromdate, String toDate)
        getCusserviceCountEvent,
    required TResult Function() cusServiceCountClearevent,
  }) {
    return cusServiceCountClearevent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromdate, String toDate)? getCusserviceCountEvent,
    TResult? Function()? cusServiceCountClearevent,
  }) {
    return cusServiceCountClearevent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromdate, String toDate)? getCusserviceCountEvent,
    TResult Function()? cusServiceCountClearevent,
    required TResult orElse(),
  }) {
    if (cusServiceCountClearevent != null) {
      return cusServiceCountClearevent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusserviceCountEvent value)
        getCusserviceCountEvent,
    required TResult Function(CusServiceCountClearevent value)
        cusServiceCountClearevent,
  }) {
    return cusServiceCountClearevent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusserviceCountEvent value)? getCusserviceCountEvent,
    TResult? Function(CusServiceCountClearevent value)?
        cusServiceCountClearevent,
  }) {
    return cusServiceCountClearevent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusserviceCountEvent value)? getCusserviceCountEvent,
    TResult Function(CusServiceCountClearevent value)?
        cusServiceCountClearevent,
    required TResult orElse(),
  }) {
    if (cusServiceCountClearevent != null) {
      return cusServiceCountClearevent(this);
    }
    return orElse();
  }
}

abstract class CusServiceCountClearevent implements MerchCusServiceCountEvent {
  const factory CusServiceCountClearevent() = _$CusServiceCountCleareventImpl;
}

/// @nodoc
mixin _$MerchCusServiceCountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MerchCuServiceCountModel? cusServicecount)
        getCusServiceCountState,
    required TResult Function() cusServiceCountFailedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MerchCuServiceCountModel? cusServicecount)?
        getCusServiceCountState,
    TResult? Function()? cusServiceCountFailedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MerchCuServiceCountModel? cusServicecount)?
        getCusServiceCountState,
    TResult Function()? cusServiceCountFailedstate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusServiceCountState value)
        getCusServiceCountState,
    required TResult Function(CusServiceCountFailedstate value)
        cusServiceCountFailedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusServiceCountState value)? getCusServiceCountState,
    TResult? Function(CusServiceCountFailedstate value)?
        cusServiceCountFailedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusServiceCountState value)? getCusServiceCountState,
    TResult Function(CusServiceCountFailedstate value)?
        cusServiceCountFailedstate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchCusServiceCountStateCopyWith<$Res> {
  factory $MerchCusServiceCountStateCopyWith(MerchCusServiceCountState value,
          $Res Function(MerchCusServiceCountState) then) =
      _$MerchCusServiceCountStateCopyWithImpl<$Res, MerchCusServiceCountState>;
}

/// @nodoc
class _$MerchCusServiceCountStateCopyWithImpl<$Res,
        $Val extends MerchCusServiceCountState>
    implements $MerchCusServiceCountStateCopyWith<$Res> {
  _$MerchCusServiceCountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchCusServiceCountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetCusServiceCountStateImplCopyWith<$Res> {
  factory _$$GetCusServiceCountStateImplCopyWith(
          _$GetCusServiceCountStateImpl value,
          $Res Function(_$GetCusServiceCountStateImpl) then) =
      __$$GetCusServiceCountStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MerchCuServiceCountModel? cusServicecount});
}

/// @nodoc
class __$$GetCusServiceCountStateImplCopyWithImpl<$Res>
    extends _$MerchCusServiceCountStateCopyWithImpl<$Res,
        _$GetCusServiceCountStateImpl>
    implements _$$GetCusServiceCountStateImplCopyWith<$Res> {
  __$$GetCusServiceCountStateImplCopyWithImpl(
      _$GetCusServiceCountStateImpl _value,
      $Res Function(_$GetCusServiceCountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchCusServiceCountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cusServicecount = freezed,
  }) {
    return _then(_$GetCusServiceCountStateImpl(
      cusServicecount: freezed == cusServicecount
          ? _value.cusServicecount
          : cusServicecount // ignore: cast_nullable_to_non_nullable
              as MerchCuServiceCountModel?,
    ));
  }
}

/// @nodoc

class _$GetCusServiceCountStateImpl implements GetCusServiceCountState {
  const _$GetCusServiceCountStateImpl({required this.cusServicecount});

  @override
  final MerchCuServiceCountModel? cusServicecount;

  @override
  String toString() {
    return 'MerchCusServiceCountState.getCusServiceCountState(cusServicecount: $cusServicecount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCusServiceCountStateImpl &&
            (identical(other.cusServicecount, cusServicecount) ||
                other.cusServicecount == cusServicecount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cusServicecount);

  /// Create a copy of MerchCusServiceCountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCusServiceCountStateImplCopyWith<_$GetCusServiceCountStateImpl>
      get copyWith => __$$GetCusServiceCountStateImplCopyWithImpl<
          _$GetCusServiceCountStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MerchCuServiceCountModel? cusServicecount)
        getCusServiceCountState,
    required TResult Function() cusServiceCountFailedstate,
  }) {
    return getCusServiceCountState(cusServicecount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MerchCuServiceCountModel? cusServicecount)?
        getCusServiceCountState,
    TResult? Function()? cusServiceCountFailedstate,
  }) {
    return getCusServiceCountState?.call(cusServicecount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MerchCuServiceCountModel? cusServicecount)?
        getCusServiceCountState,
    TResult Function()? cusServiceCountFailedstate,
    required TResult orElse(),
  }) {
    if (getCusServiceCountState != null) {
      return getCusServiceCountState(cusServicecount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusServiceCountState value)
        getCusServiceCountState,
    required TResult Function(CusServiceCountFailedstate value)
        cusServiceCountFailedstate,
  }) {
    return getCusServiceCountState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusServiceCountState value)? getCusServiceCountState,
    TResult? Function(CusServiceCountFailedstate value)?
        cusServiceCountFailedstate,
  }) {
    return getCusServiceCountState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusServiceCountState value)? getCusServiceCountState,
    TResult Function(CusServiceCountFailedstate value)?
        cusServiceCountFailedstate,
    required TResult orElse(),
  }) {
    if (getCusServiceCountState != null) {
      return getCusServiceCountState(this);
    }
    return orElse();
  }
}

abstract class GetCusServiceCountState implements MerchCusServiceCountState {
  const factory GetCusServiceCountState(
          {required final MerchCuServiceCountModel? cusServicecount}) =
      _$GetCusServiceCountStateImpl;

  MerchCuServiceCountModel? get cusServicecount;

  /// Create a copy of MerchCusServiceCountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCusServiceCountStateImplCopyWith<_$GetCusServiceCountStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CusServiceCountFailedstateImplCopyWith<$Res> {
  factory _$$CusServiceCountFailedstateImplCopyWith(
          _$CusServiceCountFailedstateImpl value,
          $Res Function(_$CusServiceCountFailedstateImpl) then) =
      __$$CusServiceCountFailedstateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CusServiceCountFailedstateImplCopyWithImpl<$Res>
    extends _$MerchCusServiceCountStateCopyWithImpl<$Res,
        _$CusServiceCountFailedstateImpl>
    implements _$$CusServiceCountFailedstateImplCopyWith<$Res> {
  __$$CusServiceCountFailedstateImplCopyWithImpl(
      _$CusServiceCountFailedstateImpl _value,
      $Res Function(_$CusServiceCountFailedstateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchCusServiceCountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CusServiceCountFailedstateImpl implements CusServiceCountFailedstate {
  const _$CusServiceCountFailedstateImpl();

  @override
  String toString() {
    return 'MerchCusServiceCountState.cusServiceCountFailedstate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CusServiceCountFailedstateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MerchCuServiceCountModel? cusServicecount)
        getCusServiceCountState,
    required TResult Function() cusServiceCountFailedstate,
  }) {
    return cusServiceCountFailedstate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MerchCuServiceCountModel? cusServicecount)?
        getCusServiceCountState,
    TResult? Function()? cusServiceCountFailedstate,
  }) {
    return cusServiceCountFailedstate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MerchCuServiceCountModel? cusServicecount)?
        getCusServiceCountState,
    TResult Function()? cusServiceCountFailedstate,
    required TResult orElse(),
  }) {
    if (cusServiceCountFailedstate != null) {
      return cusServiceCountFailedstate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusServiceCountState value)
        getCusServiceCountState,
    required TResult Function(CusServiceCountFailedstate value)
        cusServiceCountFailedstate,
  }) {
    return cusServiceCountFailedstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusServiceCountState value)? getCusServiceCountState,
    TResult? Function(CusServiceCountFailedstate value)?
        cusServiceCountFailedstate,
  }) {
    return cusServiceCountFailedstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusServiceCountState value)? getCusServiceCountState,
    TResult Function(CusServiceCountFailedstate value)?
        cusServiceCountFailedstate,
    required TResult orElse(),
  }) {
    if (cusServiceCountFailedstate != null) {
      return cusServiceCountFailedstate(this);
    }
    return orElse();
  }
}

abstract class CusServiceCountFailedstate implements MerchCusServiceCountState {
  const factory CusServiceCountFailedstate() = _$CusServiceCountFailedstateImpl;
}
