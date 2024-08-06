// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'out_of_stock_items_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OutOfStockItemsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String searchQuery, String fromDate, String toDate)
        getOutOfStockItemsEvent,
    required TResult Function() clearOutOfStockItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchQuery, String fromDate, String toDate)?
        getOutOfStockItemsEvent,
    TResult? Function()? clearOutOfStockItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery, String fromDate, String toDate)?
        getOutOfStockItemsEvent,
    TResult Function()? clearOutOfStockItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutOfStockItemsEvent value)
        getOutOfStockItemsEvent,
    required TResult Function(ClearOutOfStockItems value) clearOutOfStockItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutOfStockItemsEvent value)? getOutOfStockItemsEvent,
    TResult? Function(ClearOutOfStockItems value)? clearOutOfStockItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutOfStockItemsEvent value)? getOutOfStockItemsEvent,
    TResult Function(ClearOutOfStockItems value)? clearOutOfStockItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutOfStockItemsEventCopyWith<$Res> {
  factory $OutOfStockItemsEventCopyWith(OutOfStockItemsEvent value,
          $Res Function(OutOfStockItemsEvent) then) =
      _$OutOfStockItemsEventCopyWithImpl<$Res, OutOfStockItemsEvent>;
}

/// @nodoc
class _$OutOfStockItemsEventCopyWithImpl<$Res,
        $Val extends OutOfStockItemsEvent>
    implements $OutOfStockItemsEventCopyWith<$Res> {
  _$OutOfStockItemsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetOutOfStockItemsEventImplCopyWith<$Res> {
  factory _$$GetOutOfStockItemsEventImplCopyWith(
          _$GetOutOfStockItemsEventImpl value,
          $Res Function(_$GetOutOfStockItemsEventImpl) then) =
      __$$GetOutOfStockItemsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchQuery, String fromDate, String toDate});
}

/// @nodoc
class __$$GetOutOfStockItemsEventImplCopyWithImpl<$Res>
    extends _$OutOfStockItemsEventCopyWithImpl<$Res,
        _$GetOutOfStockItemsEventImpl>
    implements _$$GetOutOfStockItemsEventImplCopyWith<$Res> {
  __$$GetOutOfStockItemsEventImplCopyWithImpl(
      _$GetOutOfStockItemsEventImpl _value,
      $Res Function(_$GetOutOfStockItemsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = null,
    Object? fromDate = null,
    Object? toDate = null,
  }) {
    return _then(_$GetOutOfStockItemsEventImpl(
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

class _$GetOutOfStockItemsEventImpl implements GetOutOfStockItemsEvent {
  const _$GetOutOfStockItemsEventImpl(
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
    return 'OutOfStockItemsEvent.getOutOfStockItemsEvent(searchQuery: $searchQuery, fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOutOfStockItemsEventImpl &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchQuery, fromDate, toDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOutOfStockItemsEventImplCopyWith<_$GetOutOfStockItemsEventImpl>
      get copyWith => __$$GetOutOfStockItemsEventImplCopyWithImpl<
          _$GetOutOfStockItemsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String searchQuery, String fromDate, String toDate)
        getOutOfStockItemsEvent,
    required TResult Function() clearOutOfStockItems,
  }) {
    return getOutOfStockItemsEvent(searchQuery, fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchQuery, String fromDate, String toDate)?
        getOutOfStockItemsEvent,
    TResult? Function()? clearOutOfStockItems,
  }) {
    return getOutOfStockItemsEvent?.call(searchQuery, fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery, String fromDate, String toDate)?
        getOutOfStockItemsEvent,
    TResult Function()? clearOutOfStockItems,
    required TResult orElse(),
  }) {
    if (getOutOfStockItemsEvent != null) {
      return getOutOfStockItemsEvent(searchQuery, fromDate, toDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutOfStockItemsEvent value)
        getOutOfStockItemsEvent,
    required TResult Function(ClearOutOfStockItems value) clearOutOfStockItems,
  }) {
    return getOutOfStockItemsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutOfStockItemsEvent value)? getOutOfStockItemsEvent,
    TResult? Function(ClearOutOfStockItems value)? clearOutOfStockItems,
  }) {
    return getOutOfStockItemsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutOfStockItemsEvent value)? getOutOfStockItemsEvent,
    TResult Function(ClearOutOfStockItems value)? clearOutOfStockItems,
    required TResult orElse(),
  }) {
    if (getOutOfStockItemsEvent != null) {
      return getOutOfStockItemsEvent(this);
    }
    return orElse();
  }
}

abstract class GetOutOfStockItemsEvent implements OutOfStockItemsEvent {
  const factory GetOutOfStockItemsEvent(
      {required final String searchQuery,
      required final String fromDate,
      required final String toDate}) = _$GetOutOfStockItemsEventImpl;

