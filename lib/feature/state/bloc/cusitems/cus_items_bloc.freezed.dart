// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cus_items_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CusItemsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cusID, String route, String fromDate,
            String toDate, String pageNum, String searchQuery)
        getItemsEvent,
    required TResult Function() clearItemsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cusID, String route, String fromDate,
            String toDate, String pageNum, String searchQuery)?
        getItemsEvent,
    TResult? Function()? clearItemsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cusID, String route, String fromDate, String toDate,
            String pageNum, String searchQuery)?
        getItemsEvent,
    TResult Function()? clearItemsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetItemsEvent value) getItemsEvent,
    required TResult Function(ClearItemsEvent value) clearItemsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetItemsEvent value)? getItemsEvent,
    TResult? Function(ClearItemsEvent value)? clearItemsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetItemsEvent value)? getItemsEvent,
    TResult Function(ClearItemsEvent value)? clearItemsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusItemsEventCopyWith<$Res> {
  factory $CusItemsEventCopyWith(
          CusItemsEvent value, $Res Function(CusItemsEvent) then) =
      _$CusItemsEventCopyWithImpl<$Res, CusItemsEvent>;
}

/// @nodoc
class _$CusItemsEventCopyWithImpl<$Res, $Val extends CusItemsEvent>
    implements $CusItemsEventCopyWith<$Res> {
  _$CusItemsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetItemsEventImplCopyWith<$Res> {
  factory _$$GetItemsEventImplCopyWith(
          _$GetItemsEventImpl value, $Res Function(_$GetItemsEventImpl) then) =
      __$$GetItemsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String cusID,
      String route,
      String fromDate,
      String toDate,
      String pageNum,
      String searchQuery});
}

/// @nodoc
class __$$GetItemsEventImplCopyWithImpl<$Res>
    extends _$CusItemsEventCopyWithImpl<$Res, _$GetItemsEventImpl>
    implements _$$GetItemsEventImplCopyWith<$Res> {
  __$$GetItemsEventImplCopyWithImpl(
      _$GetItemsEventImpl _value, $Res Function(_$GetItemsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cusID = null,
    Object? route = null,
    Object? fromDate = null,
    Object? toDate = null,
    Object? pageNum = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetItemsEventImpl(
      cusID: null == cusID
          ? _value.cusID
          : cusID // ignore: cast_nullable_to_non_nullable
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
      pageNum: null == pageNum
          ? _value.pageNum
          : pageNum // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetItemsEventImpl implements GetItemsEvent {
  const _$GetItemsEventImpl(
      {required this.cusID,
      required this.route,
      required this.fromDate,
      required this.toDate,
      required this.pageNum,
      required this.searchQuery});

  @override
  final String cusID;
  @override
  final String route;
  @override
  final String fromDate;
  @override
  final String toDate;
  @override
  final String pageNum;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'CusItemsEvent.getItemsEvent(cusID: $cusID, route: $route, fromDate: $fromDate, toDate: $toDate, pageNum: $pageNum, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetItemsEventImpl &&
            (identical(other.cusID, cusID) || other.cusID == cusID) &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.pageNum, pageNum) || other.pageNum == pageNum) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, cusID, route, fromDate, toDate, pageNum, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetItemsEventImplCopyWith<_$GetItemsEventImpl> get copyWith =>
      __$$GetItemsEventImplCopyWithImpl<_$GetItemsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cusID, String route, String fromDate,
            String toDate, String pageNum, String searchQuery)
        getItemsEvent,
    required TResult Function() clearItemsEvent,
  }) {
    return getItemsEvent(cusID, route, fromDate, toDate, pageNum, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cusID, String route, String fromDate,
            String toDate, String pageNum, String searchQuery)?
        getItemsEvent,
    TResult? Function()? clearItemsEvent,
  }) {
    return getItemsEvent?.call(
        cusID, route, fromDate, toDate, pageNum, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cusID, String route, String fromDate, String toDate,
            String pageNum, String searchQuery)?
        getItemsEvent,
    TResult Function()? clearItemsEvent,
    required TResult orElse(),
  }) {
    if (getItemsEvent != null) {
      return getItemsEvent(
          cusID, route, fromDate, toDate, pageNum, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetItemsEvent value) getItemsEvent,
    required TResult Function(ClearItemsEvent value) clearItemsEvent,
  }) {
    return getItemsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetItemsEvent value)? getItemsEvent,
    TResult? Function(ClearItemsEvent value)? clearItemsEvent,
  }) {
    return getItemsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetItemsEvent value)? getItemsEvent,
    TResult Function(ClearItemsEvent value)? clearItemsEvent,
    required TResult orElse(),
  }) {
    if (getItemsEvent != null) {
      return getItemsEvent(this);
    }
    return orElse();
  }
}

