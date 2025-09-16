// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'out_of_stock_item_customers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OutOfStockItemCustomersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchQuery, String osiID)
        getOutOfStockItemCustomersEvent,
    required TResult Function() clearOutOfStockItemCustomersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchQuery, String osiID)?
        getOutOfStockItemCustomersEvent,
    TResult? Function()? clearOutOfStockItemCustomersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery, String osiID)?
        getOutOfStockItemCustomersEvent,
    TResult Function()? clearOutOfStockItemCustomersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutOfStockItemCustomersEvent value)
        getOutOfStockItemCustomersEvent,
    required TResult Function(ClearOutOfStockItemCustomersEvent value)
        clearOutOfStockItemCustomersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutOfStockItemCustomersEvent value)?
        getOutOfStockItemCustomersEvent,
    TResult? Function(ClearOutOfStockItemCustomersEvent value)?
        clearOutOfStockItemCustomersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutOfStockItemCustomersEvent value)?
        getOutOfStockItemCustomersEvent,
    TResult Function(ClearOutOfStockItemCustomersEvent value)?
        clearOutOfStockItemCustomersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutOfStockItemCustomersEventCopyWith<$Res> {
  factory $OutOfStockItemCustomersEventCopyWith(
          OutOfStockItemCustomersEvent value,
          $Res Function(OutOfStockItemCustomersEvent) then) =
      _$OutOfStockItemCustomersEventCopyWithImpl<$Res,
          OutOfStockItemCustomersEvent>;
}

/// @nodoc
class _$OutOfStockItemCustomersEventCopyWithImpl<$Res,
        $Val extends OutOfStockItemCustomersEvent>
    implements $OutOfStockItemCustomersEventCopyWith<$Res> {
  _$OutOfStockItemCustomersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OutOfStockItemCustomersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetOutOfStockItemCustomersEventImplCopyWith<$Res> {
  factory _$$GetOutOfStockItemCustomersEventImplCopyWith(
          _$GetOutOfStockItemCustomersEventImpl value,
          $Res Function(_$GetOutOfStockItemCustomersEventImpl) then) =
      __$$GetOutOfStockItemCustomersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchQuery, String osiID});
}

/// @nodoc
class __$$GetOutOfStockItemCustomersEventImplCopyWithImpl<$Res>
    extends _$OutOfStockItemCustomersEventCopyWithImpl<$Res,
        _$GetOutOfStockItemCustomersEventImpl>
    implements _$$GetOutOfStockItemCustomersEventImplCopyWith<$Res> {
  __$$GetOutOfStockItemCustomersEventImplCopyWithImpl(
      _$GetOutOfStockItemCustomersEventImpl _value,
      $Res Function(_$GetOutOfStockItemCustomersEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of OutOfStockItemCustomersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = null,
    Object? osiID = null,
  }) {
    return _then(_$GetOutOfStockItemCustomersEventImpl(
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      osiID: null == osiID
          ? _value.osiID
          : osiID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetOutOfStockItemCustomersEventImpl
    implements GetOutOfStockItemCustomersEvent {
  const _$GetOutOfStockItemCustomersEventImpl(
      {required this.searchQuery, required this.osiID});

  @override
  final String searchQuery;
  @override
  final String osiID;

  @override
  String toString() {
    return 'OutOfStockItemCustomersEvent.getOutOfStockItemCustomersEvent(searchQuery: $searchQuery, osiID: $osiID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOutOfStockItemCustomersEventImpl &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.osiID, osiID) || other.osiID == osiID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchQuery, osiID);

  /// Create a copy of OutOfStockItemCustomersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOutOfStockItemCustomersEventImplCopyWith<
          _$GetOutOfStockItemCustomersEventImpl>
      get copyWith => __$$GetOutOfStockItemCustomersEventImplCopyWithImpl<
          _$GetOutOfStockItemCustomersEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchQuery, String osiID)
        getOutOfStockItemCustomersEvent,
    required TResult Function() clearOutOfStockItemCustomersEvent,
  }) {
    return getOutOfStockItemCustomersEvent(searchQuery, osiID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchQuery, String osiID)?
        getOutOfStockItemCustomersEvent,
    TResult? Function()? clearOutOfStockItemCustomersEvent,
  }) {
    return getOutOfStockItemCustomersEvent?.call(searchQuery, osiID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery, String osiID)?
        getOutOfStockItemCustomersEvent,
    TResult Function()? clearOutOfStockItemCustomersEvent,
    required TResult orElse(),
  }) {
    if (getOutOfStockItemCustomersEvent != null) {
      return getOutOfStockItemCustomersEvent(searchQuery, osiID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutOfStockItemCustomersEvent value)
        getOutOfStockItemCustomersEvent,
    required TResult Function(ClearOutOfStockItemCustomersEvent value)
        clearOutOfStockItemCustomersEvent,
  }) {
    return getOutOfStockItemCustomersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutOfStockItemCustomersEvent value)?
        getOutOfStockItemCustomersEvent,
    TResult? Function(ClearOutOfStockItemCustomersEvent value)?
        clearOutOfStockItemCustomersEvent,
  }) {
    return getOutOfStockItemCustomersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutOfStockItemCustomersEvent value)?
        getOutOfStockItemCustomersEvent,
    TResult Function(ClearOutOfStockItemCustomersEvent value)?
        clearOutOfStockItemCustomersEvent,
    required TResult orElse(),
  }) {
    if (getOutOfStockItemCustomersEvent != null) {
      return getOutOfStockItemCustomersEvent(this);
    }
    return orElse();
  }
}

