// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'total_orders_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TotalOrdersDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String searchQuery)
        getTotalOrdersDetailsEvent,
    required TResult Function() totalOrderDetailsFailedEvent,
    required TResult Function() clearTotalOrdersDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String searchQuery)?
        getTotalOrdersDetailsEvent,
    TResult? Function()? totalOrderDetailsFailedEvent,
    TResult? Function()? clearTotalOrdersDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String searchQuery)?
        getTotalOrdersDetailsEvent,
    TResult Function()? totalOrderDetailsFailedEvent,
    TResult Function()? clearTotalOrdersDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTotalOrdersDetailsEvent value)
        getTotalOrdersDetailsEvent,
    required TResult Function(TotalOrderDetailsFailedEvent value)
        totalOrderDetailsFailedEvent,
    required TResult Function(ClearTotalOrdersDetails value)
        clearTotalOrdersDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTotalOrdersDetailsEvent value)?
        getTotalOrdersDetailsEvent,
    TResult? Function(TotalOrderDetailsFailedEvent value)?
        totalOrderDetailsFailedEvent,
    TResult? Function(ClearTotalOrdersDetails value)? clearTotalOrdersDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTotalOrdersDetailsEvent value)?
        getTotalOrdersDetailsEvent,
    TResult Function(TotalOrderDetailsFailedEvent value)?
        totalOrderDetailsFailedEvent,
    TResult Function(ClearTotalOrdersDetails value)? clearTotalOrdersDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalOrdersDetailsEventCopyWith<$Res> {
  factory $TotalOrdersDetailsEventCopyWith(TotalOrdersDetailsEvent value,
          $Res Function(TotalOrdersDetailsEvent) then) =
      _$TotalOrdersDetailsEventCopyWithImpl<$Res, TotalOrdersDetailsEvent>;
}

/// @nodoc
class _$TotalOrdersDetailsEventCopyWithImpl<$Res,
        $Val extends TotalOrdersDetailsEvent>
    implements $TotalOrdersDetailsEventCopyWith<$Res> {
  _$TotalOrdersDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTotalOrdersDetailsEventImplCopyWith<$Res> {
  factory _$$GetTotalOrdersDetailsEventImplCopyWith(
          _$GetTotalOrdersDetailsEventImpl value,
          $Res Function(_$GetTotalOrdersDetailsEventImpl) then) =
      __$$GetTotalOrdersDetailsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userID, String searchQuery});
}

/// @nodoc
class __$$GetTotalOrdersDetailsEventImplCopyWithImpl<$Res>
    extends _$TotalOrdersDetailsEventCopyWithImpl<$Res,
        _$GetTotalOrdersDetailsEventImpl>
    implements _$$GetTotalOrdersDetailsEventImplCopyWith<$Res> {
  __$$GetTotalOrdersDetailsEventImplCopyWithImpl(
      _$GetTotalOrdersDetailsEventImpl _value,
      $Res Function(_$GetTotalOrdersDetailsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetTotalOrdersDetailsEventImpl(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTotalOrdersDetailsEventImpl implements GetTotalOrdersDetailsEvent {
  const _$GetTotalOrdersDetailsEventImpl(
      {required this.userID, required this.searchQuery});

  @override
  final String userID;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'TotalOrdersDetailsEvent.getTotalOrdersDetailsEvent(userID: $userID, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTotalOrdersDetailsEventImpl &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userID, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTotalOrdersDetailsEventImplCopyWith<_$GetTotalOrdersDetailsEventImpl>
      get copyWith => __$$GetTotalOrdersDetailsEventImplCopyWithImpl<
          _$GetTotalOrdersDetailsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String searchQuery)
        getTotalOrdersDetailsEvent,
    required TResult Function() totalOrderDetailsFailedEvent,
    required TResult Function() clearTotalOrdersDetails,
  }) {
    return getTotalOrdersDetailsEvent(userID, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String searchQuery)?
        getTotalOrdersDetailsEvent,
    TResult? Function()? totalOrderDetailsFailedEvent,
    TResult? Function()? clearTotalOrdersDetails,
  }) {
    return getTotalOrdersDetailsEvent?.call(userID, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String searchQuery)?
        getTotalOrdersDetailsEvent,
    TResult Function()? totalOrderDetailsFailedEvent,
    TResult Function()? clearTotalOrdersDetails,
    required TResult orElse(),
  }) {
    if (getTotalOrdersDetailsEvent != null) {
      return getTotalOrdersDetailsEvent(userID, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTotalOrdersDetailsEvent value)
        getTotalOrdersDetailsEvent,
    required TResult Function(TotalOrderDetailsFailedEvent value)
        totalOrderDetailsFailedEvent,
    required TResult Function(ClearTotalOrdersDetails value)
        clearTotalOrdersDetails,
  }) {
    return getTotalOrdersDetailsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTotalOrdersDetailsEvent value)?
        getTotalOrdersDetailsEvent,
    TResult? Function(TotalOrderDetailsFailedEvent value)?
        totalOrderDetailsFailedEvent,
    TResult? Function(ClearTotalOrdersDetails value)? clearTotalOrdersDetails,
  }) {
    return getTotalOrdersDetailsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTotalOrdersDetailsEvent value)?
        getTotalOrdersDetailsEvent,
    TResult Function(TotalOrderDetailsFailedEvent value)?
        totalOrderDetailsFailedEvent,
    TResult Function(ClearTotalOrdersDetails value)? clearTotalOrdersDetails,
    required TResult orElse(),
  }) {
    if (getTotalOrdersDetailsEvent != null) {
      return getTotalOrdersDetailsEvent(this);
    }
    return orElse();
  }
}

