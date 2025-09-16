// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_order_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SalesOrderDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SalesOrderDetailsInparasModel salesin, String searchQuery)
        getSalesOrderDetailsEvent,
    required TResult Function() clearSalesOrderDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            SalesOrderDetailsInparasModel salesin, String searchQuery)?
        getSalesOrderDetailsEvent,
    TResult? Function()? clearSalesOrderDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SalesOrderDetailsInparasModel salesin, String searchQuery)?
        getSalesOrderDetailsEvent,
    TResult Function()? clearSalesOrderDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSalesOrderDetailsEvent value)
        getSalesOrderDetailsEvent,
    required TResult Function(ClearSalesOrderDetails value)
        clearSalesOrderDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSalesOrderDetailsEvent value)?
        getSalesOrderDetailsEvent,
    TResult? Function(ClearSalesOrderDetails value)? clearSalesOrderDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSalesOrderDetailsEvent value)?
        getSalesOrderDetailsEvent,
    TResult Function(ClearSalesOrderDetails value)? clearSalesOrderDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesOrderDetailsEventCopyWith<$Res> {
  factory $SalesOrderDetailsEventCopyWith(SalesOrderDetailsEvent value,
          $Res Function(SalesOrderDetailsEvent) then) =
      _$SalesOrderDetailsEventCopyWithImpl<$Res, SalesOrderDetailsEvent>;
}

/// @nodoc
class _$SalesOrderDetailsEventCopyWithImpl<$Res,
        $Val extends SalesOrderDetailsEvent>
    implements $SalesOrderDetailsEventCopyWith<$Res> {
  _$SalesOrderDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalesOrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetSalesOrderDetailsEventImplCopyWith<$Res> {
  factory _$$GetSalesOrderDetailsEventImplCopyWith(
          _$GetSalesOrderDetailsEventImpl value,
          $Res Function(_$GetSalesOrderDetailsEventImpl) then) =
      __$$GetSalesOrderDetailsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SalesOrderDetailsInparasModel salesin, String searchQuery});
}

/// @nodoc
class __$$GetSalesOrderDetailsEventImplCopyWithImpl<$Res>
    extends _$SalesOrderDetailsEventCopyWithImpl<$Res,
        _$GetSalesOrderDetailsEventImpl>
    implements _$$GetSalesOrderDetailsEventImplCopyWith<$Res> {
  __$$GetSalesOrderDetailsEventImplCopyWithImpl(
      _$GetSalesOrderDetailsEventImpl _value,
      $Res Function(_$GetSalesOrderDetailsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesOrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salesin = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetSalesOrderDetailsEventImpl(
      salesin: null == salesin
          ? _value.salesin
          : salesin // ignore: cast_nullable_to_non_nullable
              as SalesOrderDetailsInparasModel,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSalesOrderDetailsEventImpl implements GetSalesOrderDetailsEvent {
  const _$GetSalesOrderDetailsEventImpl(
      {required this.salesin, required this.searchQuery});

  @override
  final SalesOrderDetailsInparasModel salesin;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'SalesOrderDetailsEvent.getSalesOrderDetailsEvent(salesin: $salesin, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSalesOrderDetailsEventImpl &&
            (identical(other.salesin, salesin) || other.salesin == salesin) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, salesin, searchQuery);

  /// Create a copy of SalesOrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSalesOrderDetailsEventImplCopyWith<_$GetSalesOrderDetailsEventImpl>
      get copyWith => __$$GetSalesOrderDetailsEventImplCopyWithImpl<
          _$GetSalesOrderDetailsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SalesOrderDetailsInparasModel salesin, String searchQuery)
        getSalesOrderDetailsEvent,
    required TResult Function() clearSalesOrderDetails,
  }) {
    return getSalesOrderDetailsEvent(salesin, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            SalesOrderDetailsInparasModel salesin, String searchQuery)?
        getSalesOrderDetailsEvent,
    TResult? Function()? clearSalesOrderDetails,
  }) {
    return getSalesOrderDetailsEvent?.call(salesin, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SalesOrderDetailsInparasModel salesin, String searchQuery)?
        getSalesOrderDetailsEvent,
    TResult Function()? clearSalesOrderDetails,
    required TResult orElse(),
  }) {
    if (getSalesOrderDetailsEvent != null) {
      return getSalesOrderDetailsEvent(salesin, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSalesOrderDetailsEvent value)
        getSalesOrderDetailsEvent,
    required TResult Function(ClearSalesOrderDetails value)
        clearSalesOrderDetails,
  }) {
    return getSalesOrderDetailsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSalesOrderDetailsEvent value)?
        getSalesOrderDetailsEvent,
    TResult? Function(ClearSalesOrderDetails value)? clearSalesOrderDetails,
  }) {
    return getSalesOrderDetailsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSalesOrderDetailsEvent value)?
        getSalesOrderDetailsEvent,
    TResult Function(ClearSalesOrderDetails value)? clearSalesOrderDetails,
    required TResult orElse(),
  }) {
    if (getSalesOrderDetailsEvent != null) {
      return getSalesOrderDetailsEvent(this);
    }
    return orElse();
  }
}

