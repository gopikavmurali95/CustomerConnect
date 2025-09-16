// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oos_customer_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OosCustomerDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchQuery, String cusID)
        getOosCustomerDetailEvent,
    required TResult Function() clearOosCustomerDetilEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchQuery, String cusID)?
        getOosCustomerDetailEvent,
    TResult? Function()? clearOosCustomerDetilEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery, String cusID)?
        getOosCustomerDetailEvent,
    TResult Function()? clearOosCustomerDetilEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOosCustomerDetailEvent value)
        getOosCustomerDetailEvent,
    required TResult Function(ClearOosCustomerDetilEvent value)
        clearOosCustomerDetilEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOosCustomerDetailEvent value)?
        getOosCustomerDetailEvent,
    TResult? Function(ClearOosCustomerDetilEvent value)?
        clearOosCustomerDetilEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOosCustomerDetailEvent value)?
        getOosCustomerDetailEvent,
    TResult Function(ClearOosCustomerDetilEvent value)?
        clearOosCustomerDetilEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OosCustomerDetailEventCopyWith<$Res> {
  factory $OosCustomerDetailEventCopyWith(OosCustomerDetailEvent value,
          $Res Function(OosCustomerDetailEvent) then) =
      _$OosCustomerDetailEventCopyWithImpl<$Res, OosCustomerDetailEvent>;
}

/// @nodoc
class _$OosCustomerDetailEventCopyWithImpl<$Res,
        $Val extends OosCustomerDetailEvent>
    implements $OosCustomerDetailEventCopyWith<$Res> {
  _$OosCustomerDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OosCustomerDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetOosCustomerDetailEventImplCopyWith<$Res> {
  factory _$$GetOosCustomerDetailEventImplCopyWith(
          _$GetOosCustomerDetailEventImpl value,
          $Res Function(_$GetOosCustomerDetailEventImpl) then) =
      __$$GetOosCustomerDetailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchQuery, String cusID});
}

/// @nodoc
class __$$GetOosCustomerDetailEventImplCopyWithImpl<$Res>
    extends _$OosCustomerDetailEventCopyWithImpl<$Res,
        _$GetOosCustomerDetailEventImpl>
    implements _$$GetOosCustomerDetailEventImplCopyWith<$Res> {
  __$$GetOosCustomerDetailEventImplCopyWithImpl(
      _$GetOosCustomerDetailEventImpl _value,
      $Res Function(_$GetOosCustomerDetailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of OosCustomerDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = null,
    Object? cusID = null,
  }) {
    return _then(_$GetOosCustomerDetailEventImpl(
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      cusID: null == cusID
          ? _value.cusID
          : cusID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetOosCustomerDetailEventImpl implements GetOosCustomerDetailEvent {
  const _$GetOosCustomerDetailEventImpl(
      {required this.searchQuery, required this.cusID});

  @override
  final String searchQuery;
  @override
  final String cusID;

  @override
  String toString() {
    return 'OosCustomerDetailEvent.getOosCustomerDetailEvent(searchQuery: $searchQuery, cusID: $cusID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOosCustomerDetailEventImpl &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.cusID, cusID) || other.cusID == cusID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchQuery, cusID);

  /// Create a copy of OosCustomerDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOosCustomerDetailEventImplCopyWith<_$GetOosCustomerDetailEventImpl>
      get copyWith => __$$GetOosCustomerDetailEventImplCopyWithImpl<
          _$GetOosCustomerDetailEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchQuery, String cusID)
        getOosCustomerDetailEvent,
    required TResult Function() clearOosCustomerDetilEvent,
  }) {
    return getOosCustomerDetailEvent(searchQuery, cusID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchQuery, String cusID)?
        getOosCustomerDetailEvent,
    TResult? Function()? clearOosCustomerDetilEvent,
  }) {
    return getOosCustomerDetailEvent?.call(searchQuery, cusID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery, String cusID)?
        getOosCustomerDetailEvent,
    TResult Function()? clearOosCustomerDetilEvent,
    required TResult orElse(),
  }) {
    if (getOosCustomerDetailEvent != null) {
      return getOosCustomerDetailEvent(searchQuery, cusID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOosCustomerDetailEvent value)
        getOosCustomerDetailEvent,
    required TResult Function(ClearOosCustomerDetilEvent value)
        clearOosCustomerDetilEvent,
  }) {
    return getOosCustomerDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOosCustomerDetailEvent value)?
        getOosCustomerDetailEvent,
    TResult? Function(ClearOosCustomerDetilEvent value)?
        clearOosCustomerDetilEvent,
  }) {
    return getOosCustomerDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOosCustomerDetailEvent value)?
        getOosCustomerDetailEvent,
    TResult Function(ClearOosCustomerDetilEvent value)?
        clearOosCustomerDetilEvent,
    required TResult orElse(),
  }) {
    if (getOosCustomerDetailEvent != null) {
      return getOosCustomerDetailEvent(this);
    }
    return orElse();
  }
}