abstract class GetTotalOrdersDetailsEvent implements TotalOrdersDetailsEvent {
  const factory GetTotalOrdersDetailsEvent(
      {required final String userID,
      required final String searchQuery}) = _$GetTotalOrdersDetailsEventImpl;

  String get userID;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetTotalOrdersDetailsEventImplCopyWith<_$GetTotalOrdersDetailsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TotalOrderDetailsFailedEventImplCopyWith<$Res> {
  factory _$$TotalOrderDetailsFailedEventImplCopyWith(
          _$TotalOrderDetailsFailedEventImpl value,
          $Res Function(_$TotalOrderDetailsFailedEventImpl) then) =
      __$$TotalOrderDetailsFailedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TotalOrderDetailsFailedEventImplCopyWithImpl<$Res>
    extends _$TotalOrdersDetailsEventCopyWithImpl<$Res,
        _$TotalOrderDetailsFailedEventImpl>
    implements _$$TotalOrderDetailsFailedEventImplCopyWith<$Res> {
  __$$TotalOrderDetailsFailedEventImplCopyWithImpl(
      _$TotalOrderDetailsFailedEventImpl _value,
      $Res Function(_$TotalOrderDetailsFailedEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TotalOrderDetailsFailedEventImpl
    implements TotalOrderDetailsFailedEvent {
  const _$TotalOrderDetailsFailedEventImpl();

  @override
  String toString() {
    return 'TotalOrdersDetailsEvent.totalOrderDetailsFailedEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalOrderDetailsFailedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String searchQuery)
        getTotalOrdersDetailsEvent,
    required TResult Function() totalOrderDetailsFailedEvent,
    required TResult Function() clearTotalOrdersDetails,
  }) {
    return totalOrderDetailsFailedEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String searchQuery)?
        getTotalOrdersDetailsEvent,
    TResult? Function()? totalOrderDetailsFailedEvent,
    TResult? Function()? clearTotalOrdersDetails,
  }) {
    return totalOrderDetailsFailedEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String searchQuery)?
        getTotalOrdersDetailsEvent,
    TResult Function()? totalOrderDetailsFailedEvent,
    TResult Function()? clearTotalOrdersDetails,
    required TResult orElse(),
  }) {
    if (totalOrderDetailsFailedEvent != null) {
      return totalOrderDetailsFailedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTotalOrdersDetailsEvent value)
        getTotalOrdersDetailsEvent,
    required TResult Function(TotalOrderDetailsFailedEvent value)
        totalOrderDetailsFailedEvent,
    required TResult Function(ClearTotalOrdersDetails value)
        clearTotalOrdersDetails,
  }) {
    return totalOrderDetailsFailedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTotalOrdersDetailsEvent value)?
        getTotalOrdersDetailsEvent,
    TResult? Function(TotalOrderDetailsFailedEvent value)?
        totalOrderDetailsFailedEvent,
    TResult? Function(ClearTotalOrdersDetails value)? clearTotalOrdersDetails,
  }) {
    return totalOrderDetailsFailedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTotalOrdersDetailsEvent value)?
        getTotalOrdersDetailsEvent,
    TResult Function(TotalOrderDetailsFailedEvent value)?
        totalOrderDetailsFailedEvent,
    TResult Function(ClearTotalOrdersDetails value)? clearTotalOrdersDetails,
    required TResult orElse(),
  }) {
    if (totalOrderDetailsFailedEvent != null) {
      return totalOrderDetailsFailedEvent(this);
    }
    return orElse();
  }
}

