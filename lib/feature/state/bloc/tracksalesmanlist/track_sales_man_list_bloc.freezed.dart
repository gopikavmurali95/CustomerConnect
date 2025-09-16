// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_sales_man_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrackSalesManListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String date, String rotID)
        getSalesmanLocationEvent,
    required TResult Function(String date) getAllCustomersLocationEvent,
    required TResult Function() clearsalessmansEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String date, String rotID)? getSalesmanLocationEvent,
    TResult? Function(String date)? getAllCustomersLocationEvent,
    TResult? Function()? clearsalessmansEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String date, String rotID)? getSalesmanLocationEvent,
    TResult Function(String date)? getAllCustomersLocationEvent,
    TResult Function()? clearsalessmansEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSalesmanLocationEvent value)
        getSalesmanLocationEvent,
    required TResult Function(GetAllCustomersLocationEvent value)
        getAllCustomersLocationEvent,
    required TResult Function(ClearsalessmansEvent value) clearsalessmansEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSalesmanLocationEvent value)? getSalesmanLocationEvent,
    TResult? Function(GetAllCustomersLocationEvent value)?
        getAllCustomersLocationEvent,
    TResult? Function(ClearsalessmansEvent value)? clearsalessmansEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSalesmanLocationEvent value)? getSalesmanLocationEvent,
    TResult Function(GetAllCustomersLocationEvent value)?
        getAllCustomersLocationEvent,
    TResult Function(ClearsalessmansEvent value)? clearsalessmansEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackSalesManListEventCopyWith<$Res> {
  factory $TrackSalesManListEventCopyWith(TrackSalesManListEvent value,
          $Res Function(TrackSalesManListEvent) then) =
      _$TrackSalesManListEventCopyWithImpl<$Res, TrackSalesManListEvent>;
}

/// @nodoc
class _$TrackSalesManListEventCopyWithImpl<$Res,
        $Val extends TrackSalesManListEvent>
    implements $TrackSalesManListEventCopyWith<$Res> {
  _$TrackSalesManListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackSalesManListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetSalesmanLocationEventImplCopyWith<$Res> {
  factory _$$GetSalesmanLocationEventImplCopyWith(
          _$GetSalesmanLocationEventImpl value,
          $Res Function(_$GetSalesmanLocationEventImpl) then) =
      __$$GetSalesmanLocationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String date, String rotID});
}

/// @nodoc
class __$$GetSalesmanLocationEventImplCopyWithImpl<$Res>
    extends _$TrackSalesManListEventCopyWithImpl<$Res,
        _$GetSalesmanLocationEventImpl>
    implements _$$GetSalesmanLocationEventImplCopyWith<$Res> {
  __$$GetSalesmanLocationEventImplCopyWithImpl(
      _$GetSalesmanLocationEventImpl _value,
      $Res Function(_$GetSalesmanLocationEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackSalesManListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? rotID = null,
  }) {
    return _then(_$GetSalesmanLocationEventImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      rotID: null == rotID
          ? _value.rotID
          : rotID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSalesmanLocationEventImpl implements GetSalesmanLocationEvent {
  const _$GetSalesmanLocationEventImpl(
      {required this.date, required this.rotID});

  @override
  final String date;
  @override
  final String rotID;

  @override
  String toString() {
    return 'TrackSalesManListEvent.getSalesmanLocationEvent(date: $date, rotID: $rotID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSalesmanLocationEventImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.rotID, rotID) || other.rotID == rotID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, rotID);

  /// Create a copy of TrackSalesManListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSalesmanLocationEventImplCopyWith<_$GetSalesmanLocationEventImpl>
      get copyWith => __$$GetSalesmanLocationEventImplCopyWithImpl<
          _$GetSalesmanLocationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String date, String rotID)
        getSalesmanLocationEvent,
    required TResult Function(String date) getAllCustomersLocationEvent,
    required TResult Function() clearsalessmansEvent,
  }) {
    return getSalesmanLocationEvent(date, rotID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String date, String rotID)? getSalesmanLocationEvent,
    TResult? Function(String date)? getAllCustomersLocationEvent,
    TResult? Function()? clearsalessmansEvent,
  }) {
    return getSalesmanLocationEvent?.call(date, rotID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String date, String rotID)? getSalesmanLocationEvent,
    TResult Function(String date)? getAllCustomersLocationEvent,
    TResult Function()? clearsalessmansEvent,
    required TResult orElse(),
  }) {
    if (getSalesmanLocationEvent != null) {
      return getSalesmanLocationEvent(date, rotID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSalesmanLocationEvent value)
        getSalesmanLocationEvent,
    required TResult Function(GetAllCustomersLocationEvent value)
        getAllCustomersLocationEvent,
    required TResult Function(ClearsalessmansEvent value) clearsalessmansEvent,
  }) {
    return getSalesmanLocationEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSalesmanLocationEvent value)? getSalesmanLocationEvent,
    TResult? Function(GetAllCustomersLocationEvent value)?
        getAllCustomersLocationEvent,
    TResult? Function(ClearsalessmansEvent value)? clearsalessmansEvent,
  }) {
    return getSalesmanLocationEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSalesmanLocationEvent value)? getSalesmanLocationEvent,
    TResult Function(GetAllCustomersLocationEvent value)?
        getAllCustomersLocationEvent,
    TResult Function(ClearsalessmansEvent value)? clearsalessmansEvent,
    required TResult orElse(),
  }) {
    if (getSalesmanLocationEvent != null) {
      return getSalesmanLocationEvent(this);
    }
    return orElse();
  }
}