abstract class GetSalesOrderDetailsEvent implements SalesOrderDetailsEvent {
  const factory GetSalesOrderDetailsEvent(
      {required final SalesOrderDetailsInparasModel salesin,
      required final String searchQuery}) = _$GetSalesOrderDetailsEventImpl;

  SalesOrderDetailsInparasModel get salesin;
  String get searchQuery;

  /// Create a copy of SalesOrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSalesOrderDetailsEventImplCopyWith<_$GetSalesOrderDetailsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearSalesOrderDetailsImplCopyWith<$Res> {
  factory _$$ClearSalesOrderDetailsImplCopyWith(
          _$ClearSalesOrderDetailsImpl value,
          $Res Function(_$ClearSalesOrderDetailsImpl) then) =
      __$$ClearSalesOrderDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearSalesOrderDetailsImplCopyWithImpl<$Res>
    extends _$SalesOrderDetailsEventCopyWithImpl<$Res,
        _$ClearSalesOrderDetailsImpl>
    implements _$$ClearSalesOrderDetailsImplCopyWith<$Res> {
  __$$ClearSalesOrderDetailsImplCopyWithImpl(
      _$ClearSalesOrderDetailsImpl _value,
      $Res Function(_$ClearSalesOrderDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesOrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearSalesOrderDetailsImpl implements ClearSalesOrderDetails {
  const _$ClearSalesOrderDetailsImpl();

  @override
  String toString() {
    return 'SalesOrderDetailsEvent.clearSalesOrderDetails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearSalesOrderDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SalesOrderDetailsInparasModel salesin, String searchQuery)
        getSalesOrderDetailsEvent,
    required TResult Function() clearSalesOrderDetails,
  }) {
    return clearSalesOrderDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            SalesOrderDetailsInparasModel salesin, String searchQuery)?
        getSalesOrderDetailsEvent,
    TResult? Function()? clearSalesOrderDetails,
  }) {
    return clearSalesOrderDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SalesOrderDetailsInparasModel salesin, String searchQuery)?
        getSalesOrderDetailsEvent,
    TResult Function()? clearSalesOrderDetails,
    required TResult orElse(),
  }) {
    if (clearSalesOrderDetails != null) {
      return clearSalesOrderDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSalesOrderDetailsEvent value)
        getSalesOrderDetailsEvent,
    required TResult Function(ClearSalesOrderDetails value)
        clearSalesOrderDetails,
  }) {
    return clearSalesOrderDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSalesOrderDetailsEvent value)?
        getSalesOrderDetailsEvent,
    TResult? Function(ClearSalesOrderDetails value)? clearSalesOrderDetails,
  }) {
    return clearSalesOrderDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSalesOrderDetailsEvent value)?
        getSalesOrderDetailsEvent,
    TResult Function(ClearSalesOrderDetails value)? clearSalesOrderDetails,
    required TResult orElse(),
  }) {
    if (clearSalesOrderDetails != null) {
      return clearSalesOrderDetails(this);
    }
    return orElse();
  }
}

abstract class ClearSalesOrderDetails implements SalesOrderDetailsEvent {
  const factory ClearSalesOrderDetails() = _$ClearSalesOrderDetailsImpl;
}

