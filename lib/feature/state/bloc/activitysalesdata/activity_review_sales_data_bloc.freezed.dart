// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_review_sales_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActivityReviewSalesDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getActivitySalesEvent,
    required TResult Function() clearActivitySalesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getActivitySalesEvent,
    TResult? Function()? clearActivitySalesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getActivitySalesEvent,
    TResult Function()? clearActivitySalesEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActivitySalesEvent value)
        getActivitySalesEvent,
    required TResult Function(ClearActivitySalesEvent value)
        clearActivitySalesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActivitySalesEvent value)? getActivitySalesEvent,
    TResult? Function(ClearActivitySalesEvent value)? clearActivitySalesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActivitySalesEvent value)? getActivitySalesEvent,
    TResult Function(ClearActivitySalesEvent value)? clearActivitySalesEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityReviewSalesDataEventCopyWith<$Res> {
  factory $ActivityReviewSalesDataEventCopyWith(
          ActivityReviewSalesDataEvent value,
          $Res Function(ActivityReviewSalesDataEvent) then) =
      _$ActivityReviewSalesDataEventCopyWithImpl<$Res,
          ActivityReviewSalesDataEvent>;
}

/// @nodoc
class _$ActivityReviewSalesDataEventCopyWithImpl<$Res,
        $Val extends ActivityReviewSalesDataEvent>
    implements $ActivityReviewSalesDataEventCopyWith<$Res> {
  _$ActivityReviewSalesDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetActivitySalesEventImplCopyWith<$Res> {
  factory _$$GetActivitySalesEventImplCopyWith(
          _$GetActivitySalesEventImpl value,
          $Res Function(_$GetActivitySalesEventImpl) then) =
      __$$GetActivitySalesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String udpID});
}

/// @nodoc
class __$$GetActivitySalesEventImplCopyWithImpl<$Res>
    extends _$ActivityReviewSalesDataEventCopyWithImpl<$Res,
        _$GetActivitySalesEventImpl>
    implements _$$GetActivitySalesEventImplCopyWith<$Res> {
  __$$GetActivitySalesEventImplCopyWithImpl(_$GetActivitySalesEventImpl _value,
      $Res Function(_$GetActivitySalesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? udpID = null,
  }) {
    return _then(_$GetActivitySalesEventImpl(
      udpID: null == udpID
          ? _value.udpID
          : udpID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetActivitySalesEventImpl implements GetActivitySalesEvent {
  const _$GetActivitySalesEventImpl({required this.udpID});

  @override
  final String udpID;

  @override
  String toString() {
    return 'ActivityReviewSalesDataEvent.getActivitySalesEvent(udpID: $udpID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetActivitySalesEventImpl &&
            (identical(other.udpID, udpID) || other.udpID == udpID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, udpID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetActivitySalesEventImplCopyWith<_$GetActivitySalesEventImpl>
      get copyWith => __$$GetActivitySalesEventImplCopyWithImpl<
          _$GetActivitySalesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getActivitySalesEvent,
    required TResult Function() clearActivitySalesEvent,
  }) {
    return getActivitySalesEvent(udpID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getActivitySalesEvent,
    TResult? Function()? clearActivitySalesEvent,
  }) {
    return getActivitySalesEvent?.call(udpID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getActivitySalesEvent,
    TResult Function()? clearActivitySalesEvent,
    required TResult orElse(),
  }) {
    if (getActivitySalesEvent != null) {
      return getActivitySalesEvent(udpID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActivitySalesEvent value)
        getActivitySalesEvent,
    required TResult Function(ClearActivitySalesEvent value)
        clearActivitySalesEvent,
  }) {
    return getActivitySalesEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActivitySalesEvent value)? getActivitySalesEvent,
    TResult? Function(ClearActivitySalesEvent value)? clearActivitySalesEvent,
  }) {
    return getActivitySalesEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActivitySalesEvent value)? getActivitySalesEvent,
    TResult Function(ClearActivitySalesEvent value)? clearActivitySalesEvent,
    required TResult orElse(),
  }) {
    if (getActivitySalesEvent != null) {
      return getActivitySalesEvent(this);
    }
    return orElse();
  }
}

abstract class GetActivitySalesEvent implements ActivityReviewSalesDataEvent {
  const factory GetActivitySalesEvent({required final String udpID}) =
      _$GetActivitySalesEventImpl;