abstract class GetOutOfStockItemCustomersEvent
    implements OutOfStockItemCustomersEvent {
  const factory GetOutOfStockItemCustomersEvent(
      {required final String searchQuery,
      required final String osiID}) = _$GetOutOfStockItemCustomersEventImpl;

  String get searchQuery;
  String get osiID;

  /// Create a copy of OutOfStockItemCustomersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetOutOfStockItemCustomersEventImplCopyWith<
          _$GetOutOfStockItemCustomersEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearOutOfStockItemCustomersEventImplCopyWith<$Res> {
  factory _$$ClearOutOfStockItemCustomersEventImplCopyWith(
          _$ClearOutOfStockItemCustomersEventImpl value,
          $Res Function(_$ClearOutOfStockItemCustomersEventImpl) then) =
      __$$ClearOutOfStockItemCustomersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearOutOfStockItemCustomersEventImplCopyWithImpl<$Res>
    extends _$OutOfStockItemCustomersEventCopyWithImpl<$Res,
        _$ClearOutOfStockItemCustomersEventImpl>
    implements _$$ClearOutOfStockItemCustomersEventImplCopyWith<$Res> {
  __$$ClearOutOfStockItemCustomersEventImplCopyWithImpl(
      _$ClearOutOfStockItemCustomersEventImpl _value,
      $Res Function(_$ClearOutOfStockItemCustomersEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of OutOfStockItemCustomersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearOutOfStockItemCustomersEventImpl
    implements ClearOutOfStockItemCustomersEvent {
  const _$ClearOutOfStockItemCustomersEventImpl();

  @override
  String toString() {
    return 'OutOfStockItemCustomersEvent.clearOutOfStockItemCustomersEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearOutOfStockItemCustomersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchQuery, String osiID)
        getOutOfStockItemCustomersEvent,
    required TResult Function() clearOutOfStockItemCustomersEvent,
  }) {
    return clearOutOfStockItemCustomersEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchQuery, String osiID)?
        getOutOfStockItemCustomersEvent,
    TResult? Function()? clearOutOfStockItemCustomersEvent,
  }) {
    return clearOutOfStockItemCustomersEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery, String osiID)?
        getOutOfStockItemCustomersEvent,
    TResult Function()? clearOutOfStockItemCustomersEvent,
    required TResult orElse(),
  }) {
    if (clearOutOfStockItemCustomersEvent != null) {
      return clearOutOfStockItemCustomersEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutOfStockItemCustomersEvent value)
        getOutOfStockItemCustomersEvent,
    required TResult Function(ClearOutOfStockItemCustomersEvent value)
        clearOutOfStockItemCustomersEvent,
  }) {
    return clearOutOfStockItemCustomersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutOfStockItemCustomersEvent value)?
        getOutOfStockItemCustomersEvent,
    TResult? Function(ClearOutOfStockItemCustomersEvent value)?
        clearOutOfStockItemCustomersEvent,
  }) {
    return clearOutOfStockItemCustomersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutOfStockItemCustomersEvent value)?
        getOutOfStockItemCustomersEvent,
    TResult Function(ClearOutOfStockItemCustomersEvent value)?
        clearOutOfStockItemCustomersEvent,
    required TResult orElse(),
  }) {
    if (clearOutOfStockItemCustomersEvent != null) {
      return clearOutOfStockItemCustomersEvent(this);
    }
    return orElse();
  }
}