abstract class TotalOrderDetailsFailedEvent implements TotalOrdersDetailsEvent {
  const factory TotalOrderDetailsFailedEvent() =
      _$TotalOrderDetailsFailedEventImpl;
}

/// @nodoc
abstract class _$$ClearTotalOrdersDetailsImplCopyWith<$Res> {
  factory _$$ClearTotalOrdersDetailsImplCopyWith(
          _$ClearTotalOrdersDetailsImpl value,
          $Res Function(_$ClearTotalOrdersDetailsImpl) then) =
      __$$ClearTotalOrdersDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearTotalOrdersDetailsImplCopyWithImpl<$Res>
    extends _$TotalOrdersDetailsEventCopyWithImpl<$Res,
        _$ClearTotalOrdersDetailsImpl>
    implements _$$ClearTotalOrdersDetailsImplCopyWith<$Res> {
  __$$ClearTotalOrdersDetailsImplCopyWithImpl(
      _$ClearTotalOrdersDetailsImpl _value,
      $Res Function(_$ClearTotalOrdersDetailsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearTotalOrdersDetailsImpl implements ClearTotalOrdersDetails {
  const _$ClearTotalOrdersDetailsImpl();

  @override
  String toString() {
    return 'TotalOrdersDetailsEvent.clearTotalOrdersDetails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearTotalOrdersDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String searchQuery)
        getTotalOrdersDetailsEvent,
    required TResult Function() totalOrderDetailsFailedEvent,
    required TResult Function() clearTotalOrdersDetails,
  }) {
    return clearTotalOrdersDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String searchQuery)?
        getTotalOrdersDetailsEvent,
    TResult? Function()? totalOrderDetailsFailedEvent,
    TResult? Function()? clearTotalOrdersDetails,
  }) {
    return clearTotalOrdersDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String searchQuery)?
        getTotalOrdersDetailsEvent,
    TResult Function()? totalOrderDetailsFailedEvent,
    TResult Function()? clearTotalOrdersDetails,
    required TResult orElse(),
  }) {
    if (clearTotalOrdersDetails != null) {
      return clearTotalOrdersDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTotalOrdersDetailsEvent value)
        getTotalOrdersDetailsEvent,
    required TResult Function(TotalOrderDetailsFailedEvent value)
        totalOrderDetailsFailedEvent,
    required TResult Function(ClearTotalOrdersDetails value)
        clearTotalOrdersDetails,
  }) {
    return clearTotalOrdersDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTotalOrdersDetailsEvent value)?
        getTotalOrdersDetailsEvent,
    TResult? Function(TotalOrderDetailsFailedEvent value)?
        totalOrderDetailsFailedEvent,
    TResult? Function(ClearTotalOrdersDetails value)? clearTotalOrdersDetails,
  }) {
    return clearTotalOrdersDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTotalOrdersDetailsEvent value)?
        getTotalOrdersDetailsEvent,
    TResult Function(TotalOrderDetailsFailedEvent value)?
        totalOrderDetailsFailedEvent,
    TResult Function(ClearTotalOrdersDetails value)? clearTotalOrdersDetails,
    required TResult orElse(),
  }) {
    if (clearTotalOrdersDetails != null) {
      return clearTotalOrdersDetails(this);
    }
    return orElse();
  }
}

abstract class ClearTotalOrdersDetails implements TotalOrdersDetailsEvent {
  const factory ClearTotalOrdersDetails() = _$ClearTotalOrdersDetailsImpl;
}