abstract class GetItemsEvent implements CusItemsEvent {
  const factory GetItemsEvent(
      {required final String cusID,
      required final String route,
      required final String fromDate,
      required final String toDate,
      required final String pageNum,
      required final String searchQuery}) = _$GetItemsEventImpl;

  String get cusID;
  String get route;
  String get fromDate;
  String get toDate;
  String get pageNum;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetItemsEventImplCopyWith<_$GetItemsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearItemsEventImplCopyWith<$Res> {
  factory _$$ClearItemsEventImplCopyWith(_$ClearItemsEventImpl value,
          $Res Function(_$ClearItemsEventImpl) then) =
      __$$ClearItemsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearItemsEventImplCopyWithImpl<$Res>
    extends _$CusItemsEventCopyWithImpl<$Res, _$ClearItemsEventImpl>
    implements _$$ClearItemsEventImplCopyWith<$Res> {
  __$$ClearItemsEventImplCopyWithImpl(
      _$ClearItemsEventImpl _value, $Res Function(_$ClearItemsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearItemsEventImpl implements ClearItemsEvent {
  const _$ClearItemsEventImpl();

  @override
  String toString() {
    return 'CusItemsEvent.clearItemsEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearItemsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cusID, String route, String fromDate,
            String toDate, String pageNum, String searchQuery)
        getItemsEvent,
    required TResult Function() clearItemsEvent,
  }) {
    return clearItemsEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cusID, String route, String fromDate,
            String toDate, String pageNum, String searchQuery)?
        getItemsEvent,
    TResult? Function()? clearItemsEvent,
  }) {
    return clearItemsEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cusID, String route, String fromDate, String toDate,
            String pageNum, String searchQuery)?
        getItemsEvent,
    TResult Function()? clearItemsEvent,
    required TResult orElse(),
  }) {
    if (clearItemsEvent != null) {
      return clearItemsEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetItemsEvent value) getItemsEvent,
    required TResult Function(ClearItemsEvent value) clearItemsEvent,
  }) {
    return clearItemsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetItemsEvent value)? getItemsEvent,
    TResult? Function(ClearItemsEvent value)? clearItemsEvent,
  }) {
    return clearItemsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetItemsEvent value)? getItemsEvent,
    TResult Function(ClearItemsEvent value)? clearItemsEvent,
    required TResult orElse(),
  }) {
    if (clearItemsEvent != null) {
      return clearItemsEvent(this);
    }
    return orElse();
  }
}

abstract class ClearItemsEvent implements CusItemsEvent {
  const factory ClearItemsEvent() = _$ClearItemsEventImpl;
}

/// @nodoc
mixin _$CusItemsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusItemsModel>? items, bool isLoading)
        getCusItemsState,
    required TResult Function() getitemsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusItemsModel>? items, bool isLoading)?
        getCusItemsState,
    TResult? Function()? getitemsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusItemsModel>? items, bool isLoading)?
        getCusItemsState,
    TResult Function()? getitemsFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusItemsState value) getCusItemsState,
    required TResult Function(GetitemsFailedState value) getitemsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusItemsState value)? getCusItemsState,
    TResult? Function(GetitemsFailedState value)? getitemsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusItemsState value)? getCusItemsState,
    TResult Function(GetitemsFailedState value)? getitemsFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusItemsStateCopyWith<$Res> {
  factory $CusItemsStateCopyWith(
          CusItemsState value, $Res Function(CusItemsState) then) =
      _$CusItemsStateCopyWithImpl<$Res, CusItemsState>;
}

/// @nodoc
class _$CusItemsStateCopyWithImpl<$Res, $Val extends CusItemsState>
    implements $CusItemsStateCopyWith<$Res> {
  _$CusItemsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCusItemsStateImplCopyWith<$Res> {
  factory _$$GetCusItemsStateImplCopyWith(_$GetCusItemsStateImpl value,
          $Res Function(_$GetCusItemsStateImpl) then) =
      __$$GetCusItemsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CusItemsModel>? items, bool isLoading});
}

