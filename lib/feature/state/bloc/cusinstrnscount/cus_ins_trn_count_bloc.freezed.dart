// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cus_ins_trn_count_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CusInsTrnCountEvent {
  String get userId => throw _privateConstructorUsedError;
  String get cusId => throw _privateConstructorUsedError;
  String get fDate => throw _privateConstructorUsedError;
  String get toDate => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId, String cusId, String fDate, String toDate)
        gettrnCountsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String cusId, String fDate, String toDate)?
        gettrnCountsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String cusId, String fDate, String toDate)?
        gettrnCountsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GettrnCountsEvent value) gettrnCountsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GettrnCountsEvent value)? gettrnCountsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GettrnCountsEvent value)? gettrnCountsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CusInsTrnCountEventCopyWith<CusInsTrnCountEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusInsTrnCountEventCopyWith<$Res> {
  factory $CusInsTrnCountEventCopyWith(
          CusInsTrnCountEvent value, $Res Function(CusInsTrnCountEvent) then) =
      _$CusInsTrnCountEventCopyWithImpl<$Res, CusInsTrnCountEvent>;
  @useResult
  $Res call({String userId, String cusId, String fDate, String toDate});
}

/// @nodoc
class _$CusInsTrnCountEventCopyWithImpl<$Res, $Val extends CusInsTrnCountEvent>
    implements $CusInsTrnCountEventCopyWith<$Res> {
  _$CusInsTrnCountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? cusId = null,
    Object? fDate = null,
    Object? toDate = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      cusId: null == cusId
          ? _value.cusId
          : cusId // ignore: cast_nullable_to_non_nullable
              as String,
      fDate: null == fDate
          ? _value.fDate
          : fDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GettrnCountsEventImplCopyWith<$Res>
    implements $CusInsTrnCountEventCopyWith<$Res> {
  factory _$$GettrnCountsEventImplCopyWith(_$GettrnCountsEventImpl value,
          $Res Function(_$GettrnCountsEventImpl) then) =
      __$$GettrnCountsEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String cusId, String fDate, String toDate});
}

/// @nodoc
class __$$GettrnCountsEventImplCopyWithImpl<$Res>
    extends _$CusInsTrnCountEventCopyWithImpl<$Res, _$GettrnCountsEventImpl>
    implements _$$GettrnCountsEventImplCopyWith<$Res> {
  __$$GettrnCountsEventImplCopyWithImpl(_$GettrnCountsEventImpl _value,
      $Res Function(_$GettrnCountsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? cusId = null,
    Object? fDate = null,
    Object? toDate = null,
  }) {
    return _then(_$GettrnCountsEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      cusId: null == cusId
          ? _value.cusId
          : cusId // ignore: cast_nullable_to_non_nullable
              as String,
      fDate: null == fDate
          ? _value.fDate
          : fDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GettrnCountsEventImpl implements GettrnCountsEvent {
  const _$GettrnCountsEventImpl(
      {required this.userId,
      required this.cusId,
      required this.fDate,
      required this.toDate});

  @override
  final String userId;
  @override
  final String cusId;
  @override
  final String fDate;
  @override
  final String toDate;

  @override
  String toString() {
    return 'CusInsTrnCountEvent.gettrnCountsEvent(userId: $userId, cusId: $cusId, fDate: $fDate, toDate: $toDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GettrnCountsEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.cusId, cusId) || other.cusId == cusId) &&
            (identical(other.fDate, fDate) || other.fDate == fDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, cusId, fDate, toDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GettrnCountsEventImplCopyWith<_$GettrnCountsEventImpl> get copyWith =>
      __$$GettrnCountsEventImplCopyWithImpl<_$GettrnCountsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId, String cusId, String fDate, String toDate)
        gettrnCountsEvent,
  }) {
    return gettrnCountsEvent(userId, cusId, fDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String cusId, String fDate, String toDate)?
        gettrnCountsEvent,
  }) {
    return gettrnCountsEvent?.call(userId, cusId, fDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String cusId, String fDate, String toDate)?
        gettrnCountsEvent,
    required TResult orElse(),
  }) {
    if (gettrnCountsEvent != null) {
      return gettrnCountsEvent(userId, cusId, fDate, toDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GettrnCountsEvent value) gettrnCountsEvent,
  }) {
    return gettrnCountsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GettrnCountsEvent value)? gettrnCountsEvent,
  }) {
    return gettrnCountsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GettrnCountsEvent value)? gettrnCountsEvent,
    required TResult orElse(),
  }) {
    if (gettrnCountsEvent != null) {
      return gettrnCountsEvent(this);
    }
    return orElse();
  }
}

abstract class GettrnCountsEvent implements CusInsTrnCountEvent {
  const factory GettrnCountsEvent(
      {required final String userId,
      required final String cusId,
      required final String fDate,
      required final String toDate}) = _$GettrnCountsEventImpl;

  @override
  String get userId;
  @override
  String get cusId;
  @override
  String get fDate;
  @override
  String get toDate;
  @override
  @JsonKey(ignore: true)
  _$$GettrnCountsEventImplCopyWith<_$GettrnCountsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CusInsTrnCountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CusInsTrNCounts? counts) getTransactionCountState,
    required TResult Function() getcountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CusInsTrNCounts? counts)? getTransactionCountState,
    TResult? Function()? getcountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CusInsTrNCounts? counts)? getTransactionCountState,
    TResult Function()? getcountFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTransactionCountState value)
        getTransactionCountState,
    required TResult Function(GetcountFailedState value) getcountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTransactionCountState value)? getTransactionCountState,
    TResult? Function(GetcountFailedState value)? getcountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTransactionCountState value)? getTransactionCountState,
    TResult Function(GetcountFailedState value)? getcountFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusInsTrnCountStateCopyWith<$Res> {
  factory $CusInsTrnCountStateCopyWith(
          CusInsTrnCountState value, $Res Function(CusInsTrnCountState) then) =
      _$CusInsTrnCountStateCopyWithImpl<$Res, CusInsTrnCountState>;
}