  String get udpID;
  @JsonKey(ignore: true)
  _$$GetActivitySalesEventImplCopyWith<_$GetActivitySalesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearActivitySalesEventImplCopyWith<$Res> {
  factory _$$ClearActivitySalesEventImplCopyWith(
          _$ClearActivitySalesEventImpl value,
          $Res Function(_$ClearActivitySalesEventImpl) then) =
      __$$ClearActivitySalesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearActivitySalesEventImplCopyWithImpl<$Res>
    extends _$ActivityReviewSalesDataEventCopyWithImpl<$Res,
        _$ClearActivitySalesEventImpl>
    implements _$$ClearActivitySalesEventImplCopyWith<$Res> {
  __$$ClearActivitySalesEventImplCopyWithImpl(
      _$ClearActivitySalesEventImpl _value,
      $Res Function(_$ClearActivitySalesEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearActivitySalesEventImpl implements ClearActivitySalesEvent {
  const _$ClearActivitySalesEventImpl();

  @override
  String toString() {
    return 'ActivityReviewSalesDataEvent.clearActivitySalesEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearActivitySalesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getActivitySalesEvent,
    required TResult Function() clearActivitySalesEvent,
  }) {
    return clearActivitySalesEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getActivitySalesEvent,
    TResult? Function()? clearActivitySalesEvent,
  }) {
    return clearActivitySalesEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getActivitySalesEvent,
    TResult Function()? clearActivitySalesEvent,
    required TResult orElse(),
  }) {
    if (clearActivitySalesEvent != null) {
      return clearActivitySalesEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActivitySalesEvent value)
        getActivitySalesEvent,
    required TResult Function(ClearActivitySalesEvent value)
        clearActivitySalesEvent,
  }) {
    return clearActivitySalesEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActivitySalesEvent value)? getActivitySalesEvent,
    TResult? Function(ClearActivitySalesEvent value)? clearActivitySalesEvent,
  }) {
    return clearActivitySalesEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActivitySalesEvent value)? getActivitySalesEvent,
    TResult Function(ClearActivitySalesEvent value)? clearActivitySalesEvent,
    required TResult orElse(),
  }) {
    if (clearActivitySalesEvent != null) {
      return clearActivitySalesEvent(this);
    }
    return orElse();
  }
}

abstract class ClearActivitySalesEvent implements ActivityReviewSalesDataEvent {
  const factory ClearActivitySalesEvent() = _$ClearActivitySalesEventImpl;
}

/// @nodoc
mixin _$ActivityReviewSalesDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActivityReviewSalesModel? sales)
        getActivityReviewSalesData,
    required TResult Function() activitySalesFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ActivityReviewSalesModel? sales)?
        getActivityReviewSalesData,
    TResult? Function()? activitySalesFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActivityReviewSalesModel? sales)?
        getActivityReviewSalesData,
    TResult Function()? activitySalesFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActivityReviewSalesData value)
        getActivityReviewSalesData,
    required TResult Function(ActivitySalesFailedState value)
        activitySalesFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActivityReviewSalesData value)?
        getActivityReviewSalesData,
    TResult? Function(ActivitySalesFailedState value)? activitySalesFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActivityReviewSalesData value)?
        getActivityReviewSalesData,
    TResult Function(ActivitySalesFailedState value)? activitySalesFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityReviewSalesDataStateCopyWith<$Res> {
  factory $ActivityReviewSalesDataStateCopyWith(
          ActivityReviewSalesDataState value,
          $Res Function(ActivityReviewSalesDataState) then) =
      _$ActivityReviewSalesDataStateCopyWithImpl<$Res,
          ActivityReviewSalesDataState>;
}

/// @nodoc
class _$ActivityReviewSalesDataStateCopyWithImpl<$Res,
        $Val extends ActivityReviewSalesDataState>
    implements $ActivityReviewSalesDataStateCopyWith<$Res> {
  _$ActivityReviewSalesDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetActivityReviewSalesDataImplCopyWith<$Res> {
  factory _$$GetActivityReviewSalesDataImplCopyWith(
          _$GetActivityReviewSalesDataImpl value,
          $Res Function(_$GetActivityReviewSalesDataImpl) then) =
      __$$GetActivityReviewSalesDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ActivityReviewSalesModel? sales});
}

/// @nodoc
class __$$GetActivityReviewSalesDataImplCopyWithImpl<$Res>
    extends _$ActivityReviewSalesDataStateCopyWithImpl<$Res,
        _$GetActivityReviewSalesDataImpl>
    implements _$$GetActivityReviewSalesDataImplCopyWith<$Res> {
  __$$GetActivityReviewSalesDataImplCopyWithImpl(
      _$GetActivityReviewSalesDataImpl _value,
      $Res Function(_$GetActivityReviewSalesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sales = freezed,
  }) {
    return _then(_$GetActivityReviewSalesDataImpl(
      sales: freezed == sales
          ? _value.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as ActivityReviewSalesModel?,
    ));
  }
}

/// @nodoc

class _$GetActivityReviewSalesDataImpl implements GetActivityReviewSalesData {
  const _$GetActivityReviewSalesDataImpl({required this.sales});