/// @nodoc
mixin _$TotalOrdersDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TotalOrdersDetailsModel>? ordersdet)
        getTotalOrdersDetailsState,
    required TResult Function() totalOrdersDetailsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TotalOrdersDetailsModel>? ordersdet)?
        getTotalOrdersDetailsState,
    TResult? Function()? totalOrdersDetailsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TotalOrdersDetailsModel>? ordersdet)?
        getTotalOrdersDetailsState,
    TResult Function()? totalOrdersDetailsFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTotalOrdersDetailsState value)
        getTotalOrdersDetailsState,
    required TResult Function(TotalOrdersDetailsFailedState value)
        totalOrdersDetailsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTotalOrdersDetailsState value)?
        getTotalOrdersDetailsState,
    TResult? Function(TotalOrdersDetailsFailedState value)?
        totalOrdersDetailsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTotalOrdersDetailsState value)?
        getTotalOrdersDetailsState,
    TResult Function(TotalOrdersDetailsFailedState value)?
        totalOrdersDetailsFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalOrdersDetailsStateCopyWith<$Res> {
  factory $TotalOrdersDetailsStateCopyWith(TotalOrdersDetailsState value,
          $Res Function(TotalOrdersDetailsState) then) =
      _$TotalOrdersDetailsStateCopyWithImpl<$Res, TotalOrdersDetailsState>;
}

/// @nodoc
class _$TotalOrdersDetailsStateCopyWithImpl<$Res,
        $Val extends TotalOrdersDetailsState>
    implements $TotalOrdersDetailsStateCopyWith<$Res> {
  _$TotalOrdersDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTotalOrdersDetailsStateImplCopyWith<$Res> {
  factory _$$GetTotalOrdersDetailsStateImplCopyWith(
          _$GetTotalOrdersDetailsStateImpl value,
          $Res Function(_$GetTotalOrdersDetailsStateImpl) then) =
      __$$GetTotalOrdersDetailsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TotalOrdersDetailsModel>? ordersdet});
}

/// @nodoc
class __$$GetTotalOrdersDetailsStateImplCopyWithImpl<$Res>
    extends _$TotalOrdersDetailsStateCopyWithImpl<$Res,
        _$GetTotalOrdersDetailsStateImpl>
    implements _$$GetTotalOrdersDetailsStateImplCopyWith<$Res> {
  __$$GetTotalOrdersDetailsStateImplCopyWithImpl(
      _$GetTotalOrdersDetailsStateImpl _value,
      $Res Function(_$GetTotalOrdersDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersdet = freezed,
  }) {
    return _then(_$GetTotalOrdersDetailsStateImpl(
      ordersdet: freezed == ordersdet
          ? _value._ordersdet
          : ordersdet // ignore: cast_nullable_to_non_nullable
              as List<TotalOrdersDetailsModel>?,
    ));
  }
}

/// @nodoc

class _$GetTotalOrdersDetailsStateImpl implements GetTotalOrdersDetailsState {
  const _$GetTotalOrdersDetailsStateImpl(
      {required final List<TotalOrdersDetailsModel>? ordersdet})
      : _ordersdet = ordersdet;

  final List<TotalOrdersDetailsModel>? _ordersdet;
  @override
  List<TotalOrdersDetailsModel>? get ordersdet {
    final value = _ordersdet;
    if (value == null) return null;
    if (_ordersdet is EqualUnmodifiableListView) return _ordersdet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TotalOrdersDetailsState.getTotalOrdersDetailsState(ordersdet: $ordersdet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTotalOrdersDetailsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._ordersdet, _ordersdet));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ordersdet));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTotalOrdersDetailsStateImplCopyWith<_$GetTotalOrdersDetailsStateImpl>
      get copyWith => __$$GetTotalOrdersDetailsStateImplCopyWithImpl<
          _$GetTotalOrdersDetailsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TotalOrdersDetailsModel>? ordersdet)
        getTotalOrdersDetailsState,
    required TResult Function() totalOrdersDetailsFailedState,
  }) {
    return getTotalOrdersDetailsState(ordersdet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TotalOrdersDetailsModel>? ordersdet)?
        getTotalOrdersDetailsState,
    TResult? Function()? totalOrdersDetailsFailedState,
  }) {
    return getTotalOrdersDetailsState?.call(ordersdet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TotalOrdersDetailsModel>? ordersdet)?
        getTotalOrdersDetailsState,
    TResult Function()? totalOrdersDetailsFailedState,
    required TResult orElse(),
  }) {
    if (getTotalOrdersDetailsState != null) {
      return getTotalOrdersDetailsState(ordersdet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTotalOrdersDetailsState value)
        getTotalOrdersDetailsState,
    required TResult Function(TotalOrdersDetailsFailedState value)
        totalOrdersDetailsFailedState,
  }) {
    return getTotalOrdersDetailsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTotalOrdersDetailsState value)?
        getTotalOrdersDetailsState,
    TResult? Function(TotalOrdersDetailsFailedState value)?
        totalOrdersDetailsFailedState,
  }) {
    return getTotalOrdersDetailsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTotalOrdersDetailsState value)?
        getTotalOrdersDetailsState,
    TResult Function(TotalOrdersDetailsFailedState value)?
        totalOrdersDetailsFailedState,
    required TResult orElse(),
  }) {
    if (getTotalOrdersDetailsState != null) {
      return getTotalOrdersDetailsState(this);
    }
    return orElse();
  }
}