/// @nodoc
mixin _$SalesOrderDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SalesOrderDetailsModel>? salesOrderDetails)
        getSalesOrderDetails,
    required TResult Function() salesOrderDetailsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SalesOrderDetailsModel>? salesOrderDetails)?
        getSalesOrderDetails,
    TResult? Function()? salesOrderDetailsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SalesOrderDetailsModel>? salesOrderDetails)?
        getSalesOrderDetails,
    TResult Function()? salesOrderDetailsFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSalesOrderDetails value) getSalesOrderDetails,
    required TResult Function(SalesOrderDetailsFailed value)
        salesOrderDetailsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSalesOrderDetails value)? getSalesOrderDetails,
    TResult? Function(SalesOrderDetailsFailed value)? salesOrderDetailsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSalesOrderDetails value)? getSalesOrderDetails,
    TResult Function(SalesOrderDetailsFailed value)? salesOrderDetailsFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesOrderDetailsStateCopyWith<$Res> {
  factory $SalesOrderDetailsStateCopyWith(SalesOrderDetailsState value,
          $Res Function(SalesOrderDetailsState) then) =
      _$SalesOrderDetailsStateCopyWithImpl<$Res, SalesOrderDetailsState>;
}

/// @nodoc
class _$SalesOrderDetailsStateCopyWithImpl<$Res,
        $Val extends SalesOrderDetailsState>
    implements $SalesOrderDetailsStateCopyWith<$Res> {
  _$SalesOrderDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalesOrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetSalesOrderDetailsImplCopyWith<$Res> {
  factory _$$GetSalesOrderDetailsImplCopyWith(_$GetSalesOrderDetailsImpl value,
          $Res Function(_$GetSalesOrderDetailsImpl) then) =
      __$$GetSalesOrderDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SalesOrderDetailsModel>? salesOrderDetails});
}

/// @nodoc
class __$$GetSalesOrderDetailsImplCopyWithImpl<$Res>
    extends _$SalesOrderDetailsStateCopyWithImpl<$Res,
        _$GetSalesOrderDetailsImpl>
    implements _$$GetSalesOrderDetailsImplCopyWith<$Res> {
  __$$GetSalesOrderDetailsImplCopyWithImpl(_$GetSalesOrderDetailsImpl _value,
      $Res Function(_$GetSalesOrderDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesOrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salesOrderDetails = freezed,
  }) {
    return _then(_$GetSalesOrderDetailsImpl(
      salesOrderDetails: freezed == salesOrderDetails
          ? _value._salesOrderDetails
          : salesOrderDetails // ignore: cast_nullable_to_non_nullable
              as List<SalesOrderDetailsModel>?,
    ));
  }
}

/// @nodoc

class _$GetSalesOrderDetailsImpl implements GetSalesOrderDetails {
  const _$GetSalesOrderDetailsImpl(
      {required final List<SalesOrderDetailsModel>? salesOrderDetails})
      : _salesOrderDetails = salesOrderDetails;

  final List<SalesOrderDetailsModel>? _salesOrderDetails;
  @override
  List<SalesOrderDetailsModel>? get salesOrderDetails {
    final value = _salesOrderDetails;
    if (value == null) return null;
    if (_salesOrderDetails is EqualUnmodifiableListView)
      return _salesOrderDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SalesOrderDetailsState.getSalesOrderDetails(salesOrderDetails: $salesOrderDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSalesOrderDetailsImpl &&
            const DeepCollectionEquality()
                .equals(other._salesOrderDetails, _salesOrderDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_salesOrderDetails));

  /// Create a copy of SalesOrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSalesOrderDetailsImplCopyWith<_$GetSalesOrderDetailsImpl>
      get copyWith =>
          __$$GetSalesOrderDetailsImplCopyWithImpl<_$GetSalesOrderDetailsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SalesOrderDetailsModel>? salesOrderDetails)
        getSalesOrderDetails,
    required TResult Function() salesOrderDetailsFailed,
  }) {
    return getSalesOrderDetails(salesOrderDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SalesOrderDetailsModel>? salesOrderDetails)?
        getSalesOrderDetails,
    TResult? Function()? salesOrderDetailsFailed,
  }) {
    return getSalesOrderDetails?.call(salesOrderDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SalesOrderDetailsModel>? salesOrderDetails)?
        getSalesOrderDetails,
    TResult Function()? salesOrderDetailsFailed,
    required TResult orElse(),
  }) {
    if (getSalesOrderDetails != null) {
      return getSalesOrderDetails(salesOrderDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSalesOrderDetails value) getSalesOrderDetails,
    required TResult Function(SalesOrderDetailsFailed value)
        salesOrderDetailsFailed,
  }) {
    return getSalesOrderDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSalesOrderDetails value)? getSalesOrderDetails,
    TResult? Function(SalesOrderDetailsFailed value)? salesOrderDetailsFailed,
  }) {
    return getSalesOrderDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSalesOrderDetails value)? getSalesOrderDetails,
    TResult Function(SalesOrderDetailsFailed value)? salesOrderDetailsFailed,
    required TResult orElse(),
  }) {
    if (getSalesOrderDetails != null) {
      return getSalesOrderDetails(this);
    }
    return orElse();
  }
}

