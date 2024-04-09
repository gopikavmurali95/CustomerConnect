// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cus_sales_orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CusSalesOrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SalesOrdersInModel salesIn, String searchQuery)
        getSalesOrdersEvent,
    required TResult Function() clearsalesOrdersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SalesOrdersInModel salesIn, String searchQuery)?
        getSalesOrdersEvent,
    TResult? Function()? clearsalesOrdersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SalesOrdersInModel salesIn, String searchQuery)?
        getSalesOrdersEvent,
    TResult Function()? clearsalesOrdersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSalesOrdersEvent value) getSalesOrdersEvent,
    required TResult Function(ClearsalesOrdersEvent value)
        clearsalesOrdersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSalesOrdersEvent value)? getSalesOrdersEvent,
    TResult? Function(ClearsalesOrdersEvent value)? clearsalesOrdersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSalesOrdersEvent value)? getSalesOrdersEvent,
    TResult Function(ClearsalesOrdersEvent value)? clearsalesOrdersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusSalesOrdersEventCopyWith<$Res> {
  factory $CusSalesOrdersEventCopyWith(
          CusSalesOrdersEvent value, $Res Function(CusSalesOrdersEvent) then) =
      _$CusSalesOrdersEventCopyWithImpl<$Res, CusSalesOrdersEvent>;
}

/// @nodoc
class _$CusSalesOrdersEventCopyWithImpl<$Res, $Val extends CusSalesOrdersEvent>
    implements $CusSalesOrdersEventCopyWith<$Res> {
  _$CusSalesOrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetSalesOrdersEventImplCopyWith<$Res> {
  factory _$$GetSalesOrdersEventImplCopyWith(_$GetSalesOrdersEventImpl value,
          $Res Function(_$GetSalesOrdersEventImpl) then) =
      __$$GetSalesOrdersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SalesOrdersInModel salesIn, String searchQuery});
}

/// @nodoc
class __$$GetSalesOrdersEventImplCopyWithImpl<$Res>
    extends _$CusSalesOrdersEventCopyWithImpl<$Res, _$GetSalesOrdersEventImpl>
    implements _$$GetSalesOrdersEventImplCopyWith<$Res> {
  __$$GetSalesOrdersEventImplCopyWithImpl(_$GetSalesOrdersEventImpl _value,
      $Res Function(_$GetSalesOrdersEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salesIn = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetSalesOrdersEventImpl(
      salesIn: null == salesIn
          ? _value.salesIn
          : salesIn // ignore: cast_nullable_to_non_nullable
              as SalesOrdersInModel,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSalesOrdersEventImpl implements GetSalesOrdersEvent {
  const _$GetSalesOrdersEventImpl(
      {required this.salesIn, required this.searchQuery});

  @override
  final SalesOrdersInModel salesIn;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'CusSalesOrdersEvent.getSalesOrdersEvent(salesIn: $salesIn, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSalesOrdersEventImpl &&
            (identical(other.salesIn, salesIn) || other.salesIn == salesIn) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, salesIn, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSalesOrdersEventImplCopyWith<_$GetSalesOrdersEventImpl> get copyWith =>
      __$$GetSalesOrdersEventImplCopyWithImpl<_$GetSalesOrdersEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SalesOrdersInModel salesIn, String searchQuery)
        getSalesOrdersEvent,
    required TResult Function() clearsalesOrdersEvent,
  }) {
    return getSalesOrdersEvent(salesIn, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SalesOrdersInModel salesIn, String searchQuery)?
        getSalesOrdersEvent,
    TResult? Function()? clearsalesOrdersEvent,
  }) {
    return getSalesOrdersEvent?.call(salesIn, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SalesOrdersInModel salesIn, String searchQuery)?
        getSalesOrdersEvent,
    TResult Function()? clearsalesOrdersEvent,
    required TResult orElse(),
  }) {
    if (getSalesOrdersEvent != null) {
      return getSalesOrdersEvent(salesIn, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSalesOrdersEvent value) getSalesOrdersEvent,
    required TResult Function(ClearsalesOrdersEvent value)
        clearsalesOrdersEvent,
  }) {
    return getSalesOrdersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSalesOrdersEvent value)? getSalesOrdersEvent,
    TResult? Function(ClearsalesOrdersEvent value)? clearsalesOrdersEvent,
  }) {
    return getSalesOrdersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSalesOrdersEvent value)? getSalesOrdersEvent,
    TResult Function(ClearsalesOrdersEvent value)? clearsalesOrdersEvent,
    required TResult orElse(),
  }) {
    if (getSalesOrdersEvent != null) {
      return getSalesOrdersEvent(this);
    }
    return orElse();
  }
}

abstract class GetSalesOrdersEvent implements CusSalesOrdersEvent {
  const factory GetSalesOrdersEvent(
      {required final SalesOrdersInModel salesIn,
      required final String searchQuery}) = _$GetSalesOrdersEventImpl;