abstract class GetTotalOrdersDetailsState implements TotalOrdersDetailsState {
  const factory GetTotalOrdersDetailsState(
          {required final List<TotalOrdersDetailsModel>? ordersdet}) =
      _$GetTotalOrdersDetailsStateImpl;

  List<TotalOrdersDetailsModel>? get ordersdet;
  @JsonKey(ignore: true)
  _$$GetTotalOrdersDetailsStateImplCopyWith<_$GetTotalOrdersDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TotalOrdersDetailsFailedStateImplCopyWith<$Res> {
  factory _$$TotalOrdersDetailsFailedStateImplCopyWith(
          _$TotalOrdersDetailsFailedStateImpl value,
          $Res Function(_$TotalOrdersDetailsFailedStateImpl) then) =
      __$$TotalOrdersDetailsFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TotalOrdersDetailsFailedStateImplCopyWithImpl<$Res>
    extends _$TotalOrdersDetailsStateCopyWithImpl<$Res,
        _$TotalOrdersDetailsFailedStateImpl>
    implements _$$TotalOrdersDetailsFailedStateImplCopyWith<$Res> {
  __$$TotalOrdersDetailsFailedStateImplCopyWithImpl(
      _$TotalOrdersDetailsFailedStateImpl _value,
      $Res Function(_$TotalOrdersDetailsFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TotalOrdersDetailsFailedStateImpl
    implements TotalOrdersDetailsFailedState {
  const _$TotalOrdersDetailsFailedStateImpl();

  @override
  String toString() {
    return 'TotalOrdersDetailsState.totalOrdersDetailsFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalOrdersDetailsFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TotalOrdersDetailsModel>? ordersdet)
        getTotalOrdersDetailsState,
    required TResult Function() totalOrdersDetailsFailedState,
  }) {
    return totalOrdersDetailsFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TotalOrdersDetailsModel>? ordersdet)?
        getTotalOrdersDetailsState,
    TResult? Function()? totalOrdersDetailsFailedState,
  }) {
    return totalOrdersDetailsFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TotalOrdersDetailsModel>? ordersdet)?
        getTotalOrdersDetailsState,
    TResult Function()? totalOrdersDetailsFailedState,
    required TResult orElse(),
  }) {
    if (totalOrdersDetailsFailedState != null) {
      return totalOrdersDetailsFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTotalOrdersDetailsState value)
        getTotalOrdersDetailsState,
    required TResult Function(TotalOrdersDetailsFailedState value)
        totalOrdersDetailsFailedState,
  }) {
    return totalOrdersDetailsFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTotalOrdersDetailsState value)?
        getTotalOrdersDetailsState,
    TResult? Function(TotalOrdersDetailsFailedState value)?
        totalOrdersDetailsFailedState,
  }) {
    return totalOrdersDetailsFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTotalOrdersDetailsState value)?
        getTotalOrdersDetailsState,
    TResult Function(TotalOrdersDetailsFailedState value)?
        totalOrdersDetailsFailedState,
    required TResult orElse(),
  }) {
    if (totalOrdersDetailsFailedState != null) {
      return totalOrdersDetailsFailedState(this);
    }
    return orElse();
  }
}

abstract class TotalOrdersDetailsFailedState
    implements TotalOrdersDetailsState {
  const factory TotalOrdersDetailsFailedState() =
      _$TotalOrdersDetailsFailedStateImpl;
}