/// @nodoc
class _$CusInsTrnCountStateCopyWithImpl<$Res, $Val extends CusInsTrnCountState>
    implements $CusInsTrnCountStateCopyWith<$Res> {
  _$CusInsTrnCountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTransactionCountStateImplCopyWith<$Res> {
  factory _$$GetTransactionCountStateImplCopyWith(
          _$GetTransactionCountStateImpl value,
          $Res Function(_$GetTransactionCountStateImpl) then) =
      __$$GetTransactionCountStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CusInsTrNCounts? counts});
}

/// @nodoc
class __$$GetTransactionCountStateImplCopyWithImpl<$Res>
    extends _$CusInsTrnCountStateCopyWithImpl<$Res,
        _$GetTransactionCountStateImpl>
    implements _$$GetTransactionCountStateImplCopyWith<$Res> {
  __$$GetTransactionCountStateImplCopyWithImpl(
      _$GetTransactionCountStateImpl _value,
      $Res Function(_$GetTransactionCountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counts = freezed,
  }) {
    return _then(_$GetTransactionCountStateImpl(
      counts: freezed == counts
          ? _value.counts
          : counts // ignore: cast_nullable_to_non_nullable
              as CusInsTrNCounts?,
    ));
  }
}

/// @nodoc

class _$GetTransactionCountStateImpl implements GetTransactionCountState {
  const _$GetTransactionCountStateImpl({required this.counts});

  @override
  final CusInsTrNCounts? counts;

  @override
  String toString() {
    return 'CusInsTrnCountState.getTransactionCountState(counts: $counts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTransactionCountStateImpl &&
            (identical(other.counts, counts) || other.counts == counts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, counts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTransactionCountStateImplCopyWith<_$GetTransactionCountStateImpl>
      get copyWith => __$$GetTransactionCountStateImplCopyWithImpl<
          _$GetTransactionCountStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CusInsTrNCounts? counts) getTransactionCountState,
    required TResult Function() getcountFailedState,
  }) {
    return getTransactionCountState(counts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CusInsTrNCounts? counts)? getTransactionCountState,
    TResult? Function()? getcountFailedState,
  }) {
    return getTransactionCountState?.call(counts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CusInsTrNCounts? counts)? getTransactionCountState,
    TResult Function()? getcountFailedState,
    required TResult orElse(),
  }) {
    if (getTransactionCountState != null) {
      return getTransactionCountState(counts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTransactionCountState value)
        getTransactionCountState,
    required TResult Function(GetcountFailedState value) getcountFailedState,
  }) {
    return getTransactionCountState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTransactionCountState value)? getTransactionCountState,
    TResult? Function(GetcountFailedState value)? getcountFailedState,
  }) {
    return getTransactionCountState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTransactionCountState value)? getTransactionCountState,
    TResult Function(GetcountFailedState value)? getcountFailedState,
    required TResult orElse(),
  }) {
    if (getTransactionCountState != null) {
      return getTransactionCountState(this);
    }
    return orElse();
  }
}

abstract class GetTransactionCountState implements CusInsTrnCountState {
  const factory GetTransactionCountState(
          {required final CusInsTrNCounts? counts}) =
      _$GetTransactionCountStateImpl;

  CusInsTrNCounts? get counts;
  @JsonKey(ignore: true)
  _$$GetTransactionCountStateImplCopyWith<_$GetTransactionCountStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetcountFailedStateImplCopyWith<$Res> {
  factory _$$GetcountFailedStateImplCopyWith(_$GetcountFailedStateImpl value,
          $Res Function(_$GetcountFailedStateImpl) then) =
      __$$GetcountFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetcountFailedStateImplCopyWithImpl<$Res>
    extends _$CusInsTrnCountStateCopyWithImpl<$Res, _$GetcountFailedStateImpl>
    implements _$$GetcountFailedStateImplCopyWith<$Res> {
  __$$GetcountFailedStateImplCopyWithImpl(_$GetcountFailedStateImpl _value,
      $Res Function(_$GetcountFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetcountFailedStateImpl implements GetcountFailedState {
  const _$GetcountFailedStateImpl();

  @override
  String toString() {
    return 'CusInsTrnCountState.getcountFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetcountFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CusInsTrNCounts? counts) getTransactionCountState,
    required TResult Function() getcountFailedState,
  }) {
    return getcountFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CusInsTrNCounts? counts)? getTransactionCountState,
    TResult? Function()? getcountFailedState,
  }) {
    return getcountFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CusInsTrNCounts? counts)? getTransactionCountState,
    TResult Function()? getcountFailedState,
    required TResult orElse(),
  }) {
    if (getcountFailedState != null) {
      return getcountFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTransactionCountState value)
        getTransactionCountState,
    required TResult Function(GetcountFailedState value) getcountFailedState,
  }) {
    return getcountFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTransactionCountState value)? getTransactionCountState,
    TResult? Function(GetcountFailedState value)? getcountFailedState,
  }) {
    return getcountFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTransactionCountState value)? getTransactionCountState,
    TResult Function(GetcountFailedState value)? getcountFailedState,
    required TResult orElse(),
  }) {
    if (getcountFailedState != null) {
      return getcountFailedState(this);
    }
    return orElse();
  }
}

abstract class GetcountFailedState implements CusInsTrnCountState {
  const factory GetcountFailedState() = _$GetcountFailedStateImpl;
}