abstract class GetSalesmanLocationEvent implements TrackSalesManListEvent {
  const factory GetSalesmanLocationEvent(
      {required final String date,
      required final String rotID}) = _$GetSalesmanLocationEventImpl;

  String get date;
  String get rotID;

  /// Create a copy of TrackSalesManListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSalesmanLocationEventImplCopyWith<_$GetSalesmanLocationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllCustomersLocationEventImplCopyWith<$Res> {
  factory _$$GetAllCustomersLocationEventImplCopyWith(
          _$GetAllCustomersLocationEventImpl value,
          $Res Function(_$GetAllCustomersLocationEventImpl) then) =
      __$$GetAllCustomersLocationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String date});
}

/// @nodoc
class __$$GetAllCustomersLocationEventImplCopyWithImpl<$Res>
    extends _$TrackSalesManListEventCopyWithImpl<$Res,
        _$GetAllCustomersLocationEventImpl>
    implements _$$GetAllCustomersLocationEventImplCopyWith<$Res> {
  __$$GetAllCustomersLocationEventImplCopyWithImpl(
      _$GetAllCustomersLocationEventImpl _value,
      $Res Function(_$GetAllCustomersLocationEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackSalesManListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$GetAllCustomersLocationEventImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAllCustomersLocationEventImpl
    implements GetAllCustomersLocationEvent {
  const _$GetAllCustomersLocationEventImpl({required this.date});

  @override
  final String date;

  @override
  String toString() {
    return 'TrackSalesManListEvent.getAllCustomersLocationEvent(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllCustomersLocationEventImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of TrackSalesManListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllCustomersLocationEventImplCopyWith<
          _$GetAllCustomersLocationEventImpl>
      get copyWith => __$$GetAllCustomersLocationEventImplCopyWithImpl<
          _$GetAllCustomersLocationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String date, String rotID)
        getSalesmanLocationEvent,
    required TResult Function(String date) getAllCustomersLocationEvent,
    required TResult Function() clearsalessmansEvent,
  }) {
    return getAllCustomersLocationEvent(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String date, String rotID)? getSalesmanLocationEvent,
    TResult? Function(String date)? getAllCustomersLocationEvent,
    TResult? Function()? clearsalessmansEvent,
  }) {
    return getAllCustomersLocationEvent?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String date, String rotID)? getSalesmanLocationEvent,
    TResult Function(String date)? getAllCustomersLocationEvent,
    TResult Function()? clearsalessmansEvent,
    required TResult orElse(),
  }) {
    if (getAllCustomersLocationEvent != null) {
      return getAllCustomersLocationEvent(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSalesmanLocationEvent value)
        getSalesmanLocationEvent,
    required TResult Function(GetAllCustomersLocationEvent value)
        getAllCustomersLocationEvent,
    required TResult Function(ClearsalessmansEvent value) clearsalessmansEvent,
  }) {
    return getAllCustomersLocationEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSalesmanLocationEvent value)? getSalesmanLocationEvent,
    TResult? Function(GetAllCustomersLocationEvent value)?
        getAllCustomersLocationEvent,
    TResult? Function(ClearsalessmansEvent value)? clearsalessmansEvent,
  }) {
    return getAllCustomersLocationEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSalesmanLocationEvent value)? getSalesmanLocationEvent,
    TResult Function(GetAllCustomersLocationEvent value)?
        getAllCustomersLocationEvent,
    TResult Function(ClearsalessmansEvent value)? clearsalessmansEvent,
    required TResult orElse(),
  }) {
    if (getAllCustomersLocationEvent != null) {
      return getAllCustomersLocationEvent(this);
    }
    return orElse();
  }
}

