// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_listing_count_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ItemListingCountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cusId, String route, String fromDate,
            String toDate, String pagenum, String searchString)
        getItmesCountEvent,
    required TResult Function() clearItemListingCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cusId, String route, String fromDate,
            String toDate, String pagenum, String searchString)?
        getItmesCountEvent,
    TResult? Function()? clearItemListingCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cusId, String route, String fromDate, String toDate,
            String pagenum, String searchString)?
        getItmesCountEvent,
    TResult Function()? clearItemListingCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetItmesCountEvent value) getItmesCountEvent,
    required TResult Function(ClearItemListingCount value)
        clearItemListingCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetItmesCountEvent value)? getItmesCountEvent,
    TResult? Function(ClearItemListingCount value)? clearItemListingCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetItmesCountEvent value)? getItmesCountEvent,
    TResult Function(ClearItemListingCount value)? clearItemListingCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemListingCountEventCopyWith<$Res> {
  factory $ItemListingCountEventCopyWith(ItemListingCountEvent value,
          $Res Function(ItemListingCountEvent) then) =
      _$ItemListingCountEventCopyWithImpl<$Res, ItemListingCountEvent>;
}

/// @nodoc
class _$ItemListingCountEventCopyWithImpl<$Res,
        $Val extends ItemListingCountEvent>
    implements $ItemListingCountEventCopyWith<$Res> {
  _$ItemListingCountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemListingCountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetItmesCountEventImplCopyWith<$Res> {
  factory _$$GetItmesCountEventImplCopyWith(_$GetItmesCountEventImpl value,
          $Res Function(_$GetItmesCountEventImpl) then) =
      __$$GetItmesCountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String cusId,
      String route,
      String fromDate,
      String toDate,
      String pagenum,
      String searchString});
}

/// @nodoc
class __$$GetItmesCountEventImplCopyWithImpl<$Res>
    extends _$ItemListingCountEventCopyWithImpl<$Res, _$GetItmesCountEventImpl>
    implements _$$GetItmesCountEventImplCopyWith<$Res> {
  __$$GetItmesCountEventImplCopyWithImpl(_$GetItmesCountEventImpl _value,
      $Res Function(_$GetItmesCountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemListingCountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cusId = null,
    Object? route = null,
    Object? fromDate = null,
    Object? toDate = null,
    Object? pagenum = null,
    Object? searchString = null,
  }) {
    return _then(_$GetItmesCountEventImpl(
      cusId: null == cusId
          ? _value.cusId
          : cusId // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
      pagenum: null == pagenum
          ? _value.pagenum
          : pagenum // ignore: cast_nullable_to_non_nullable
              as String,
      searchString: null == searchString
          ? _value.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetItmesCountEventImpl implements GetItmesCountEvent {
  const _$GetItmesCountEventImpl(
      {required this.cusId,
      required this.route,
      required this.fromDate,
      required this.toDate,
      required this.pagenum,
      required this.searchString});

  @override
  final String cusId;
  @override
  final String route;
  @override
  final String fromDate;
  @override
  final String toDate;
  @override
  final String pagenum;
  @override
  final String searchString;

  @override
  String toString() {
    return 'ItemListingCountEvent.getItmesCountEvent(cusId: $cusId, route: $route, fromDate: $fromDate, toDate: $toDate, pagenum: $pagenum, searchString: $searchString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetItmesCountEventImpl &&
            (identical(other.cusId, cusId) || other.cusId == cusId) &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.pagenum, pagenum) || other.pagenum == pagenum) &&
            (identical(other.searchString, searchString) ||
                other.searchString == searchString));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, cusId, route, fromDate, toDate, pagenum, searchString);

  /// Create a copy of ItemListingCountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetItmesCountEventImplCopyWith<_$GetItmesCountEventImpl> get copyWith =>
      __$$GetItmesCountEventImplCopyWithImpl<_$GetItmesCountEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cusId, String route, String fromDate,
            String toDate, String pagenum, String searchString)
        getItmesCountEvent,
    required TResult Function() clearItemListingCount,
  }) {
    return getItmesCountEvent(
        cusId, route, fromDate, toDate, pagenum, searchString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cusId, String route, String fromDate,
            String toDate, String pagenum, String searchString)?
        getItmesCountEvent,
    TResult? Function()? clearItemListingCount,
  }) {
    return getItmesCountEvent?.call(
        cusId, route, fromDate, toDate, pagenum, searchString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cusId, String route, String fromDate, String toDate,
            String pagenum, String searchString)?
        getItmesCountEvent,
    TResult Function()? clearItemListingCount,
    required TResult orElse(),
  }) {
    if (getItmesCountEvent != null) {
      return getItmesCountEvent(
          cusId, route, fromDate, toDate, pagenum, searchString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetItmesCountEvent value) getItmesCountEvent,
    required TResult Function(ClearItemListingCount value)
        clearItemListingCount,
  }) {
    return getItmesCountEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetItmesCountEvent value)? getItmesCountEvent,
    TResult? Function(ClearItemListingCount value)? clearItemListingCount,
  }) {
    return getItmesCountEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetItmesCountEvent value)? getItmesCountEvent,
    TResult Function(ClearItemListingCount value)? clearItemListingCount,
    required TResult orElse(),
  }) {
    if (getItmesCountEvent != null) {
      return getItmesCountEvent(this);
    }
    return orElse();
  }
}