abstract class ClearOutOfStockItemCustomersEvent
    implements OutOfStockItemCustomersEvent {
  const factory ClearOutOfStockItemCustomersEvent() =
      _$ClearOutOfStockItemCustomersEventImpl;
}

/// @nodoc
mixin _$OutOfStockItemCustomersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OutOfStockItemsCustomersModel>? details)
        getOutOfStockItemCustomersState,
    required TResult Function() outofStateItemCustomersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OutOfStockItemsCustomersModel>? details)?
        getOutOfStockItemCustomersState,
    TResult? Function()? outofStateItemCustomersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OutOfStockItemsCustomersModel>? details)?
        getOutOfStockItemCustomersState,
    TResult Function()? outofStateItemCustomersFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutOfStockItemCustomersState value)
        getOutOfStockItemCustomersState,
    required TResult Function(OutofStateItemCustomersFailedState value)
        outofStateItemCustomersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutOfStockItemCustomersState value)?
        getOutOfStockItemCustomersState,
    TResult? Function(OutofStateItemCustomersFailedState value)?
        outofStateItemCustomersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutOfStockItemCustomersState value)?
        getOutOfStockItemCustomersState,
    TResult Function(OutofStateItemCustomersFailedState value)?
        outofStateItemCustomersFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutOfStockItemCustomersStateCopyWith<$Res> {
  factory $OutOfStockItemCustomersStateCopyWith(
          OutOfStockItemCustomersState value,
          $Res Function(OutOfStockItemCustomersState) then) =
      _$OutOfStockItemCustomersStateCopyWithImpl<$Res,
          OutOfStockItemCustomersState>;
}

/// @nodoc
class _$OutOfStockItemCustomersStateCopyWithImpl<$Res,
        $Val extends OutOfStockItemCustomersState>
    implements $OutOfStockItemCustomersStateCopyWith<$Res> {
  _$OutOfStockItemCustomersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OutOfStockItemCustomersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetOutOfStockItemCustomersStateImplCopyWith<$Res> {
  factory _$$GetOutOfStockItemCustomersStateImplCopyWith(
          _$GetOutOfStockItemCustomersStateImpl value,
          $Res Function(_$GetOutOfStockItemCustomersStateImpl) then) =
      __$$GetOutOfStockItemCustomersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OutOfStockItemsCustomersModel>? details});
}

/// @nodoc
class __$$GetOutOfStockItemCustomersStateImplCopyWithImpl<$Res>
    extends _$OutOfStockItemCustomersStateCopyWithImpl<$Res,
        _$GetOutOfStockItemCustomersStateImpl>
    implements _$$GetOutOfStockItemCustomersStateImplCopyWith<$Res> {
  __$$GetOutOfStockItemCustomersStateImplCopyWithImpl(
      _$GetOutOfStockItemCustomersStateImpl _value,
      $Res Function(_$GetOutOfStockItemCustomersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OutOfStockItemCustomersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_$GetOutOfStockItemCustomersStateImpl(
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<OutOfStockItemsCustomersModel>?,
    ));
  }
}

/// @nodoc

class _$GetOutOfStockItemCustomersStateImpl
    implements GetOutOfStockItemCustomersState {
  const _$GetOutOfStockItemCustomersStateImpl(
      {required final List<OutOfStockItemsCustomersModel>? details})
      : _details = details;

  final List<OutOfStockItemsCustomersModel>? _details;
  @override
  List<OutOfStockItemsCustomersModel>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OutOfStockItemCustomersState.getOutOfStockItemCustomersState(details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOutOfStockItemCustomersStateImpl &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_details));

  /// Create a copy of OutOfStockItemCustomersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOutOfStockItemCustomersStateImplCopyWith<
          _$GetOutOfStockItemCustomersStateImpl>
      get copyWith => __$$GetOutOfStockItemCustomersStateImplCopyWithImpl<
          _$GetOutOfStockItemCustomersStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OutOfStockItemsCustomersModel>? details)
        getOutOfStockItemCustomersState,
    required TResult Function() outofStateItemCustomersFailedState,
  }) {
    return getOutOfStockItemCustomersState(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OutOfStockItemsCustomersModel>? details)?
        getOutOfStockItemCustomersState,
    TResult? Function()? outofStateItemCustomersFailedState,
  }) {
    return getOutOfStockItemCustomersState?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OutOfStockItemsCustomersModel>? details)?
        getOutOfStockItemCustomersState,
    TResult Function()? outofStateItemCustomersFailedState,
    required TResult orElse(),
  }) {
    if (getOutOfStockItemCustomersState != null) {
      return getOutOfStockItemCustomersState(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutOfStockItemCustomersState value)
        getOutOfStockItemCustomersState,
    required TResult Function(OutofStateItemCustomersFailedState value)
        outofStateItemCustomersFailedState,
  }) {
    return getOutOfStockItemCustomersState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutOfStockItemCustomersState value)?
        getOutOfStockItemCustomersState,
    TResult? Function(OutofStateItemCustomersFailedState value)?
        outofStateItemCustomersFailedState,
  }) {
    return getOutOfStockItemCustomersState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutOfStockItemCustomersState value)?
        getOutOfStockItemCustomersState,
    TResult Function(OutofStateItemCustomersFailedState value)?
        outofStateItemCustomersFailedState,
    required TResult orElse(),
  }) {
    if (getOutOfStockItemCustomersState != null) {
      return getOutOfStockItemCustomersState(this);
    }
    return orElse();
  }
}