abstract class GetAllCustomersLocationEvent implements TrackSalesManListEvent {
  const factory GetAllCustomersLocationEvent({required final String date}) =
      _$GetAllCustomersLocationEventImpl;

  String get date;

  /// Create a copy of TrackSalesManListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllCustomersLocationEventImplCopyWith<
          _$GetAllCustomersLocationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearsalessmansEventImplCopyWith<$Res> {
  factory _$$ClearsalessmansEventImplCopyWith(_$ClearsalessmansEventImpl value,
          $Res Function(_$ClearsalessmansEventImpl) then) =
      __$$ClearsalessmansEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearsalessmansEventImplCopyWithImpl<$Res>
    extends _$TrackSalesManListEventCopyWithImpl<$Res,
        _$ClearsalessmansEventImpl>
    implements _$$ClearsalessmansEventImplCopyWith<$Res> {
  __$$ClearsalessmansEventImplCopyWithImpl(_$ClearsalessmansEventImpl _value,
      $Res Function(_$ClearsalessmansEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackSalesManListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearsalessmansEventImpl implements ClearsalessmansEvent {
  const _$ClearsalessmansEventImpl();

  @override
  String toString() {
    return 'TrackSalesManListEvent.clearsalessmansEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearsalessmansEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String date, String rotID)
        getSalesmanLocationEvent,
    required TResult Function(String date) getAllCustomersLocationEvent,
    required TResult Function() clearsalessmansEvent,
  }) {
    return clearsalessmansEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String date, String rotID)? getSalesmanLocationEvent,
    TResult? Function(String date)? getAllCustomersLocationEvent,
    TResult? Function()? clearsalessmansEvent,
  }) {
    return clearsalessmansEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String date, String rotID)? getSalesmanLocationEvent,
    TResult Function(String date)? getAllCustomersLocationEvent,
    TResult Function()? clearsalessmansEvent,
    required TResult orElse(),
  }) {
    if (clearsalessmansEvent != null) {
      return clearsalessmansEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSalesmanLocationEvent value)
        getSalesmanLocationEvent,
    required TResult Function(GetAllCustomersLocationEvent value)
        getAllCustomersLocationEvent,
    required TResult Function(ClearsalessmansEvent value) clearsalessmansEvent,
  }) {
    return clearsalessmansEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSalesmanLocationEvent value)? getSalesmanLocationEvent,
    TResult? Function(GetAllCustomersLocationEvent value)?
        getAllCustomersLocationEvent,
    TResult? Function(ClearsalessmansEvent value)? clearsalessmansEvent,
  }) {
    return clearsalessmansEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSalesmanLocationEvent value)? getSalesmanLocationEvent,
    TResult Function(GetAllCustomersLocationEvent value)?
        getAllCustomersLocationEvent,
    TResult Function(ClearsalessmansEvent value)? clearsalessmansEvent,
    required TResult orElse(),
  }) {
    if (clearsalessmansEvent != null) {
      return clearsalessmansEvent(this);
    }
    return orElse();
  }
}

abstract class ClearsalessmansEvent implements TrackSalesManListEvent {
  const factory ClearsalessmansEvent() = _$ClearsalessmansEventImpl;
}