abstract class GetItmesCountEvent implements ItemListingCountEvent {
  const factory GetItmesCountEvent(
      {required final String cusId,
      required final String route,
      required final String fromDate,
      required final String toDate,
      required final String pagenum,
      required final String searchString}) = _$GetItmesCountEventImpl;

  String get cusId;
  String get route;
  String get fromDate;
  String get toDate;
  String get pagenum;
  String get searchString;

  /// Create a copy of ItemListingCountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetItmesCountEventImplCopyWith<_$GetItmesCountEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearItemListingCountImplCopyWith<$Res> {
  factory _$$ClearItemListingCountImplCopyWith(
          _$ClearItemListingCountImpl value,
          $Res Function(_$ClearItemListingCountImpl) then) =
      __$$ClearItemListingCountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearItemListingCountImplCopyWithImpl<$Res>
    extends _$ItemListingCountEventCopyWithImpl<$Res,
        _$ClearItemListingCountImpl>
    implements _$$ClearItemListingCountImplCopyWith<$Res> {
  __$$ClearItemListingCountImplCopyWithImpl(_$ClearItemListingCountImpl _value,
      $Res Function(_$ClearItemListingCountImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemListingCountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearItemListingCountImpl implements ClearItemListingCount {
  const _$ClearItemListingCountImpl();

  @override
  String toString() {
    return 'ItemListingCountEvent.clearItemListingCount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearItemListingCountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cusId, String route, String fromDate,
            String toDate, String pagenum, String searchString)
        getItmesCountEvent,
    required TResult Function() clearItemListingCount,
  }) {
    return clearItemListingCount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cusId, String route, String fromDate,
            String toDate, String pagenum, String searchString)?
        getItmesCountEvent,
    TResult? Function()? clearItemListingCount,
  }) {
    return clearItemListingCount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cusId, String route, String fromDate, String toDate,
            String pagenum, String searchString)?
        getItmesCountEvent,
    TResult Function()? clearItemListingCount,
    required TResult orElse(),
  }) {
    if (clearItemListingCount != null) {
      return clearItemListingCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetItmesCountEvent value) getItmesCountEvent,
    required TResult Function(ClearItemListingCount value)
        clearItemListingCount,
  }) {
    return clearItemListingCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetItmesCountEvent value)? getItmesCountEvent,
    TResult? Function(ClearItemListingCount value)? clearItemListingCount,
  }) {
    return clearItemListingCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetItmesCountEvent value)? getItmesCountEvent,
    TResult Function(ClearItemListingCount value)? clearItemListingCount,
    required TResult orElse(),
  }) {
    if (clearItemListingCount != null) {
      return clearItemListingCount(this);
    }
    return orElse();
  }
}

abstract class ClearItemListingCount implements ItemListingCountEvent {
  const factory ClearItemListingCount() = _$ClearItemListingCountImpl;
}

/// @nodoc
mixin _$ItemListingCountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemListingCount? count) getItemListCountState,
    required TResult Function() itemCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemListingCount? count)? getItemListCountState,
    TResult? Function()? itemCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemListingCount? count)? getItemListCountState,
    TResult Function()? itemCountFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetItemListCountState value)
        getItemListCountState,
    required TResult Function(ItemCountFailedState value) itemCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetItemListCountState value)? getItemListCountState,
    TResult? Function(ItemCountFailedState value)? itemCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetItemListCountState value)? getItemListCountState,
    TResult Function(ItemCountFailedState value)? itemCountFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemListingCountStateCopyWith<$Res> {
  factory $ItemListingCountStateCopyWith(ItemListingCountState value,
          $Res Function(ItemListingCountState) then) =
      _$ItemListingCountStateCopyWithImpl<$Res, ItemListingCountState>;
}

/// @nodoc
class _$ItemListingCountStateCopyWithImpl<$Res,
        $Val extends ItemListingCountState>
    implements $ItemListingCountStateCopyWith<$Res> {
  _$ItemListingCountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemListingCountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetItemListCountStateImplCopyWith<$Res> {
  factory _$$GetItemListCountStateImplCopyWith(
          _$GetItemListCountStateImpl value,
          $Res Function(_$GetItemListCountStateImpl) then) =
      __$$GetItemListCountStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ItemListingCount? count});
}

