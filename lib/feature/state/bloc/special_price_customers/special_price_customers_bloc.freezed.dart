// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'special_price_customers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SpecialPriceCustomersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userID, String fromDate, String todate, String searchQuery)
        getSpecialPriceCustomersEvent,
    required TResult Function() clearSpecialPriceCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userID, String fromDate, String todate, String searchQuery)?
        getSpecialPriceCustomersEvent,
    TResult? Function()? clearSpecialPriceCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userID, String fromDate, String todate, String searchQuery)?
        getSpecialPriceCustomersEvent,
    TResult Function()? clearSpecialPriceCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSpecialPriceCustomersEvent value)
        getSpecialPriceCustomersEvent,
    required TResult Function(ClearSpecialPriceCustomer value)
        clearSpecialPriceCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSpecialPriceCustomersEvent value)?
        getSpecialPriceCustomersEvent,
    TResult? Function(ClearSpecialPriceCustomer value)?
        clearSpecialPriceCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSpecialPriceCustomersEvent value)?
        getSpecialPriceCustomersEvent,
    TResult Function(ClearSpecialPriceCustomer value)?
        clearSpecialPriceCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialPriceCustomersEventCopyWith<$Res> {
  factory $SpecialPriceCustomersEventCopyWith(SpecialPriceCustomersEvent value,
          $Res Function(SpecialPriceCustomersEvent) then) =
      _$SpecialPriceCustomersEventCopyWithImpl<$Res,
          SpecialPriceCustomersEvent>;
}

/// @nodoc
class _$SpecialPriceCustomersEventCopyWithImpl<$Res,
        $Val extends SpecialPriceCustomersEvent>
    implements $SpecialPriceCustomersEventCopyWith<$Res> {
  _$SpecialPriceCustomersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetSpecialPriceCustomersEventImplCopyWith<$Res> {
  factory _$$GetSpecialPriceCustomersEventImplCopyWith(
          _$GetSpecialPriceCustomersEventImpl value,
          $Res Function(_$GetSpecialPriceCustomersEventImpl) then) =
      __$$GetSpecialPriceCustomersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String userID, String fromDate, String todate, String searchQuery});
}

/// @nodoc
class __$$GetSpecialPriceCustomersEventImplCopyWithImpl<$Res>
    extends _$SpecialPriceCustomersEventCopyWithImpl<$Res,
        _$GetSpecialPriceCustomersEventImpl>
    implements _$$GetSpecialPriceCustomersEventImplCopyWith<$Res> {
  __$$GetSpecialPriceCustomersEventImplCopyWithImpl(
      _$GetSpecialPriceCustomersEventImpl _value,
      $Res Function(_$GetSpecialPriceCustomersEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? fromDate = null,
    Object? todate = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetSpecialPriceCustomersEventImpl(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      todate: null == todate
          ? _value.todate
          : todate // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSpecialPriceCustomersEventImpl
    implements GetSpecialPriceCustomersEvent {
  const _$GetSpecialPriceCustomersEventImpl(
      {required this.userID,
      required this.fromDate,
      required this.todate,
      required this.searchQuery});

  @override
  final String userID;
  @override
  final String fromDate;
  @override
  final String todate;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'SpecialPriceCustomersEvent.getSpecialPriceCustomersEvent(userID: $userID, fromDate: $fromDate, todate: $todate, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSpecialPriceCustomersEventImpl &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.todate, todate) || other.todate == todate) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userID, fromDate, todate, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSpecialPriceCustomersEventImplCopyWith<
          _$GetSpecialPriceCustomersEventImpl>
      get copyWith => __$$GetSpecialPriceCustomersEventImplCopyWithImpl<
          _$GetSpecialPriceCustomersEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userID, String fromDate, String todate, String searchQuery)
        getSpecialPriceCustomersEvent,
    required TResult Function() clearSpecialPriceCustomer,
  }) {
    return getSpecialPriceCustomersEvent(userID, fromDate, todate, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userID, String fromDate, String todate, String searchQuery)?
        getSpecialPriceCustomersEvent,
    TResult? Function()? clearSpecialPriceCustomer,
  }) {
    return getSpecialPriceCustomersEvent?.call(
        userID, fromDate, todate, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userID, String fromDate, String todate, String searchQuery)?
        getSpecialPriceCustomersEvent,
    TResult Function()? clearSpecialPriceCustomer,
    required TResult orElse(),
  }) {
    if (getSpecialPriceCustomersEvent != null) {
      return getSpecialPriceCustomersEvent(
          userID, fromDate, todate, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSpecialPriceCustomersEvent value)
        getSpecialPriceCustomersEvent,
    required TResult Function(ClearSpecialPriceCustomer value)
        clearSpecialPriceCustomer,
  }) {
    return getSpecialPriceCustomersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSpecialPriceCustomersEvent value)?
        getSpecialPriceCustomersEvent,
    TResult? Function(ClearSpecialPriceCustomer value)?
        clearSpecialPriceCustomer,
  }) {
    return getSpecialPriceCustomersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSpecialPriceCustomersEvent value)?
        getSpecialPriceCustomersEvent,
    TResult Function(ClearSpecialPriceCustomer value)?
        clearSpecialPriceCustomer,
    required TResult orElse(),
  }) {
    if (getSpecialPriceCustomersEvent != null) {
      return getSpecialPriceCustomersEvent(this);
    }
    return orElse();
  }
}