/// @nodoc
mixin _$TrackSalesManListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TrackingSalesManModel>? salesman)
        gettrackSalesManDataState,
    required TResult Function(List<CustomerLiveLocationModel>? customers)
        trackAllCustomersState,
    required TResult Function() trackSalesManFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TrackingSalesManModel>? salesman)?
        gettrackSalesManDataState,
    TResult? Function(List<CustomerLiveLocationModel>? customers)?
        trackAllCustomersState,
    TResult? Function()? trackSalesManFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TrackingSalesManModel>? salesman)?
        gettrackSalesManDataState,
    TResult Function(List<CustomerLiveLocationModel>? customers)?
        trackAllCustomersState,
    TResult Function()? trackSalesManFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GettrackSalesManDataState value)
        gettrackSalesManDataState,
    required TResult Function(TrackAllCustomersState value)
        trackAllCustomersState,
    required TResult Function(TrackSalesManFailedState value)
        trackSalesManFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GettrackSalesManDataState value)?
        gettrackSalesManDataState,
    TResult? Function(TrackAllCustomersState value)? trackAllCustomersState,
    TResult? Function(TrackSalesManFailedState value)? trackSalesManFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GettrackSalesManDataState value)?
        gettrackSalesManDataState,
    TResult Function(TrackAllCustomersState value)? trackAllCustomersState,
    TResult Function(TrackSalesManFailedState value)? trackSalesManFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackSalesManListStateCopyWith<$Res> {
  factory $TrackSalesManListStateCopyWith(TrackSalesManListState value,
          $Res Function(TrackSalesManListState) then) =
      _$TrackSalesManListStateCopyWithImpl<$Res, TrackSalesManListState>;
}

/// @nodoc
class _$TrackSalesManListStateCopyWithImpl<$Res,
        $Val extends TrackSalesManListState>
    implements $TrackSalesManListStateCopyWith<$Res> {
  _$TrackSalesManListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackSalesManListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GettrackSalesManDataStateImplCopyWith<$Res> {
  factory _$$GettrackSalesManDataStateImplCopyWith(
          _$GettrackSalesManDataStateImpl value,
          $Res Function(_$GettrackSalesManDataStateImpl) then) =
      __$$GettrackSalesManDataStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TrackingSalesManModel>? salesman});
}

/// @nodoc
class __$$GettrackSalesManDataStateImplCopyWithImpl<$Res>
    extends _$TrackSalesManListStateCopyWithImpl<$Res,
        _$GettrackSalesManDataStateImpl>
    implements _$$GettrackSalesManDataStateImplCopyWith<$Res> {
  __$$GettrackSalesManDataStateImplCopyWithImpl(
      _$GettrackSalesManDataStateImpl _value,
      $Res Function(_$GettrackSalesManDataStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackSalesManListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salesman = freezed,
  }) {
    return _then(_$GettrackSalesManDataStateImpl(
      salesman: freezed == salesman
          ? _value._salesman
          : salesman // ignore: cast_nullable_to_non_nullable
              as List<TrackingSalesManModel>?,
    ));
  }
}

/// @nodoc

class _$GettrackSalesManDataStateImpl implements GettrackSalesManDataState {
  const _$GettrackSalesManDataStateImpl(
      {required final List<TrackingSalesManModel>? salesman})
      : _salesman = salesman;

  final List<TrackingSalesManModel>? _salesman;
  @override
  List<TrackingSalesManModel>? get salesman {
    final value = _salesman;
    if (value == null) return null;
    if (_salesman is EqualUnmodifiableListView) return _salesman;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TrackSalesManListState.gettrackSalesManDataState(salesman: $salesman)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GettrackSalesManDataStateImpl &&
            const DeepCollectionEquality().equals(other._salesman, _salesman));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_salesman));

  /// Create a copy of TrackSalesManListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GettrackSalesManDataStateImplCopyWith<_$GettrackSalesManDataStateImpl>
      get copyWith => __$$GettrackSalesManDataStateImplCopyWithImpl<
          _$GettrackSalesManDataStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TrackingSalesManModel>? salesman)
        gettrackSalesManDataState,
    required TResult Function(List<CustomerLiveLocationModel>? customers)
        trackAllCustomersState,
    required TResult Function() trackSalesManFailedState,
  }) {
    return gettrackSalesManDataState(salesman);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TrackingSalesManModel>? salesman)?
        gettrackSalesManDataState,
    TResult? Function(List<CustomerLiveLocationModel>? customers)?
        trackAllCustomersState,
    TResult? Function()? trackSalesManFailedState,
  }) {
    return gettrackSalesManDataState?.call(salesman);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TrackingSalesManModel>? salesman)?
        gettrackSalesManDataState,
    TResult Function(List<CustomerLiveLocationModel>? customers)?
        trackAllCustomersState,
    TResult Function()? trackSalesManFailedState,
    required TResult orElse(),
  }) {
    if (gettrackSalesManDataState != null) {
      return gettrackSalesManDataState(salesman);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GettrackSalesManDataState value)
        gettrackSalesManDataState,
    required TResult Function(TrackAllCustomersState value)
        trackAllCustomersState,
    required TResult Function(TrackSalesManFailedState value)
        trackSalesManFailedState,
  }) {
    return gettrackSalesManDataState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GettrackSalesManDataState value)?
        gettrackSalesManDataState,
    TResult? Function(TrackAllCustomersState value)? trackAllCustomersState,
    TResult? Function(TrackSalesManFailedState value)? trackSalesManFailedState,
  }) {
    return gettrackSalesManDataState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GettrackSalesManDataState value)?
        gettrackSalesManDataState,
    TResult Function(TrackAllCustomersState value)? trackAllCustomersState,
    TResult Function(TrackSalesManFailedState value)? trackSalesManFailedState,
    required TResult orElse(),
  }) {
    if (gettrackSalesManDataState != null) {
      return gettrackSalesManDataState(this);
    }
    return orElse();
  }
}