abstract class GetOosCustomerDetailEvent implements OosCustomerDetailEvent {
  const factory GetOosCustomerDetailEvent(
      {required final String searchQuery,
      required final String cusID}) = _$GetOosCustomerDetailEventImpl;

  String get searchQuery;
  String get cusID;

  /// Create a copy of OosCustomerDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetOosCustomerDetailEventImplCopyWith<_$GetOosCustomerDetailEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearOosCustomerDetilEventImplCopyWith<$Res> {
  factory _$$ClearOosCustomerDetilEventImplCopyWith(
          _$ClearOosCustomerDetilEventImpl value,
          $Res Function(_$ClearOosCustomerDetilEventImpl) then) =
      __$$ClearOosCustomerDetilEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearOosCustomerDetilEventImplCopyWithImpl<$Res>
    extends _$OosCustomerDetailEventCopyWithImpl<$Res,
        _$ClearOosCustomerDetilEventImpl>
    implements _$$ClearOosCustomerDetilEventImplCopyWith<$Res> {
  __$$ClearOosCustomerDetilEventImplCopyWithImpl(
      _$ClearOosCustomerDetilEventImpl _value,
      $Res Function(_$ClearOosCustomerDetilEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of OosCustomerDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearOosCustomerDetilEventImpl implements ClearOosCustomerDetilEvent {
  const _$ClearOosCustomerDetilEventImpl();

  @override
  String toString() {
    return 'OosCustomerDetailEvent.clearOosCustomerDetilEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearOosCustomerDetilEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchQuery, String cusID)
        getOosCustomerDetailEvent,
    required TResult Function() clearOosCustomerDetilEvent,
  }) {
    return clearOosCustomerDetilEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchQuery, String cusID)?
        getOosCustomerDetailEvent,
    TResult? Function()? clearOosCustomerDetilEvent,
  }) {
    return clearOosCustomerDetilEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery, String cusID)?
        getOosCustomerDetailEvent,
    TResult Function()? clearOosCustomerDetilEvent,
    required TResult orElse(),
  }) {
    if (clearOosCustomerDetilEvent != null) {
      return clearOosCustomerDetilEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOosCustomerDetailEvent value)
        getOosCustomerDetailEvent,
    required TResult Function(ClearOosCustomerDetilEvent value)
        clearOosCustomerDetilEvent,
  }) {
    return clearOosCustomerDetilEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOosCustomerDetailEvent value)?
        getOosCustomerDetailEvent,
    TResult? Function(ClearOosCustomerDetilEvent value)?
        clearOosCustomerDetilEvent,
  }) {
    return clearOosCustomerDetilEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOosCustomerDetailEvent value)?
        getOosCustomerDetailEvent,
    TResult Function(ClearOosCustomerDetilEvent value)?
        clearOosCustomerDetilEvent,
    required TResult orElse(),
  }) {
    if (clearOosCustomerDetilEvent != null) {
      return clearOosCustomerDetilEvent(this);
    }
    return orElse();
  }
}