abstract class GetSalesOrderDetails implements SalesOrderDetailsState {
  const factory GetSalesOrderDetails(
          {required final List<SalesOrderDetailsModel>? salesOrderDetails}) =
      _$GetSalesOrderDetailsImpl;

  List<SalesOrderDetailsModel>? get salesOrderDetails;

  /// Create a copy of SalesOrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSalesOrderDetailsImplCopyWith<_$GetSalesOrderDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SalesOrderDetailsFailedImplCopyWith<$Res> {
  factory _$$SalesOrderDetailsFailedImplCopyWith(
          _$SalesOrderDetailsFailedImpl value,
          $Res Function(_$SalesOrderDetailsFailedImpl) then) =
      __$$SalesOrderDetailsFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SalesOrderDetailsFailedImplCopyWithImpl<$Res>
    extends _$SalesOrderDetailsStateCopyWithImpl<$Res,
        _$SalesOrderDetailsFailedImpl>
    implements _$$SalesOrderDetailsFailedImplCopyWith<$Res> {
  __$$SalesOrderDetailsFailedImplCopyWithImpl(
      _$SalesOrderDetailsFailedImpl _value,
      $Res Function(_$SalesOrderDetailsFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesOrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SalesOrderDetailsFailedImpl implements SalesOrderDetailsFailed {
  const _$SalesOrderDetailsFailedImpl();

  @override
  String toString() {
    return 'SalesOrderDetailsState.salesOrderDetailsFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesOrderDetailsFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SalesOrderDetailsModel>? salesOrderDetails)
        getSalesOrderDetails,
    required TResult Function() salesOrderDetailsFailed,
  }) {
    return salesOrderDetailsFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SalesOrderDetailsModel>? salesOrderDetails)?
        getSalesOrderDetails,
    TResult? Function()? salesOrderDetailsFailed,
  }) {
    return salesOrderDetailsFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SalesOrderDetailsModel>? salesOrderDetails)?
        getSalesOrderDetails,
    TResult Function()? salesOrderDetailsFailed,
    required TResult orElse(),
  }) {
    if (salesOrderDetailsFailed != null) {
      return salesOrderDetailsFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSalesOrderDetails value) getSalesOrderDetails,
    required TResult Function(SalesOrderDetailsFailed value)
        salesOrderDetailsFailed,
  }) {
    return salesOrderDetailsFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSalesOrderDetails value)? getSalesOrderDetails,
    TResult? Function(SalesOrderDetailsFailed value)? salesOrderDetailsFailed,
  }) {
    return salesOrderDetailsFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSalesOrderDetails value)? getSalesOrderDetails,
    TResult Function(SalesOrderDetailsFailed value)? salesOrderDetailsFailed,
    required TResult orElse(),
  }) {
    if (salesOrderDetailsFailed != null) {
      return salesOrderDetailsFailed(this);
    }
    return orElse();
  }
}

abstract class SalesOrderDetailsFailed implements SalesOrderDetailsState {
  const factory SalesOrderDetailsFailed() = _$SalesOrderDetailsFailedImpl;
}