abstract class GettrackSalesManDataState implements TrackSalesManListState {
  const factory GettrackSalesManDataState(
          {required final List<TrackingSalesManModel>? salesman}) =
      _$GettrackSalesManDataStateImpl;

  List<TrackingSalesManModel>? get salesman;

  /// Create a copy of TrackSalesManListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GettrackSalesManDataStateImplCopyWith<_$GettrackSalesManDataStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TrackAllCustomersStateImplCopyWith<$Res> {
  factory _$$TrackAllCustomersStateImplCopyWith(
          _$TrackAllCustomersStateImpl value,
          $Res Function(_$TrackAllCustomersStateImpl) then) =
      __$$TrackAllCustomersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CustomerLiveLocationModel>? customers});
}

/// @nodoc
class __$$TrackAllCustomersStateImplCopyWithImpl<$Res>
    extends _$TrackSalesManListStateCopyWithImpl<$Res,
        _$TrackAllCustomersStateImpl>
    implements _$$TrackAllCustomersStateImplCopyWith<$Res> {
  __$$TrackAllCustomersStateImplCopyWithImpl(
      _$TrackAllCustomersStateImpl _value,
      $Res Function(_$TrackAllCustomersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackSalesManListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = freezed,
  }) {
    return _then(_$TrackAllCustomersStateImpl(
      customers: freezed == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<CustomerLiveLocationModel>?,
    ));
  }
}

/// @nodoc

class _$TrackAllCustomersStateImpl implements TrackAllCustomersState {
  const _$TrackAllCustomersStateImpl(
      {required final List<CustomerLiveLocationModel>? customers})
      : _customers = customers;

  final List<CustomerLiveLocationModel>? _customers;
  @override
  List<CustomerLiveLocationModel>? get customers {
    final value = _customers;
    if (value == null) return null;
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TrackSalesManListState.trackAllCustomersState(customers: $customers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackAllCustomersStateImpl &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_customers));

  /// Create a copy of TrackSalesManListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackAllCustomersStateImplCopyWith<_$TrackAllCustomersStateImpl>
      get copyWith => __$$TrackAllCustomersStateImplCopyWithImpl<
          _$TrackAllCustomersStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TrackingSalesManModel>? salesman)
        gettrackSalesManDataState,
    required TResult Function(List<CustomerLiveLocationModel>? customers)
        trackAllCustomersState,
    required TResult Function() trackSalesManFailedState,
  }) {
    return trackAllCustomersState(customers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TrackingSalesManModel>? salesman)?
        gettrackSalesManDataState,
    TResult? Function(List<CustomerLiveLocationModel>? customers)?
        trackAllCustomersState,
    TResult? Function()? trackSalesManFailedState,
  }) {
    return trackAllCustomersState?.call(customers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TrackingSalesManModel>? salesman)?
        gettrackSalesManDataState,
    TResult Function(List<CustomerLiveLocationModel>? customers)?
        trackAllCustomersState,
    TResult Function()? trackSalesManFailedState,
    required TResult orElse(),
  }) {
    if (trackAllCustomersState != null) {
      return trackAllCustomersState(customers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GettrackSalesManDataState value)
        gettrackSalesManDataState,
    required TResult Function(TrackAllCustomersState value)
        trackAllCustomersState,
    required TResult Function(TrackSalesManFailedState value)
        trackSalesManFailedState,
  }) {
    return trackAllCustomersState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GettrackSalesManDataState value)?
        gettrackSalesManDataState,
    TResult? Function(TrackAllCustomersState value)? trackAllCustomersState,
    TResult? Function(TrackSalesManFailedState value)? trackSalesManFailedState,
  }) {
    return trackAllCustomersState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GettrackSalesManDataState value)?
        gettrackSalesManDataState,
    TResult Function(TrackAllCustomersState value)? trackAllCustomersState,
    TResult Function(TrackSalesManFailedState value)? trackSalesManFailedState,
    required TResult orElse(),
  }) {
    if (trackAllCustomersState != null) {
      return trackAllCustomersState(this);
    }
    return orElse();
  }
}