abstract class ClearOosCustomerDetilEvent implements OosCustomerDetailEvent {
  const factory ClearOosCustomerDetilEvent() = _$ClearOosCustomerDetilEventImpl;
}

/// @nodoc
mixin _$OosCustomerDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OutOfStockCustomerDetailModel>? details)
        getOosCustomerDetailsState,
    required TResult Function() oosCustomersDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OutOfStockCustomerDetailModel>? details)?
        getOosCustomerDetailsState,
    TResult? Function()? oosCustomersDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OutOfStockCustomerDetailModel>? details)?
        getOosCustomerDetailsState,
    TResult Function()? oosCustomersDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOosCustomerDetailsState value)
        getOosCustomerDetailsState,
    required TResult Function(OosCustomersDetailFailedState value)
        oosCustomersDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOosCustomerDetailsState value)?
        getOosCustomerDetailsState,
    TResult? Function(OosCustomersDetailFailedState value)?
        oosCustomersDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOosCustomerDetailsState value)?
        getOosCustomerDetailsState,
    TResult Function(OosCustomersDetailFailedState value)?
        oosCustomersDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OosCustomerDetailStateCopyWith<$Res> {
  factory $OosCustomerDetailStateCopyWith(OosCustomerDetailState value,
          $Res Function(OosCustomerDetailState) then) =
      _$OosCustomerDetailStateCopyWithImpl<$Res, OosCustomerDetailState>;
}

/// @nodoc
class _$OosCustomerDetailStateCopyWithImpl<$Res,
        $Val extends OosCustomerDetailState>
    implements $OosCustomerDetailStateCopyWith<$Res> {
  _$OosCustomerDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OosCustomerDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetOosCustomerDetailsStateImplCopyWith<$Res> {
  factory _$$GetOosCustomerDetailsStateImplCopyWith(
          _$GetOosCustomerDetailsStateImpl value,
          $Res Function(_$GetOosCustomerDetailsStateImpl) then) =
      __$$GetOosCustomerDetailsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OutOfStockCustomerDetailModel>? details});
}

/// @nodoc
class __$$GetOosCustomerDetailsStateImplCopyWithImpl<$Res>
    extends _$OosCustomerDetailStateCopyWithImpl<$Res,
        _$GetOosCustomerDetailsStateImpl>
    implements _$$GetOosCustomerDetailsStateImplCopyWith<$Res> {
  __$$GetOosCustomerDetailsStateImplCopyWithImpl(
      _$GetOosCustomerDetailsStateImpl _value,
      $Res Function(_$GetOosCustomerDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OosCustomerDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_$GetOosCustomerDetailsStateImpl(
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<OutOfStockCustomerDetailModel>?,
    ));
  }
}

/// @nodoc

class _$GetOosCustomerDetailsStateImpl implements GetOosCustomerDetailsState {
  const _$GetOosCustomerDetailsStateImpl(
      {required final List<OutOfStockCustomerDetailModel>? details})
      : _details = details;

  final List<OutOfStockCustomerDetailModel>? _details;
  @override
  List<OutOfStockCustomerDetailModel>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OosCustomerDetailState.getOosCustomerDetailsState(details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOosCustomerDetailsStateImpl &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_details));

  /// Create a copy of OosCustomerDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOosCustomerDetailsStateImplCopyWith<_$GetOosCustomerDetailsStateImpl>
      get copyWith => __$$GetOosCustomerDetailsStateImplCopyWithImpl<
          _$GetOosCustomerDetailsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OutOfStockCustomerDetailModel>? details)
        getOosCustomerDetailsState,
    required TResult Function() oosCustomersDetailFailedState,
  }) {
    return getOosCustomerDetailsState(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OutOfStockCustomerDetailModel>? details)?
        getOosCustomerDetailsState,
    TResult? Function()? oosCustomersDetailFailedState,
  }) {
    return getOosCustomerDetailsState?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OutOfStockCustomerDetailModel>? details)?
        getOosCustomerDetailsState,
    TResult Function()? oosCustomersDetailFailedState,
    required TResult orElse(),
  }) {
    if (getOosCustomerDetailsState != null) {
      return getOosCustomerDetailsState(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOosCustomerDetailsState value)
        getOosCustomerDetailsState,
    required TResult Function(OosCustomersDetailFailedState value)
        oosCustomersDetailFailedState,
  }) {
    return getOosCustomerDetailsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOosCustomerDetailsState value)?
        getOosCustomerDetailsState,
    TResult? Function(OosCustomersDetailFailedState value)?
        oosCustomersDetailFailedState,
  }) {
    return getOosCustomerDetailsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOosCustomerDetailsState value)?
        getOosCustomerDetailsState,
    TResult Function(OosCustomersDetailFailedState value)?
        oosCustomersDetailFailedState,
    required TResult orElse(),
  }) {
    if (getOosCustomerDetailsState != null) {
      return getOosCustomerDetailsState(this);
    }
    return orElse();
  }
}