abstract class GetSpecialPriceCustomersEvent
    implements SpecialPriceCustomersEvent {
  const factory GetSpecialPriceCustomersEvent(
      {required final String userID,
      required final String fromDate,
      required final String todate,
      required final String searchQuery}) = _$GetSpecialPriceCustomersEventImpl;

  String get userID;
  String get fromDate;
  String get todate;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetSpecialPriceCustomersEventImplCopyWith<
          _$GetSpecialPriceCustomersEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearSpecialPriceCustomerImplCopyWith<$Res> {
  factory _$$ClearSpecialPriceCustomerImplCopyWith(
          _$ClearSpecialPriceCustomerImpl value,
          $Res Function(_$ClearSpecialPriceCustomerImpl) then) =
      __$$ClearSpecialPriceCustomerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearSpecialPriceCustomerImplCopyWithImpl<$Res>
    extends _$SpecialPriceCustomersEventCopyWithImpl<$Res,
        _$ClearSpecialPriceCustomerImpl>
    implements _$$ClearSpecialPriceCustomerImplCopyWith<$Res> {
  __$$ClearSpecialPriceCustomerImplCopyWithImpl(
      _$ClearSpecialPriceCustomerImpl _value,
      $Res Function(_$ClearSpecialPriceCustomerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearSpecialPriceCustomerImpl implements ClearSpecialPriceCustomer {
  const _$ClearSpecialPriceCustomerImpl();

  @override
  String toString() {
    return 'SpecialPriceCustomersEvent.clearSpecialPriceCustomer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearSpecialPriceCustomerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userID, String fromDate, String todate, String searchQuery)
        getSpecialPriceCustomersEvent,
    required TResult Function() clearSpecialPriceCustomer,
  }) {
    return clearSpecialPriceCustomer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userID, String fromDate, String todate, String searchQuery)?
        getSpecialPriceCustomersEvent,
    TResult? Function()? clearSpecialPriceCustomer,
  }) {
    return clearSpecialPriceCustomer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userID, String fromDate, String todate, String searchQuery)?
        getSpecialPriceCustomersEvent,
    TResult Function()? clearSpecialPriceCustomer,
    required TResult orElse(),
  }) {
    if (clearSpecialPriceCustomer != null) {
      return clearSpecialPriceCustomer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSpecialPriceCustomersEvent value)
        getSpecialPriceCustomersEvent,
    required TResult Function(ClearSpecialPriceCustomer value)
        clearSpecialPriceCustomer,
  }) {
    return clearSpecialPriceCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSpecialPriceCustomersEvent value)?
        getSpecialPriceCustomersEvent,
    TResult? Function(ClearSpecialPriceCustomer value)?
        clearSpecialPriceCustomer,
  }) {
    return clearSpecialPriceCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSpecialPriceCustomersEvent value)?
        getSpecialPriceCustomersEvent,
    TResult Function(ClearSpecialPriceCustomer value)?
        clearSpecialPriceCustomer,
    required TResult orElse(),
  }) {
    if (clearSpecialPriceCustomer != null) {
      return clearSpecialPriceCustomer(this);
    }
    return orElse();
  }
}

abstract class ClearSpecialPriceCustomer implements SpecialPriceCustomersEvent {
  const factory ClearSpecialPriceCustomer() = _$ClearSpecialPriceCustomerImpl;
}