  SalesOrdersInModel get salesIn;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetSalesOrdersEventImplCopyWith<_$GetSalesOrdersEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearsalesOrdersEventImplCopyWith<$Res> {
  factory _$$ClearsalesOrdersEventImplCopyWith(
          _$ClearsalesOrdersEventImpl value,
          $Res Function(_$ClearsalesOrdersEventImpl) then) =
      __$$ClearsalesOrdersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearsalesOrdersEventImplCopyWithImpl<$Res>
    extends _$CusSalesOrdersEventCopyWithImpl<$Res, _$ClearsalesOrdersEventImpl>
    implements _$$ClearsalesOrdersEventImplCopyWith<$Res> {
  __$$ClearsalesOrdersEventImplCopyWithImpl(_$ClearsalesOrdersEventImpl _value,
      $Res Function(_$ClearsalesOrdersEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearsalesOrdersEventImpl implements ClearsalesOrdersEvent {
  const _$ClearsalesOrdersEventImpl();

  @override
  String toString() {
    return 'CusSalesOrdersEvent.clearsalesOrdersEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearsalesOrdersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SalesOrdersInModel salesIn, String searchQuery)
        getSalesOrdersEvent,
    required TResult Function() clearsalesOrdersEvent,
  }) {
    return clearsalesOrdersEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SalesOrdersInModel salesIn, String searchQuery)?
        getSalesOrdersEvent,
    TResult? Function()? clearsalesOrdersEvent,
  }) {
    return clearsalesOrdersEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SalesOrdersInModel salesIn, String searchQuery)?
        getSalesOrdersEvent,
    TResult Function()? clearsalesOrdersEvent,
    required TResult orElse(),
  }) {
    if (clearsalesOrdersEvent != null) {
      return clearsalesOrdersEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSalesOrdersEvent value) getSalesOrdersEvent,
    required TResult Function(ClearsalesOrdersEvent value)
        clearsalesOrdersEvent,
  }) {
    return clearsalesOrdersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSalesOrdersEvent value)? getSalesOrdersEvent,
    TResult? Function(ClearsalesOrdersEvent value)? clearsalesOrdersEvent,
  }) {
    return clearsalesOrdersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSalesOrdersEvent value)? getSalesOrdersEvent,
    TResult Function(ClearsalesOrdersEvent value)? clearsalesOrdersEvent,
    required TResult orElse(),
  }) {
    if (clearsalesOrdersEvent != null) {
      return clearsalesOrdersEvent(this);
    }
    return orElse();
  }
}

abstract class ClearsalesOrdersEvent implements CusSalesOrdersEvent {
  const factory ClearsalesOrdersEvent() = _$ClearsalesOrdersEventImpl;
}

/// @nodoc
mixin _$CusSalesOrdersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SalesOrdersModel>? orders)
        getsalesOrdersState,
    required TResult Function() salesOrdersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SalesOrdersModel>? orders)? getsalesOrdersState,
    TResult? Function()? salesOrdersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SalesOrdersModel>? orders)? getsalesOrdersState,
    TResult Function()? salesOrdersFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetsalesOrdersState value) getsalesOrdersState,
    required TResult Function(SalesOrdersFailedState value)
        salesOrdersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetsalesOrdersState value)? getsalesOrdersState,
    TResult? Function(SalesOrdersFailedState value)? salesOrdersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetsalesOrdersState value)? getsalesOrdersState,
    TResult Function(SalesOrdersFailedState value)? salesOrdersFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusSalesOrdersStateCopyWith<$Res> {
  factory $CusSalesOrdersStateCopyWith(
          CusSalesOrdersState value, $Res Function(CusSalesOrdersState) then) =
      _$CusSalesOrdersStateCopyWithImpl<$Res, CusSalesOrdersState>;
}

/// @nodoc
class _$CusSalesOrdersStateCopyWithImpl<$Res, $Val extends CusSalesOrdersState>
    implements $CusSalesOrdersStateCopyWith<$Res> {
  _$CusSalesOrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetsalesOrdersStateImplCopyWith<$Res> {
  factory _$$GetsalesOrdersStateImplCopyWith(_$GetsalesOrdersStateImpl value,
          $Res Function(_$GetsalesOrdersStateImpl) then) =
      __$$GetsalesOrdersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SalesOrdersModel>? orders});
}

/// @nodoc
class __$$GetsalesOrdersStateImplCopyWithImpl<$Res>
    extends _$CusSalesOrdersStateCopyWithImpl<$Res, _$GetsalesOrdersStateImpl>
    implements _$$GetsalesOrdersStateImplCopyWith<$Res> {
  __$$GetsalesOrdersStateImplCopyWithImpl(_$GetsalesOrdersStateImpl _value,
      $Res Function(_$GetsalesOrdersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = freezed,
  }) {
    return _then(_$GetsalesOrdersStateImpl(
      orders: freezed == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<SalesOrdersModel>?,
    ));
  }
}