  String get searchQuery;
  String get fromDate;
  String get toDate;
  @JsonKey(ignore: true)
  _$$GetOutOfStockItemsEventImplCopyWith<_$GetOutOfStockItemsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearOutOfStockItemsImplCopyWith<$Res> {
  factory _$$ClearOutOfStockItemsImplCopyWith(_$ClearOutOfStockItemsImpl value,
          $Res Function(_$ClearOutOfStockItemsImpl) then) =
      __$$ClearOutOfStockItemsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearOutOfStockItemsImplCopyWithImpl<$Res>
    extends _$OutOfStockItemsEventCopyWithImpl<$Res, _$ClearOutOfStockItemsImpl>
    implements _$$ClearOutOfStockItemsImplCopyWith<$Res> {
  __$$ClearOutOfStockItemsImplCopyWithImpl(_$ClearOutOfStockItemsImpl _value,
      $Res Function(_$ClearOutOfStockItemsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearOutOfStockItemsImpl implements ClearOutOfStockItems {
  const _$ClearOutOfStockItemsImpl();

  @override
  String toString() {
    return 'OutOfStockItemsEvent.clearOutOfStockItems()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearOutOfStockItemsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String searchQuery, String fromDate, String toDate)
        getOutOfStockItemsEvent,
    required TResult Function() clearOutOfStockItems,
  }) {
    return clearOutOfStockItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchQuery, String fromDate, String toDate)?
        getOutOfStockItemsEvent,
    TResult? Function()? clearOutOfStockItems,
  }) {
    return clearOutOfStockItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery, String fromDate, String toDate)?
        getOutOfStockItemsEvent,
    TResult Function()? clearOutOfStockItems,
    required TResult orElse(),
  }) {
    if (clearOutOfStockItems != null) {
      return clearOutOfStockItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutOfStockItemsEvent value)
        getOutOfStockItemsEvent,
    required TResult Function(ClearOutOfStockItems value) clearOutOfStockItems,
  }) {
    return clearOutOfStockItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutOfStockItemsEvent value)? getOutOfStockItemsEvent,
    TResult? Function(ClearOutOfStockItems value)? clearOutOfStockItems,
  }) {
    return clearOutOfStockItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutOfStockItemsEvent value)? getOutOfStockItemsEvent,
    TResult Function(ClearOutOfStockItems value)? clearOutOfStockItems,
    required TResult orElse(),
  }) {
    if (clearOutOfStockItems != null) {
      return clearOutOfStockItems(this);
    }
    return orElse();
  }
}

abstract class ClearOutOfStockItems implements OutOfStockItemsEvent {
  const factory ClearOutOfStockItems() = _$ClearOutOfStockItemsImpl;
}

/// @nodoc
mixin _$OutOfStockItemsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OutOfStockItemsModel>? headers)
        getOutOfSockItemsState,
    required TResult Function() outOfStockItemsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OutOfStockItemsModel>? headers)?
        getOutOfSockItemsState,
    TResult? Function()? outOfStockItemsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OutOfStockItemsModel>? headers)?
        getOutOfSockItemsState,
    TResult Function()? outOfStockItemsFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutOfSockItemsState value)
        getOutOfSockItemsState,
    required TResult Function(OutOfStockItemsFailedState value)
        outOfStockItemsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutOfSockItemsState value)? getOutOfSockItemsState,
    TResult? Function(OutOfStockItemsFailedState value)?
        outOfStockItemsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutOfSockItemsState value)? getOutOfSockItemsState,
    TResult Function(OutOfStockItemsFailedState value)?
        outOfStockItemsFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutOfStockItemsStateCopyWith<$Res> {
  factory $OutOfStockItemsStateCopyWith(OutOfStockItemsState value,
          $Res Function(OutOfStockItemsState) then) =
      _$OutOfStockItemsStateCopyWithImpl<$Res, OutOfStockItemsState>;
}

/// @nodoc
class _$OutOfStockItemsStateCopyWithImpl<$Res,
        $Val extends OutOfStockItemsState>
    implements $OutOfStockItemsStateCopyWith<$Res> {
  _$OutOfStockItemsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetOutOfSockItemsStateImplCopyWith<$Res> {
  factory _$$GetOutOfSockItemsStateImplCopyWith(
          _$GetOutOfSockItemsStateImpl value,
          $Res Function(_$GetOutOfSockItemsStateImpl) then) =
      __$$GetOutOfSockItemsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OutOfStockItemsModel>? headers});
}

/// @nodoc
class __$$GetOutOfSockItemsStateImplCopyWithImpl<$Res>
    extends _$OutOfStockItemsStateCopyWithImpl<$Res,
        _$GetOutOfSockItemsStateImpl>
    implements _$$GetOutOfSockItemsStateImplCopyWith<$Res> {
  __$$GetOutOfSockItemsStateImplCopyWithImpl(
      _$GetOutOfSockItemsStateImpl _value,
      $Res Function(_$GetOutOfSockItemsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_$GetOutOfSockItemsStateImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<OutOfStockItemsModel>?,
    ));
  }
}

/// @nodoc