abstract class GetOutOfStockItemCustomersState
    implements OutOfStockItemCustomersState {
  const factory GetOutOfStockItemCustomersState(
          {required final List<OutOfStockItemsCustomersModel>? details}) =
      _$GetOutOfStockItemCustomersStateImpl;

  List<OutOfStockItemsCustomersModel>? get details;

  /// Create a copy of OutOfStockItemCustomersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetOutOfStockItemCustomersStateImplCopyWith<
          _$GetOutOfStockItemCustomersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OutofStateItemCustomersFailedStateImplCopyWith<$Res> {
  factory _$$OutofStateItemCustomersFailedStateImplCopyWith(
          _$OutofStateItemCustomersFailedStateImpl value,
          $Res Function(_$OutofStateItemCustomersFailedStateImpl) then) =
      __$$OutofStateItemCustomersFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OutofStateItemCustomersFailedStateImplCopyWithImpl<$Res>
    extends _$OutOfStockItemCustomersStateCopyWithImpl<$Res,
        _$OutofStateItemCustomersFailedStateImpl>
    implements _$$OutofStateItemCustomersFailedStateImplCopyWith<$Res> {
  __$$OutofStateItemCustomersFailedStateImplCopyWithImpl(
      _$OutofStateItemCustomersFailedStateImpl _value,
      $Res Function(_$OutofStateItemCustomersFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OutOfStockItemCustomersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OutofStateItemCustomersFailedStateImpl
    implements OutofStateItemCustomersFailedState {
  const _$OutofStateItemCustomersFailedStateImpl();

  @override
  String toString() {
    return 'OutOfStockItemCustomersState.outofStateItemCustomersFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutofStateItemCustomersFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OutOfStockItemsCustomersModel>? details)
        getOutOfStockItemCustomersState,
    required TResult Function() outofStateItemCustomersFailedState,
  }) {
    return outofStateItemCustomersFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OutOfStockItemsCustomersModel>? details)?
        getOutOfStockItemCustomersState,
    TResult? Function()? outofStateItemCustomersFailedState,
  }) {
    return outofStateItemCustomersFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OutOfStockItemsCustomersModel>? details)?
        getOutOfStockItemCustomersState,
    TResult Function()? outofStateItemCustomersFailedState,
    required TResult orElse(),
  }) {
    if (outofStateItemCustomersFailedState != null) {
      return outofStateItemCustomersFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutOfStockItemCustomersState value)
        getOutOfStockItemCustomersState,
    required TResult Function(OutofStateItemCustomersFailedState value)
        outofStateItemCustomersFailedState,
  }) {
    return outofStateItemCustomersFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutOfStockItemCustomersState value)?
        getOutOfStockItemCustomersState,
    TResult? Function(OutofStateItemCustomersFailedState value)?
        outofStateItemCustomersFailedState,
  }) {
    return outofStateItemCustomersFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutOfStockItemCustomersState value)?
        getOutOfStockItemCustomersState,
    TResult Function(OutofStateItemCustomersFailedState value)?
        outofStateItemCustomersFailedState,
    required TResult orElse(),
  }) {
    if (outofStateItemCustomersFailedState != null) {
      return outofStateItemCustomersFailedState(this);
    }
    return orElse();
  }
}

abstract class OutofStateItemCustomersFailedState
    implements OutOfStockItemCustomersState {
  const factory OutofStateItemCustomersFailedState() =
      _$OutofStateItemCustomersFailedStateImpl;
}
