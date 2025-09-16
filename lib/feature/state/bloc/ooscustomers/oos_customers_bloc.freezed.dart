// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oos_customers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OosCustomersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String searchQuery, String fromDate, String toDate)
        getOosCustomersEvent,
    required TResult Function() clearOosCustomersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchQuery, String fromDate, String toDate)?
        getOosCustomersEvent,
    TResult? Function()? clearOosCustomersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery, String fromDate, String toDate)?
        getOosCustomersEvent,
    TResult Function()? clearOosCustomersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOosCustomersEvent value) getOosCustomersEvent,
    required TResult Function(ClearOosCustomersEvent value)
        clearOosCustomersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOosCustomersEvent value)? getOosCustomersEvent,
    TResult? Function(ClearOosCustomersEvent value)? clearOosCustomersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOosCustomersEvent value)? getOosCustomersEvent,
    TResult Function(ClearOosCustomersEvent value)? clearOosCustomersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OosCustomersEventCopyWith<$Res> {
  factory $OosCustomersEventCopyWith(
          OosCustomersEvent value, $Res Function(OosCustomersEvent) then) =
      _$OosCustomersEventCopyWithImpl<$Res, OosCustomersEvent>;
}

/// @nodoc
class _$OosCustomersEventCopyWithImpl<$Res, $Val extends OosCustomersEvent>
    implements $OosCustomersEventCopyWith<$Res> {
  _$OosCustomersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OosCustomersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetOosCustomersEventImplCopyWith<$Res> {
  factory _$$GetOosCustomersEventImplCopyWith(_$GetOosCustomersEventImpl value,
          $Res Function(_$GetOosCustomersEventImpl) then) =
      __$$GetOosCustomersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchQuery, String fromDate, String toDate});
}

/// @nodoc
class __$$GetOosCustomersEventImplCopyWithImpl<$Res>
    extends _$OosCustomersEventCopyWithImpl<$Res, _$GetOosCustomersEventImpl>
    implements _$$GetOosCustomersEventImplCopyWith<$Res> {
  __$$GetOosCustomersEventImplCopyWithImpl(_$GetOosCustomersEventImpl _value,
      $Res Function(_$GetOosCustomersEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of OosCustomersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = null,
    Object? fromDate = null,
    Object? toDate = null,
  }) {
    return _then(_$GetOosCustomersEventImpl(
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$GetOosCustomersEventImpl implements GetOosCustomersEvent {
  const _$GetOosCustomersEventImpl(
      {required this.searchQuery,
      required this.fromDate,
      required this.toDate});

  @override
  final String searchQuery;
  @override
  final String fromDate;
  @override
  final String toDate;

  @override
  String toString() {
    return 'OosCustomersEvent.getOosCustomersEvent(searchQuery: $searchQuery, fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOosCustomersEventImpl &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchQuery, fromDate, toDate);

  /// Create a copy of OosCustomersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOosCustomersEventImplCopyWith<_$GetOosCustomersEventImpl>
      get copyWith =>
          __$$GetOosCustomersEventImplCopyWithImpl<_$GetOosCustomersEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String searchQuery, String fromDate, String toDate)
        getOosCustomersEvent,
    required TResult Function() clearOosCustomersEvent,
  }) {
    return getOosCustomersEvent(searchQuery, fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchQuery, String fromDate, String toDate)?
        getOosCustomersEvent,
    TResult? Function()? clearOosCustomersEvent,
  }) {
    return getOosCustomersEvent?.call(searchQuery, fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery, String fromDate, String toDate)?
        getOosCustomersEvent,
    TResult Function()? clearOosCustomersEvent,
    required TResult orElse(),
  }) {
    if (getOosCustomersEvent != null) {
      return getOosCustomersEvent(searchQuery, fromDate, toDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOosCustomersEvent value) getOosCustomersEvent,
    required TResult Function(ClearOosCustomersEvent value)
        clearOosCustomersEvent,
  }) {
    return getOosCustomersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOosCustomersEvent value)? getOosCustomersEvent,
    TResult? Function(ClearOosCustomersEvent value)? clearOosCustomersEvent,
  }) {
    return getOosCustomersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOosCustomersEvent value)? getOosCustomersEvent,
    TResult Function(ClearOosCustomersEvent value)? clearOosCustomersEvent,
    required TResult orElse(),
  }) {
    if (getOosCustomersEvent != null) {
      return getOosCustomersEvent(this);
    }
    return orElse();
  }
}

abstract class GetOosCustomersEvent implements OosCustomersEvent {
  const factory GetOosCustomersEvent(
      {required final String searchQuery,
      required final String fromDate,
      required final String toDate}) = _$GetOosCustomersEventImpl;