/// @nodoc

class _$GetsalesOrdersStateImpl implements GetsalesOrdersState {
  const _$GetsalesOrdersStateImpl(
      {required final List<SalesOrdersModel>? orders})
      : _orders = orders;

  final List<SalesOrdersModel>? _orders;
  @override
  List<SalesOrdersModel>? get orders {
    final value = _orders;
    if (value == null) return null;
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CusSalesOrdersState.getsalesOrdersState(orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetsalesOrdersStateImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetsalesOrdersStateImplCopyWith<_$GetsalesOrdersStateImpl> get copyWith =>
      __$$GetsalesOrdersStateImplCopyWithImpl<_$GetsalesOrdersStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SalesOrdersModel>? orders)
        getsalesOrdersState,
    required TResult Function() salesOrdersFailedState,
  }) {
    return getsalesOrdersState(orders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SalesOrdersModel>? orders)? getsalesOrdersState,
    TResult? Function()? salesOrdersFailedState,
  }) {
    return getsalesOrdersState?.call(orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SalesOrdersModel>? orders)? getsalesOrdersState,
    TResult Function()? salesOrdersFailedState,
    required TResult orElse(),
  }) {
    if (getsalesOrdersState != null) {
      return getsalesOrdersState(orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetsalesOrdersState value) getsalesOrdersState,
    required TResult Function(SalesOrdersFailedState value)
        salesOrdersFailedState,
  }) {
    return getsalesOrdersState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetsalesOrdersState value)? getsalesOrdersState,
    TResult? Function(SalesOrdersFailedState value)? salesOrdersFailedState,
  }) {
    return getsalesOrdersState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetsalesOrdersState value)? getsalesOrdersState,
    TResult Function(SalesOrdersFailedState value)? salesOrdersFailedState,
    required TResult orElse(),
  }) {
    if (getsalesOrdersState != null) {
      return getsalesOrdersState(this);
    }
    return orElse();
  }
}

abstract class GetsalesOrdersState implements CusSalesOrdersState {
  const factory GetsalesOrdersState(
          {required final List<SalesOrdersModel>? orders}) =
      _$GetsalesOrdersStateImpl;

  List<SalesOrdersModel>? get orders;
  @JsonKey(ignore: true)
  _$$GetsalesOrdersStateImplCopyWith<_$GetsalesOrdersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SalesOrdersFailedStateImplCopyWith<$Res> {
  factory _$$SalesOrdersFailedStateImplCopyWith(
          _$SalesOrdersFailedStateImpl value,
          $Res Function(_$SalesOrdersFailedStateImpl) then) =
      __$$SalesOrdersFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SalesOrdersFailedStateImplCopyWithImpl<$Res>
    extends _$CusSalesOrdersStateCopyWithImpl<$Res,
        _$SalesOrdersFailedStateImpl>
    implements _$$SalesOrdersFailedStateImplCopyWith<$Res> {
  __$$SalesOrdersFailedStateImplCopyWithImpl(
      _$SalesOrdersFailedStateImpl _value,
      $Res Function(_$SalesOrdersFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SalesOrdersFailedStateImpl implements SalesOrdersFailedState {
  const _$SalesOrdersFailedStateImpl();

  @override
  String toString() {
    return 'CusSalesOrdersState.salesOrdersFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesOrdersFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SalesOrdersModel>? orders)
        getsalesOrdersState,
    required TResult Function() salesOrdersFailedState,
  }) {
    return salesOrdersFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SalesOrdersModel>? orders)? getsalesOrdersState,
    TResult? Function()? salesOrdersFailedState,
  }) {
    return salesOrdersFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SalesOrdersModel>? orders)? getsalesOrdersState,
    TResult Function()? salesOrdersFailedState,
    required TResult orElse(),
  }) {
    if (salesOrdersFailedState != null) {
      return salesOrdersFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetsalesOrdersState value) getsalesOrdersState,
    required TResult Function(SalesOrdersFailedState value)
        salesOrdersFailedState,
  }) {
    return salesOrdersFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetsalesOrdersState value)? getsalesOrdersState,
    TResult? Function(SalesOrdersFailedState value)? salesOrdersFailedState,
  }) {
    return salesOrdersFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetsalesOrdersState value)? getsalesOrdersState,
    TResult Function(SalesOrdersFailedState value)? salesOrdersFailedState,
    required TResult orElse(),
  }) {
    if (salesOrdersFailedState != null) {
      return salesOrdersFailedState(this);
    }
    return orElse();
  }
}

abstract class SalesOrdersFailedState implements CusSalesOrdersState {
  const factory SalesOrdersFailedState() = _$SalesOrdersFailedStateImpl;
}