/// @nodoc
mixin _$SpecialPriceCustomersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SpecialPriceCustomerModel>? spCustomers)
        getSpecialPriceCustomers,
    required TResult Function() specialPriceCustomersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SpecialPriceCustomerModel>? spCustomers)?
        getSpecialPriceCustomers,
    TResult? Function()? specialPriceCustomersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SpecialPriceCustomerModel>? spCustomers)?
        getSpecialPriceCustomers,
    TResult Function()? specialPriceCustomersFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSpecialPriceCustomersState value)
        getSpecialPriceCustomers,
    required TResult Function(SpecialPriceCustomersFailedState value)
        specialPriceCustomersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSpecialPriceCustomersState value)?
        getSpecialPriceCustomers,
    TResult? Function(SpecialPriceCustomersFailedState value)?
        specialPriceCustomersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSpecialPriceCustomersState value)?
        getSpecialPriceCustomers,
    TResult Function(SpecialPriceCustomersFailedState value)?
        specialPriceCustomersFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialPriceCustomersStateCopyWith<$Res> {
  factory $SpecialPriceCustomersStateCopyWith(SpecialPriceCustomersState value,
          $Res Function(SpecialPriceCustomersState) then) =
      _$SpecialPriceCustomersStateCopyWithImpl<$Res,
          SpecialPriceCustomersState>;
}

/// @nodoc
class _$SpecialPriceCustomersStateCopyWithImpl<$Res,
        $Val extends SpecialPriceCustomersState>
    implements $SpecialPriceCustomersStateCopyWith<$Res> {
  _$SpecialPriceCustomersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetSpecialPriceCustomersStateImplCopyWith<$Res> {
  factory _$$GetSpecialPriceCustomersStateImplCopyWith(
          _$GetSpecialPriceCustomersStateImpl value,
          $Res Function(_$GetSpecialPriceCustomersStateImpl) then) =
      __$$GetSpecialPriceCustomersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SpecialPriceCustomerModel>? spCustomers});
}

/// @nodoc
class __$$GetSpecialPriceCustomersStateImplCopyWithImpl<$Res>
    extends _$SpecialPriceCustomersStateCopyWithImpl<$Res,
        _$GetSpecialPriceCustomersStateImpl>
    implements _$$GetSpecialPriceCustomersStateImplCopyWith<$Res> {
  __$$GetSpecialPriceCustomersStateImplCopyWithImpl(
      _$GetSpecialPriceCustomersStateImpl _value,
      $Res Function(_$GetSpecialPriceCustomersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spCustomers = freezed,
  }) {
    return _then(_$GetSpecialPriceCustomersStateImpl(
      spCustomers: freezed == spCustomers
          ? _value._spCustomers
          : spCustomers // ignore: cast_nullable_to_non_nullable
              as List<SpecialPriceCustomerModel>?,
    ));
  }
}

/// @nodoc

class _$GetSpecialPriceCustomersStateImpl
    implements GetSpecialPriceCustomersState {
  const _$GetSpecialPriceCustomersStateImpl(
      {required final List<SpecialPriceCustomerModel>? spCustomers})
      : _spCustomers = spCustomers;

  final List<SpecialPriceCustomerModel>? _spCustomers;
  @override
  List<SpecialPriceCustomerModel>? get spCustomers {
    final value = _spCustomers;
    if (value == null) return null;
    if (_spCustomers is EqualUnmodifiableListView) return _spCustomers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SpecialPriceCustomersState.getSpecialPriceCustomers(spCustomers: $spCustomers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSpecialPriceCustomersStateImpl &&
            const DeepCollectionEquality()
                .equals(other._spCustomers, _spCustomers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_spCustomers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSpecialPriceCustomersStateImplCopyWith<
          _$GetSpecialPriceCustomersStateImpl>
      get copyWith => __$$GetSpecialPriceCustomersStateImplCopyWithImpl<
          _$GetSpecialPriceCustomersStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SpecialPriceCustomerModel>? spCustomers)
        getSpecialPriceCustomers,
    required TResult Function() specialPriceCustomersFailedState,
  }) {
    return getSpecialPriceCustomers(spCustomers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SpecialPriceCustomerModel>? spCustomers)?
        getSpecialPriceCustomers,
    TResult? Function()? specialPriceCustomersFailedState,
  }) {
    return getSpecialPriceCustomers?.call(spCustomers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SpecialPriceCustomerModel>? spCustomers)?
        getSpecialPriceCustomers,
    TResult Function()? specialPriceCustomersFailedState,
    required TResult orElse(),
  }) {
    if (getSpecialPriceCustomers != null) {
      return getSpecialPriceCustomers(spCustomers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSpecialPriceCustomersState value)
        getSpecialPriceCustomers,
    required TResult Function(SpecialPriceCustomersFailedState value)
        specialPriceCustomersFailedState,
  }) {
    return getSpecialPriceCustomers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSpecialPriceCustomersState value)?
        getSpecialPriceCustomers,
    TResult? Function(SpecialPriceCustomersFailedState value)?
        specialPriceCustomersFailedState,
  }) {
    return getSpecialPriceCustomers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSpecialPriceCustomersState value)?
        getSpecialPriceCustomers,
    TResult Function(SpecialPriceCustomersFailedState value)?
        specialPriceCustomersFailedState,
    required TResult orElse(),
  }) {
    if (getSpecialPriceCustomers != null) {
      return getSpecialPriceCustomers(this);
    }
    return orElse();
  }
}