abstract class TrackAllCustomersState implements TrackSalesManListState {
  const factory TrackAllCustomersState(
          {required final List<CustomerLiveLocationModel>? customers}) =
      _$TrackAllCustomersStateImpl;

  List<CustomerLiveLocationModel>? get customers;

  /// Create a copy of TrackSalesManListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackAllCustomersStateImplCopyWith<_$TrackAllCustomersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TrackSalesManFailedStateImplCopyWith<$Res> {
  factory _$$TrackSalesManFailedStateImplCopyWith(
          _$TrackSalesManFailedStateImpl value,
          $Res Function(_$TrackSalesManFailedStateImpl) then) =
      __$$TrackSalesManFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TrackSalesManFailedStateImplCopyWithImpl<$Res>
    extends _$TrackSalesManListStateCopyWithImpl<$Res,
        _$TrackSalesManFailedStateImpl>
    implements _$$TrackSalesManFailedStateImplCopyWith<$Res> {
  __$$TrackSalesManFailedStateImplCopyWithImpl(
      _$TrackSalesManFailedStateImpl _value,
      $Res Function(_$TrackSalesManFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackSalesManListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TrackSalesManFailedStateImpl implements TrackSalesManFailedState {
  const _$TrackSalesManFailedStateImpl();

  @override
  String toString() {
    return 'TrackSalesManListState.trackSalesManFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackSalesManFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TrackingSalesManModel>? salesman)
        gettrackSalesManDataState,
    required TResult Function(List<CustomerLiveLocationModel>? customers)
        trackAllCustomersState,
    required TResult Function() trackSalesManFailedState,
  }) {
    return trackSalesManFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TrackingSalesManModel>? salesman)?
        gettrackSalesManDataState,
    TResult? Function(List<CustomerLiveLocationModel>? customers)?
        trackAllCustomersState,
    TResult? Function()? trackSalesManFailedState,
  }) {
    return trackSalesManFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TrackingSalesManModel>? salesman)?
        gettrackSalesManDataState,
    TResult Function(List<CustomerLiveLocationModel>? customers)?
        trackAllCustomersState,
    TResult Function()? trackSalesManFailedState,
    required TResult orElse(),
  }) {
    if (trackSalesManFailedState != null) {
      return trackSalesManFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GettrackSalesManDataState value)
        gettrackSalesManDataState,
    required TResult Function(TrackAllCustomersState value)
        trackAllCustomersState,
    required TResult Function(TrackSalesManFailedState value)
        trackSalesManFailedState,
  }) {
    return trackSalesManFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GettrackSalesManDataState value)?
        gettrackSalesManDataState,
    TResult? Function(TrackAllCustomersState value)? trackAllCustomersState,
    TResult? Function(TrackSalesManFailedState value)? trackSalesManFailedState,
  }) {
    return trackSalesManFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GettrackSalesManDataState value)?
        gettrackSalesManDataState,
    TResult Function(TrackAllCustomersState value)? trackAllCustomersState,
    TResult Function(TrackSalesManFailedState value)? trackSalesManFailedState,
    required TResult orElse(),
  }) {
    if (trackSalesManFailedState != null) {
      return trackSalesManFailedState(this);
    }
    return orElse();
  }
}

abstract class TrackSalesManFailedState implements TrackSalesManListState {
  const factory TrackSalesManFailedState() = _$TrackSalesManFailedStateImpl;
}