  String get searchQuery;
  String get fromDate;
  String get toDate;

  /// Create a copy of OosCustomersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetOosCustomersEventImplCopyWith<_$GetOosCustomersEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearOosCustomersEventImplCopyWith<$Res> {
  factory _$$ClearOosCustomersEventImplCopyWith(
          _$ClearOosCustomersEventImpl value,
          $Res Function(_$ClearOosCustomersEventImpl) then) =
      __$$ClearOosCustomersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearOosCustomersEventImplCopyWithImpl<$Res>
    extends _$OosCustomersEventCopyWithImpl<$Res, _$ClearOosCustomersEventImpl>
    implements _$$ClearOosCustomersEventImplCopyWith<$Res> {
  __$$ClearOosCustomersEventImplCopyWithImpl(
      _$ClearOosCustomersEventImpl _value,
      $Res Function(_$ClearOosCustomersEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of OosCustomersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearOosCustomersEventImpl implements ClearOosCustomersEvent {
  const _$ClearOosCustomersEventImpl();

  @override
  String toString() {
    return 'OosCustomersEvent.clearOosCustomersEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearOosCustomersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String searchQuery, String fromDate, String toDate)
        getOosCustomersEvent,
    required TResult Function() clearOosCustomersEvent,
  }) {
    return clearOosCustomersEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchQuery, String fromDate, String toDate)?
        getOosCustomersEvent,
    TResult? Function()? clearOosCustomersEvent,
  }) {
    return clearOosCustomersEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery, String fromDate, String toDate)?
        getOosCustomersEvent,
    TResult Function()? clearOosCustomersEvent,
    required TResult orElse(),
  }) {
    if (clearOosCustomersEvent != null) {
      return clearOosCustomersEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOosCustomersEvent value) getOosCustomersEvent,
    required TResult Function(ClearOosCustomersEvent value)
        clearOosCustomersEvent,
  }) {
    return clearOosCustomersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOosCustomersEvent value)? getOosCustomersEvent,
    TResult? Function(ClearOosCustomersEvent value)? clearOosCustomersEvent,
  }) {
    return clearOosCustomersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOosCustomersEvent value)? getOosCustomersEvent,
    TResult Function(ClearOosCustomersEvent value)? clearOosCustomersEvent,
    required TResult orElse(),
  }) {
    if (clearOosCustomersEvent != null) {
      return clearOosCustomersEvent(this);
    }
    return orElse();
  }
}

abstract class ClearOosCustomersEvent implements OosCustomersEvent {
  const factory ClearOosCustomersEvent() = _$ClearOosCustomersEventImpl;
}

/// @nodoc
mixin _$OosCustomersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OutOfStockCustomerModel>? customers)
        getOosCustomersState,
    required TResult Function() oosCustomersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OutOfStockCustomerModel>? customers)?
        getOosCustomersState,
    TResult? Function()? oosCustomersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OutOfStockCustomerModel>? customers)?
        getOosCustomersState,
    TResult Function()? oosCustomersFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOosCustomersState value) getOosCustomersState,
    required TResult Function(OosCustomersFailedState value)
        oosCustomersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOosCustomersState value)? getOosCustomersState,
    TResult? Function(OosCustomersFailedState value)? oosCustomersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOosCustomersState value)? getOosCustomersState,
    TResult Function(OosCustomersFailedState value)? oosCustomersFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OosCustomersStateCopyWith<$Res> {
  factory $OosCustomersStateCopyWith(
          OosCustomersState value, $Res Function(OosCustomersState) then) =
      _$OosCustomersStateCopyWithImpl<$Res, OosCustomersState>;
}

/// @nodoc
class _$OosCustomersStateCopyWithImpl<$Res, $Val extends OosCustomersState>
    implements $OosCustomersStateCopyWith<$Res> {
  _$OosCustomersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OosCustomersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetOosCustomersStateImplCopyWith<$Res> {
  factory _$$GetOosCustomersStateImplCopyWith(_$GetOosCustomersStateImpl value,
          $Res Function(_$GetOosCustomersStateImpl) then) =
      __$$GetOosCustomersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OutOfStockCustomerModel>? customers});
}

/// @nodoc
class __$$GetOosCustomersStateImplCopyWithImpl<$Res>
    extends _$OosCustomersStateCopyWithImpl<$Res, _$GetOosCustomersStateImpl>
    implements _$$GetOosCustomersStateImplCopyWith<$Res> {
  __$$GetOosCustomersStateImplCopyWithImpl(_$GetOosCustomersStateImpl _value,
      $Res Function(_$GetOosCustomersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OosCustomersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = freezed,
  }) {
    return _then(_$GetOosCustomersStateImpl(
      customers: freezed == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<OutOfStockCustomerModel>?,
    ));
  }
}