class _$GetOutOfSockItemsStateImpl implements GetOutOfSockItemsState {
  const _$GetOutOfSockItemsStateImpl(
      {required final List<OutOfStockItemsModel>? headers})
      : _headers = headers;

  final List<OutOfStockItemsModel>? _headers;
  @override
  List<OutOfStockItemsModel>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OutOfStockItemsState.getOutOfSockItemsState(headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOutOfSockItemsStateImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOutOfSockItemsStateImplCopyWith<_$GetOutOfSockItemsStateImpl>
      get copyWith => __$$GetOutOfSockItemsStateImplCopyWithImpl<
          _$GetOutOfSockItemsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OutOfStockItemsModel>? headers)
        getOutOfSockItemsState,
    required TResult Function() outOfStockItemsFailedState,
  }) {
    return getOutOfSockItemsState(headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OutOfStockItemsModel>? headers)?
        getOutOfSockItemsState,
    TResult? Function()? outOfStockItemsFailedState,
  }) {
    return getOutOfSockItemsState?.call(headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OutOfStockItemsModel>? headers)?
        getOutOfSockItemsState,
    TResult Function()? outOfStockItemsFailedState,
    required TResult orElse(),
  }) {
    if (getOutOfSockItemsState != null) {
      return getOutOfSockItemsState(headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutOfSockItemsState value)
        getOutOfSockItemsState,
    required TResult Function(OutOfStockItemsFailedState value)
        outOfStockItemsFailedState,
  }) {
    return getOutOfSockItemsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutOfSockItemsState value)? getOutOfSockItemsState,
    TResult? Function(OutOfStockItemsFailedState value)?
        outOfStockItemsFailedState,
  }) {
    return getOutOfSockItemsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutOfSockItemsState value)? getOutOfSockItemsState,
    TResult Function(OutOfStockItemsFailedState value)?
        outOfStockItemsFailedState,
    required TResult orElse(),
  }) {
    if (getOutOfSockItemsState != null) {
      return getOutOfSockItemsState(this);
    }
    return orElse();
  }
}

abstract class GetOutOfSockItemsState implements OutOfStockItemsState {
  const factory GetOutOfSockItemsState(
          {required final List<OutOfStockItemsModel>? headers}) =
      _$GetOutOfSockItemsStateImpl;

  List<OutOfStockItemsModel>? get headers;
  @JsonKey(ignore: true)
  _$$GetOutOfSockItemsStateImplCopyWith<_$GetOutOfSockItemsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OutOfStockItemsFailedStateImplCopyWith<$Res> {
  factory _$$OutOfStockItemsFailedStateImplCopyWith(
          _$OutOfStockItemsFailedStateImpl value,
          $Res Function(_$OutOfStockItemsFailedStateImpl) then) =
      __$$OutOfStockItemsFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OutOfStockItemsFailedStateImplCopyWithImpl<$Res>
    extends _$OutOfStockItemsStateCopyWithImpl<$Res,
        _$OutOfStockItemsFailedStateImpl>
    implements _$$OutOfStockItemsFailedStateImplCopyWith<$Res> {
  __$$OutOfStockItemsFailedStateImplCopyWithImpl(
      _$OutOfStockItemsFailedStateImpl _value,
      $Res Function(_$OutOfStockItemsFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OutOfStockItemsFailedStateImpl implements OutOfStockItemsFailedState {
  const _$OutOfStockItemsFailedStateImpl();

  @override
  String toString() {
    return 'OutOfStockItemsState.outOfStockItemsFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutOfStockItemsFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OutOfStockItemsModel>? headers)
        getOutOfSockItemsState,
    required TResult Function() outOfStockItemsFailedState,
  }) {
    return outOfStockItemsFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OutOfStockItemsModel>? headers)?
        getOutOfSockItemsState,
    TResult? Function()? outOfStockItemsFailedState,
  }) {
    return outOfStockItemsFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OutOfStockItemsModel>? headers)?
        getOutOfSockItemsState,
    TResult Function()? outOfStockItemsFailedState,
    required TResult orElse(),
  }) {
    if (outOfStockItemsFailedState != null) {
      return outOfStockItemsFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutOfSockItemsState value)
        getOutOfSockItemsState,
    required TResult Function(OutOfStockItemsFailedState value)
        outOfStockItemsFailedState,
  }) {
    return outOfStockItemsFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutOfSockItemsState value)? getOutOfSockItemsState,
    TResult? Function(OutOfStockItemsFailedState value)?
        outOfStockItemsFailedState,
  }) {
    return outOfStockItemsFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutOfSockItemsState value)? getOutOfSockItemsState,
    TResult Function(OutOfStockItemsFailedState value)?
        outOfStockItemsFailedState,
    required TResult orElse(),
  }) {
    if (outOfStockItemsFailedState != null) {
      return outOfStockItemsFailedState(this);
    }
    return orElse();
  }
}

abstract class OutOfStockItemsFailedState implements OutOfStockItemsState {
  const factory OutOfStockItemsFailedState() = _$OutOfStockItemsFailedStateImpl;
}