abstract class GetOosCustomerDetailsState implements OosCustomerDetailState {
  const factory GetOosCustomerDetailsState(
          {required final List<OutOfStockCustomerDetailModel>? details}) =
      _$GetOosCustomerDetailsStateImpl;

  List<OutOfStockCustomerDetailModel>? get details;

  /// Create a copy of OosCustomerDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetOosCustomerDetailsStateImplCopyWith<_$GetOosCustomerDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OosCustomersDetailFailedStateImplCopyWith<$Res> {
  factory _$$OosCustomersDetailFailedStateImplCopyWith(
          _$OosCustomersDetailFailedStateImpl value,
          $Res Function(_$OosCustomersDetailFailedStateImpl) then) =
      __$$OosCustomersDetailFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OosCustomersDetailFailedStateImplCopyWithImpl<$Res>
    extends _$OosCustomerDetailStateCopyWithImpl<$Res,
        _$OosCustomersDetailFailedStateImpl>
    implements _$$OosCustomersDetailFailedStateImplCopyWith<$Res> {
  __$$OosCustomersDetailFailedStateImplCopyWithImpl(
      _$OosCustomersDetailFailedStateImpl _value,
      $Res Function(_$OosCustomersDetailFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OosCustomerDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OosCustomersDetailFailedStateImpl
    implements OosCustomersDetailFailedState {
  const _$OosCustomersDetailFailedStateImpl();

  @override
  String toString() {
    return 'OosCustomerDetailState.oosCustomersDetailFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OosCustomersDetailFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OutOfStockCustomerDetailModel>? details)
        getOosCustomerDetailsState,
    required TResult Function() oosCustomersDetailFailedState,
  }) {
    return oosCustomersDetailFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OutOfStockCustomerDetailModel>? details)?
        getOosCustomerDetailsState,
    TResult? Function()? oosCustomersDetailFailedState,
  }) {
    return oosCustomersDetailFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OutOfStockCustomerDetailModel>? details)?
        getOosCustomerDetailsState,
    TResult Function()? oosCustomersDetailFailedState,
    required TResult orElse(),
  }) {
    if (oosCustomersDetailFailedState != null) {
      return oosCustomersDetailFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOosCustomerDetailsState value)
        getOosCustomerDetailsState,
    required TResult Function(OosCustomersDetailFailedState value)
        oosCustomersDetailFailedState,
  }) {
    return oosCustomersDetailFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOosCustomerDetailsState value)?
        getOosCustomerDetailsState,
    TResult? Function(OosCustomersDetailFailedState value)?
        oosCustomersDetailFailedState,
  }) {
    return oosCustomersDetailFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOosCustomerDetailsState value)?
        getOosCustomerDetailsState,
    TResult Function(OosCustomersDetailFailedState value)?
        oosCustomersDetailFailedState,
    required TResult orElse(),
  }) {
    if (oosCustomersDetailFailedState != null) {
      return oosCustomersDetailFailedState(this);
    }
    return orElse();
  }
}

abstract class OosCustomersDetailFailedState implements OosCustomerDetailState {
  const factory OosCustomersDetailFailedState() =
      _$OosCustomersDetailFailedStateImpl;
}