/// @nodoc
class __$$GetCusItemsStateImplCopyWithImpl<$Res>
    extends _$CusItemsStateCopyWithImpl<$Res, _$GetCusItemsStateImpl>
    implements _$$GetCusItemsStateImplCopyWith<$Res> {
  __$$GetCusItemsStateImplCopyWithImpl(_$GetCusItemsStateImpl _value,
      $Res Function(_$GetCusItemsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$GetCusItemsStateImpl(
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CusItemsModel>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetCusItemsStateImpl implements GetCusItemsState {
  const _$GetCusItemsStateImpl(
      {required final List<CusItemsModel>? items, required this.isLoading})
      : _items = items;

  final List<CusItemsModel>? _items;
  @override
  List<CusItemsModel>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'CusItemsState.getCusItemsState(items: $items, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCusItemsStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCusItemsStateImplCopyWith<_$GetCusItemsStateImpl> get copyWith =>
      __$$GetCusItemsStateImplCopyWithImpl<_$GetCusItemsStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusItemsModel>? items, bool isLoading)
        getCusItemsState,
    required TResult Function() getitemsFailedState,
  }) {
    return getCusItemsState(items, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusItemsModel>? items, bool isLoading)?
        getCusItemsState,
    TResult? Function()? getitemsFailedState,
  }) {
    return getCusItemsState?.call(items, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusItemsModel>? items, bool isLoading)?
        getCusItemsState,
    TResult Function()? getitemsFailedState,
    required TResult orElse(),
  }) {
    if (getCusItemsState != null) {
      return getCusItemsState(items, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusItemsState value) getCusItemsState,
    required TResult Function(GetitemsFailedState value) getitemsFailedState,
  }) {
    return getCusItemsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusItemsState value)? getCusItemsState,
    TResult? Function(GetitemsFailedState value)? getitemsFailedState,
  }) {
    return getCusItemsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusItemsState value)? getCusItemsState,
    TResult Function(GetitemsFailedState value)? getitemsFailedState,
    required TResult orElse(),
  }) {
    if (getCusItemsState != null) {
      return getCusItemsState(this);
    }
    return orElse();
  }
}

abstract class GetCusItemsState implements CusItemsState {
  const factory GetCusItemsState(
      {required final List<CusItemsModel>? items,
      required final bool isLoading}) = _$GetCusItemsStateImpl;

  List<CusItemsModel>? get items;
  bool get isLoading;
  @JsonKey(ignore: true)
  _$$GetCusItemsStateImplCopyWith<_$GetCusItemsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetitemsFailedStateImplCopyWith<$Res> {
  factory _$$GetitemsFailedStateImplCopyWith(_$GetitemsFailedStateImpl value,
          $Res Function(_$GetitemsFailedStateImpl) then) =
      __$$GetitemsFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetitemsFailedStateImplCopyWithImpl<$Res>
    extends _$CusItemsStateCopyWithImpl<$Res, _$GetitemsFailedStateImpl>
    implements _$$GetitemsFailedStateImplCopyWith<$Res> {
  __$$GetitemsFailedStateImplCopyWithImpl(_$GetitemsFailedStateImpl _value,
      $Res Function(_$GetitemsFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetitemsFailedStateImpl implements GetitemsFailedState {
  const _$GetitemsFailedStateImpl();

  @override
  String toString() {
    return 'CusItemsState.getitemsFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetitemsFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusItemsModel>? items, bool isLoading)
        getCusItemsState,
    required TResult Function() getitemsFailedState,
  }) {
    return getitemsFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusItemsModel>? items, bool isLoading)?
        getCusItemsState,
    TResult? Function()? getitemsFailedState,
  }) {
    return getitemsFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusItemsModel>? items, bool isLoading)?
        getCusItemsState,
    TResult Function()? getitemsFailedState,
    required TResult orElse(),
  }) {
    if (getitemsFailedState != null) {
      return getitemsFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusItemsState value) getCusItemsState,
    required TResult Function(GetitemsFailedState value) getitemsFailedState,
  }) {
    return getitemsFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusItemsState value)? getCusItemsState,
    TResult? Function(GetitemsFailedState value)? getitemsFailedState,
  }) {
    return getitemsFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusItemsState value)? getCusItemsState,
    TResult Function(GetitemsFailedState value)? getitemsFailedState,
    required TResult orElse(),
  }) {
    if (getitemsFailedState != null) {
      return getitemsFailedState(this);
    }
    return orElse();
  }
}

abstract class GetitemsFailedState implements CusItemsState {
  const factory GetitemsFailedState() = _$GetitemsFailedStateImpl;
}