  @override
  final ActivityReviewSalesModel? sales;

  @override
  String toString() {
    return 'ActivityReviewSalesDataState.getActivityReviewSalesData(sales: $sales)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetActivityReviewSalesDataImpl &&
            (identical(other.sales, sales) || other.sales == sales));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sales);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetActivityReviewSalesDataImplCopyWith<_$GetActivityReviewSalesDataImpl>
      get copyWith => __$$GetActivityReviewSalesDataImplCopyWithImpl<
          _$GetActivityReviewSalesDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActivityReviewSalesModel? sales)
        getActivityReviewSalesData,
    required TResult Function() activitySalesFailedState,
  }) {
    return getActivityReviewSalesData(sales);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ActivityReviewSalesModel? sales)?
        getActivityReviewSalesData,
    TResult? Function()? activitySalesFailedState,
  }) {
    return getActivityReviewSalesData?.call(sales);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActivityReviewSalesModel? sales)?
        getActivityReviewSalesData,
    TResult Function()? activitySalesFailedState,
    required TResult orElse(),
  }) {
    if (getActivityReviewSalesData != null) {
      return getActivityReviewSalesData(sales);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActivityReviewSalesData value)
        getActivityReviewSalesData,
    required TResult Function(ActivitySalesFailedState value)
        activitySalesFailedState,
  }) {
    return getActivityReviewSalesData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActivityReviewSalesData value)?
        getActivityReviewSalesData,
    TResult? Function(ActivitySalesFailedState value)? activitySalesFailedState,
  }) {
    return getActivityReviewSalesData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActivityReviewSalesData value)?
        getActivityReviewSalesData,
    TResult Function(ActivitySalesFailedState value)? activitySalesFailedState,
    required TResult orElse(),
  }) {
    if (getActivityReviewSalesData != null) {
      return getActivityReviewSalesData(this);
    }
    return orElse();
  }
}

abstract class GetActivityReviewSalesData
    implements ActivityReviewSalesDataState {
  const factory GetActivityReviewSalesData(
          {required final ActivityReviewSalesModel? sales}) =
      _$GetActivityReviewSalesDataImpl;

  ActivityReviewSalesModel? get sales;
  @JsonKey(ignore: true)
  _$$GetActivityReviewSalesDataImplCopyWith<_$GetActivityReviewSalesDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActivitySalesFailedStateImplCopyWith<$Res> {
  factory _$$ActivitySalesFailedStateImplCopyWith(
          _$ActivitySalesFailedStateImpl value,
          $Res Function(_$ActivitySalesFailedStateImpl) then) =
      __$$ActivitySalesFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActivitySalesFailedStateImplCopyWithImpl<$Res>
    extends _$ActivityReviewSalesDataStateCopyWithImpl<$Res,
        _$ActivitySalesFailedStateImpl>
    implements _$$ActivitySalesFailedStateImplCopyWith<$Res> {
  __$$ActivitySalesFailedStateImplCopyWithImpl(
      _$ActivitySalesFailedStateImpl _value,
      $Res Function(_$ActivitySalesFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActivitySalesFailedStateImpl implements ActivitySalesFailedState {
  const _$ActivitySalesFailedStateImpl();

  @override
  String toString() {
    return 'ActivityReviewSalesDataState.activitySalesFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivitySalesFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActivityReviewSalesModel? sales)
        getActivityReviewSalesData,
    required TResult Function() activitySalesFailedState,
  }) {
    return activitySalesFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ActivityReviewSalesModel? sales)?
        getActivityReviewSalesData,
    TResult? Function()? activitySalesFailedState,
  }) {
    return activitySalesFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActivityReviewSalesModel? sales)?
        getActivityReviewSalesData,
    TResult Function()? activitySalesFailedState,
    required TResult orElse(),
  }) {
    if (activitySalesFailedState != null) {
      return activitySalesFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActivityReviewSalesData value)
        getActivityReviewSalesData,
    required TResult Function(ActivitySalesFailedState value)
        activitySalesFailedState,
  }) {
    return activitySalesFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActivityReviewSalesData value)?
        getActivityReviewSalesData,
    TResult? Function(ActivitySalesFailedState value)? activitySalesFailedState,
  }) {
    return activitySalesFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActivityReviewSalesData value)?
        getActivityReviewSalesData,
    TResult Function(ActivitySalesFailedState value)? activitySalesFailedState,
    required TResult orElse(),
  }) {
    if (activitySalesFailedState != null) {
      return activitySalesFailedState(this);
    }
    return orElse();
  }
}

abstract class ActivitySalesFailedState
    implements ActivityReviewSalesDataState {
  const factory ActivitySalesFailedState() = _$ActivitySalesFailedStateImpl;
}