abstract class GetSpecialPriceCustomersState
    implements SpecialPriceCustomersState {
  const factory GetSpecialPriceCustomersState(
          {required final List<SpecialPriceCustomerModel>? spCustomers}) =
      _$GetSpecialPriceCustomersStateImpl;

  List<SpecialPriceCustomerModel>? get spCustomers;
  @JsonKey(ignore: true)
  _$$GetSpecialPriceCustomersStateImplCopyWith<
          _$GetSpecialPriceCustomersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpecialPriceCustomersFailedStateImplCopyWith<$Res> {
  factory _$$SpecialPriceCustomersFailedStateImplCopyWith(
          _$SpecialPriceCustomersFailedStateImpl value,
          $Res Function(_$SpecialPriceCustomersFailedStateImpl) then) =
      __$$SpecialPriceCustomersFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SpecialPriceCustomersFailedStateImplCopyWithImpl<$Res>
    extends _$SpecialPriceCustomersStateCopyWithImpl<$Res,
        _$SpecialPriceCustomersFailedStateImpl>
    implements _$$SpecialPriceCustomersFailedStateImplCopyWith<$Res> {
  __$$SpecialPriceCustomersFailedStateImplCopyWithImpl(
      _$SpecialPriceCustomersFailedStateImpl _value,
      $Res Function(_$SpecialPriceCustomersFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SpecialPriceCustomersFailedStateImpl
    implements SpecialPriceCustomersFailedState {
  const _$SpecialPriceCustomersFailedStateImpl();

  @override
  String toString() {
    return 'SpecialPriceCustomersState.specialPriceCustomersFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialPriceCustomersFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SpecialPriceCustomerModel>? spCustomers)
        getSpecialPriceCustomers,
    required TResult Function() specialPriceCustomersFailedState,
  }) {
    return specialPriceCustomersFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SpecialPriceCustomerModel>? spCustomers)?
        getSpecialPriceCustomers,
    TResult? Function()? specialPriceCustomersFailedState,
  }) {
    return specialPriceCustomersFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SpecialPriceCustomerModel>? spCustomers)?
        getSpecialPriceCustomers,
    TResult Function()? specialPriceCustomersFailedState,
    required TResult orElse(),
  }) {
    if (specialPriceCustomersFailedState != null) {
      return specialPriceCustomersFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSpecialPriceCustomersState value)
        getSpecialPriceCustomers,
    required TResult Function(SpecialPriceCustomersFailedState value)
        specialPriceCustomersFailedState,
  }) {
    return specialPriceCustomersFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSpecialPriceCustomersState value)?
        getSpecialPriceCustomers,
    TResult? Function(SpecialPriceCustomersFailedState value)?
        specialPriceCustomersFailedState,
  }) {
    return specialPriceCustomersFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSpecialPriceCustomersState value)?
        getSpecialPriceCustomers,
    TResult Function(SpecialPriceCustomersFailedState value)?
        specialPriceCustomersFailedState,
    required TResult orElse(),
  }) {
    if (specialPriceCustomersFailedState != null) {
      return specialPriceCustomersFailedState(this);
    }
    return orElse();
  }
}

abstract class SpecialPriceCustomersFailedState
    implements SpecialPriceCustomersState {
  const factory SpecialPriceCustomersFailedState() =
      _$SpecialPriceCustomersFailedStateImpl;
}