/// @nodoc

class _$GetOosCustomersStateImpl implements GetOosCustomersState {
  const _$GetOosCustomersStateImpl(
      {required final List<OutOfStockCustomerModel>? customers})
      : _customers = customers;

  final List<OutOfStockCustomerModel>? _customers;
  @override
  List<OutOfStockCustomerModel>? get customers {
    final value = _customers;
    if (value == null) return null;
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OosCustomersState.getOosCustomersState(customers: $customers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOosCustomersStateImpl &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_customers));

  /// Create a copy of OosCustomersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOosCustomersStateImplCopyWith<_$GetOosCustomersStateImpl>
      get copyWith =>
          __$$GetOosCustomersStateImplCopyWithImpl<_$GetOosCustomersStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OutOfStockCustomerModel>? customers)
        getOosCustomersState,
    required TResult Function() oosCustomersFailedState,
  }) {
    return getOosCustomersState(customers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OutOfStockCustomerModel>? customers)?
        getOosCustomersState,
    TResult? Function()? oosCustomersFailedState,
  }) {
    return getOosCustomersState?.call(customers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OutOfStockCustomerModel>? customers)?
        getOosCustomersState,
    TResult Function()? oosCustomersFailedState,
    required TResult orElse(),
  }) {
    if (getOosCustomersState != null) {
      return getOosCustomersState(customers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOosCustomersState value) getOosCustomersState,
    required TResult Function(OosCustomersFailedState value)
        oosCustomersFailedState,
  }) {
    return getOosCustomersState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOosCustomersState value)? getOosCustomersState,
    TResult? Function(OosCustomersFailedState value)? oosCustomersFailedState,
  }) {
    return getOosCustomersState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOosCustomersState value)? getOosCustomersState,
    TResult Function(OosCustomersFailedState value)? oosCustomersFailedState,
    required TResult orElse(),
  }) {
    if (getOosCustomersState != null) {
      return getOosCustomersState(this);
    }
    return orElse();
  }
}

abstract class GetOosCustomersState implements OosCustomersState {
  const factory GetOosCustomersState(
          {required final List<OutOfStockCustomerModel>? customers}) =
      _$GetOosCustomersStateImpl;

  List<OutOfStockCustomerModel>? get customers;

  /// Create a copy of OosCustomersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetOosCustomersStateImplCopyWith<_$GetOosCustomersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OosCustomersFailedStateImplCopyWith<$Res> {
  factory _$$OosCustomersFailedStateImplCopyWith(
          _$OosCustomersFailedStateImpl value,
          $Res Function(_$OosCustomersFailedStateImpl) then) =
      __$$OosCustomersFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OosCustomersFailedStateImplCopyWithImpl<$Res>
    extends _$OosCustomersStateCopyWithImpl<$Res, _$OosCustomersFailedStateImpl>
    implements _$$OosCustomersFailedStateImplCopyWith<$Res> {
  __$$OosCustomersFailedStateImplCopyWithImpl(
      _$OosCustomersFailedStateImpl _value,
      $Res Function(_$OosCustomersFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OosCustomersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OosCustomersFailedStateImpl implements OosCustomersFailedState {
  const _$OosCustomersFailedStateImpl();

  @override
  String toString() {
    return 'OosCustomersState.oosCustomersFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OosCustomersFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OutOfStockCustomerModel>? customers)
        getOosCustomersState,
    required TResult Function() oosCustomersFailedState,
  }) {
    return oosCustomersFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OutOfStockCustomerModel>? customers)?
        getOosCustomersState,
    TResult? Function()? oosCustomersFailedState,
  }) {
    return oosCustomersFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OutOfStockCustomerModel>? customers)?
        getOosCustomersState,
    TResult Function()? oosCustomersFailedState,
    required TResult orElse(),
  }) {
    if (oosCustomersFailedState != null) {
      return oosCustomersFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOosCustomersState value) getOosCustomersState,
    required TResult Function(OosCustomersFailedState value)
        oosCustomersFailedState,
  }) {
    return oosCustomersFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOosCustomersState value)? getOosCustomersState,
    TResult? Function(OosCustomersFailedState value)? oosCustomersFailedState,
  }) {
    return oosCustomersFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOosCustomersState value)? getOosCustomersState,
    TResult Function(OosCustomersFailedState value)? oosCustomersFailedState,
    required TResult orElse(),
  }) {
    if (oosCustomersFailedState != null) {
      return oosCustomersFailedState(this);
    }
    return orElse();
  }
}

abstract class OosCustomersFailedState implements OosCustomersState {
  const factory OosCustomersFailedState() = _$OosCustomersFailedStateImpl;
}