/// @nodoc
class __$$GetItemListCountStateImplCopyWithImpl<$Res>
    extends _$ItemListingCountStateCopyWithImpl<$Res,
        _$GetItemListCountStateImpl>
    implements _$$GetItemListCountStateImplCopyWith<$Res> {
  __$$GetItemListCountStateImplCopyWithImpl(_$GetItemListCountStateImpl _value,
      $Res Function(_$GetItemListCountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemListingCountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_$GetItemListCountStateImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as ItemListingCount?,
    ));
  }
}

/// @nodoc

class _$GetItemListCountStateImpl implements GetItemListCountState {
  const _$GetItemListCountStateImpl({required this.count});

  @override
  final ItemListingCount? count;

  @override
  String toString() {
    return 'ItemListingCountState.getItemListCountState(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetItemListCountStateImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  /// Create a copy of ItemListingCountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetItemListCountStateImplCopyWith<_$GetItemListCountStateImpl>
      get copyWith => __$$GetItemListCountStateImplCopyWithImpl<
          _$GetItemListCountStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemListingCount? count) getItemListCountState,
    required TResult Function() itemCountFailedState,
  }) {
    return getItemListCountState(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemListingCount? count)? getItemListCountState,
    TResult? Function()? itemCountFailedState,
  }) {
    return getItemListCountState?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemListingCount? count)? getItemListCountState,
    TResult Function()? itemCountFailedState,
    required TResult orElse(),
  }) {
    if (getItemListCountState != null) {
      return getItemListCountState(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetItemListCountState value)
        getItemListCountState,
    required TResult Function(ItemCountFailedState value) itemCountFailedState,
  }) {
    return getItemListCountState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetItemListCountState value)? getItemListCountState,
    TResult? Function(ItemCountFailedState value)? itemCountFailedState,
  }) {
    return getItemListCountState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetItemListCountState value)? getItemListCountState,
    TResult Function(ItemCountFailedState value)? itemCountFailedState,
    required TResult orElse(),
  }) {
    if (getItemListCountState != null) {
      return getItemListCountState(this);
    }
    return orElse();
  }
}

abstract class GetItemListCountState implements ItemListingCountState {
  const factory GetItemListCountState(
      {required final ItemListingCount? count}) = _$GetItemListCountStateImpl;

  ItemListingCount? get count;

  /// Create a copy of ItemListingCountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetItemListCountStateImplCopyWith<_$GetItemListCountStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemCountFailedStateImplCopyWith<$Res> {
  factory _$$ItemCountFailedStateImplCopyWith(_$ItemCountFailedStateImpl value,
          $Res Function(_$ItemCountFailedStateImpl) then) =
      __$$ItemCountFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ItemCountFailedStateImplCopyWithImpl<$Res>
    extends _$ItemListingCountStateCopyWithImpl<$Res,
        _$ItemCountFailedStateImpl>
    implements _$$ItemCountFailedStateImplCopyWith<$Res> {
  __$$ItemCountFailedStateImplCopyWithImpl(_$ItemCountFailedStateImpl _value,
      $Res Function(_$ItemCountFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemListingCountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ItemCountFailedStateImpl implements ItemCountFailedState {
  const _$ItemCountFailedStateImpl();

  @override
  String toString() {
    return 'ItemListingCountState.itemCountFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemCountFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemListingCount? count) getItemListCountState,
    required TResult Function() itemCountFailedState,
  }) {
    return itemCountFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemListingCount? count)? getItemListCountState,
    TResult? Function()? itemCountFailedState,
  }) {
    return itemCountFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemListingCount? count)? getItemListCountState,
    TResult Function()? itemCountFailedState,
    required TResult orElse(),
  }) {
    if (itemCountFailedState != null) {
      return itemCountFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetItemListCountState value)
        getItemListCountState,
    required TResult Function(ItemCountFailedState value) itemCountFailedState,
  }) {
    return itemCountFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetItemListCountState value)? getItemListCountState,
    TResult? Function(ItemCountFailedState value)? itemCountFailedState,
  }) {
    return itemCountFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetItemListCountState value)? getItemListCountState,
    TResult Function(ItemCountFailedState value)? itemCountFailedState,
    required TResult orElse(),
  }) {
    if (itemCountFailedState != null) {
      return itemCountFailedState(this);
    }
    return orElse();
  }
}

abstract class ItemCountFailedState implements ItemListingCountState {
  const factory ItemCountFailedState() = _$ItemCountFailedStateImpl;
}
