// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merch_customer_activities_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MerchCustomerActivitiesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fromDate, String toDate, String status, String searchQuery)
        getMerchCustomerActivitiesData,
    required TResult Function() clearMerchCustomerActivitiesData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchCustomerActivitiesData,
    TResult? Function()? clearMerchCustomerActivitiesData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchCustomerActivitiesData,
    TResult Function()? clearMerchCustomerActivitiesData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchCustomerActivitiesData value)
        getMerchCustomerActivitiesData,
    required TResult Function(ClearMerchCustomerActivitiesData value)
        clearMerchCustomerActivitiesData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchCustomerActivitiesData value)?
        getMerchCustomerActivitiesData,
    TResult? Function(ClearMerchCustomerActivitiesData value)?
        clearMerchCustomerActivitiesData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchCustomerActivitiesData value)?
        getMerchCustomerActivitiesData,
    TResult Function(ClearMerchCustomerActivitiesData value)?
        clearMerchCustomerActivitiesData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchCustomerActivitiesEventCopyWith<$Res> {
  factory $MerchCustomerActivitiesEventCopyWith(
          MerchCustomerActivitiesEvent value,
          $Res Function(MerchCustomerActivitiesEvent) then) =
      _$MerchCustomerActivitiesEventCopyWithImpl<$Res,
          MerchCustomerActivitiesEvent>;
}

/// @nodoc
class _$MerchCustomerActivitiesEventCopyWithImpl<$Res,
        $Val extends MerchCustomerActivitiesEvent>
    implements $MerchCustomerActivitiesEventCopyWith<$Res> {
  _$MerchCustomerActivitiesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetMerchCustomerActivitiesDataImplCopyWith<$Res> {
  factory _$$GetMerchCustomerActivitiesDataImplCopyWith(
          _$GetMerchCustomerActivitiesDataImpl value,
          $Res Function(_$GetMerchCustomerActivitiesDataImpl) then) =
      __$$GetMerchCustomerActivitiesDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String fromDate, String toDate, String status, String searchQuery});
}

/// @nodoc
class __$$GetMerchCustomerActivitiesDataImplCopyWithImpl<$Res>
    extends _$MerchCustomerActivitiesEventCopyWithImpl<$Res,
        _$GetMerchCustomerActivitiesDataImpl>
    implements _$$GetMerchCustomerActivitiesDataImplCopyWith<$Res> {
  __$$GetMerchCustomerActivitiesDataImplCopyWithImpl(
      _$GetMerchCustomerActivitiesDataImpl _value,
      $Res Function(_$GetMerchCustomerActivitiesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
    Object? toDate = null,
    Object? status = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetMerchCustomerActivitiesDataImpl(
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMerchCustomerActivitiesDataImpl
    implements GetMerchCustomerActivitiesData {
  const _$GetMerchCustomerActivitiesDataImpl(
      {required this.fromDate,
      required this.toDate,
      required this.status,
      required this.searchQuery});

  @override
  final String fromDate;
  @override
  final String toDate;
  @override
  final String status;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'MerchCustomerActivitiesEvent.getMerchCustomerActivitiesData(fromDate: $fromDate, toDate: $toDate, status: $status, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMerchCustomerActivitiesDataImpl &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, fromDate, toDate, status, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMerchCustomerActivitiesDataImplCopyWith<
          _$GetMerchCustomerActivitiesDataImpl>
      get copyWith => __$$GetMerchCustomerActivitiesDataImplCopyWithImpl<
          _$GetMerchCustomerActivitiesDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fromDate, String toDate, String status, String searchQuery)
        getMerchCustomerActivitiesData,
    required TResult Function() clearMerchCustomerActivitiesData,
  }) {
    return getMerchCustomerActivitiesData(
        fromDate, toDate, status, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchCustomerActivitiesData,
    TResult? Function()? clearMerchCustomerActivitiesData,
  }) {
    return getMerchCustomerActivitiesData?.call(
        fromDate, toDate, status, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchCustomerActivitiesData,
    TResult Function()? clearMerchCustomerActivitiesData,
    required TResult orElse(),
  }) {
    if (getMerchCustomerActivitiesData != null) {
      return getMerchCustomerActivitiesData(
          fromDate, toDate, status, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchCustomerActivitiesData value)
        getMerchCustomerActivitiesData,
    required TResult Function(ClearMerchCustomerActivitiesData value)
        clearMerchCustomerActivitiesData,
  }) {
    return getMerchCustomerActivitiesData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchCustomerActivitiesData value)?
        getMerchCustomerActivitiesData,
    TResult? Function(ClearMerchCustomerActivitiesData value)?
        clearMerchCustomerActivitiesData,
  }) {
    return getMerchCustomerActivitiesData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchCustomerActivitiesData value)?
        getMerchCustomerActivitiesData,
    TResult Function(ClearMerchCustomerActivitiesData value)?
        clearMerchCustomerActivitiesData,
    required TResult orElse(),
  }) {
    if (getMerchCustomerActivitiesData != null) {
      return getMerchCustomerActivitiesData(this);
    }
    return orElse();
  }
}

abstract class GetMerchCustomerActivitiesData
    implements MerchCustomerActivitiesEvent {
  const factory GetMerchCustomerActivitiesData(
          {required final String fromDate,
          required final String toDate,
          required final String status,
          required final String searchQuery}) =
      _$GetMerchCustomerActivitiesDataImpl;

  String get fromDate;
  String get toDate;
  String get status;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetMerchCustomerActivitiesDataImplCopyWith<
          _$GetMerchCustomerActivitiesDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearMerchCustomerActivitiesDataImplCopyWith<$Res> {
  factory _$$ClearMerchCustomerActivitiesDataImplCopyWith(
          _$ClearMerchCustomerActivitiesDataImpl value,
          $Res Function(_$ClearMerchCustomerActivitiesDataImpl) then) =
      __$$ClearMerchCustomerActivitiesDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearMerchCustomerActivitiesDataImplCopyWithImpl<$Res>
    extends _$MerchCustomerActivitiesEventCopyWithImpl<$Res,
        _$ClearMerchCustomerActivitiesDataImpl>
    implements _$$ClearMerchCustomerActivitiesDataImplCopyWith<$Res> {
  __$$ClearMerchCustomerActivitiesDataImplCopyWithImpl(
      _$ClearMerchCustomerActivitiesDataImpl _value,
      $Res Function(_$ClearMerchCustomerActivitiesDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearMerchCustomerActivitiesDataImpl
    implements ClearMerchCustomerActivitiesData {
  const _$ClearMerchCustomerActivitiesDataImpl();

  @override
  String toString() {
    return 'MerchCustomerActivitiesEvent.clearMerchCustomerActivitiesData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearMerchCustomerActivitiesDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fromDate, String toDate, String status, String searchQuery)
        getMerchCustomerActivitiesData,
    required TResult Function() clearMerchCustomerActivitiesData,
  }) {
    return clearMerchCustomerActivitiesData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchCustomerActivitiesData,
    TResult? Function()? clearMerchCustomerActivitiesData,
  }) {
    return clearMerchCustomerActivitiesData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchCustomerActivitiesData,
    TResult Function()? clearMerchCustomerActivitiesData,
    required TResult orElse(),
  }) {
    if (clearMerchCustomerActivitiesData != null) {
      return clearMerchCustomerActivitiesData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchCustomerActivitiesData value)
        getMerchCustomerActivitiesData,
    required TResult Function(ClearMerchCustomerActivitiesData value)
        clearMerchCustomerActivitiesData,
  }) {
    return clearMerchCustomerActivitiesData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchCustomerActivitiesData value)?
        getMerchCustomerActivitiesData,
    TResult? Function(ClearMerchCustomerActivitiesData value)?
        clearMerchCustomerActivitiesData,
  }) {
    return clearMerchCustomerActivitiesData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchCustomerActivitiesData value)?
        getMerchCustomerActivitiesData,
    TResult Function(ClearMerchCustomerActivitiesData value)?
        clearMerchCustomerActivitiesData,
    required TResult orElse(),
  }) {
    if (clearMerchCustomerActivitiesData != null) {
      return clearMerchCustomerActivitiesData(this);
    }
    return orElse();
  }
}

abstract class ClearMerchCustomerActivitiesData
    implements MerchCustomerActivitiesEvent {
  const factory ClearMerchCustomerActivitiesData() =
      _$ClearMerchCustomerActivitiesDataImpl;
}

/// @nodoc
mixin _$MerchCustomerActivitiesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<MerchCustomerActivitiesModel>? cusActivitiesData)
        getMerchCustomerActivitiesDataState,
    required TResult Function() getMerchCustomerActivitiesDataFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MerchCustomerActivitiesModel>? cusActivitiesData)?
        getMerchCustomerActivitiesDataState,
    TResult? Function()? getMerchCustomerActivitiesDataFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MerchCustomerActivitiesModel>? cusActivitiesData)?
        getMerchCustomerActivitiesDataState,
    TResult Function()? getMerchCustomerActivitiesDataFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchCustomerActivitiesDataState value)
        getMerchCustomerActivitiesDataState,
    required TResult Function(GetMerchCustomerActivitiesDataFailed value)
        getMerchCustomerActivitiesDataFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchCustomerActivitiesDataState value)?
        getMerchCustomerActivitiesDataState,
    TResult? Function(GetMerchCustomerActivitiesDataFailed value)?
        getMerchCustomerActivitiesDataFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchCustomerActivitiesDataState value)?
        getMerchCustomerActivitiesDataState,
    TResult Function(GetMerchCustomerActivitiesDataFailed value)?
        getMerchCustomerActivitiesDataFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchCustomerActivitiesStateCopyWith<$Res> {
  factory $MerchCustomerActivitiesStateCopyWith(
          MerchCustomerActivitiesState value,
          $Res Function(MerchCustomerActivitiesState) then) =
      _$MerchCustomerActivitiesStateCopyWithImpl<$Res,
          MerchCustomerActivitiesState>;
}

/// @nodoc
class _$MerchCustomerActivitiesStateCopyWithImpl<$Res,
        $Val extends MerchCustomerActivitiesState>
    implements $MerchCustomerActivitiesStateCopyWith<$Res> {
  _$MerchCustomerActivitiesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetMerchCustomerActivitiesDataStateImplCopyWith<$Res> {
  factory _$$GetMerchCustomerActivitiesDataStateImplCopyWith(
          _$GetMerchCustomerActivitiesDataStateImpl value,
          $Res Function(_$GetMerchCustomerActivitiesDataStateImpl) then) =
      __$$GetMerchCustomerActivitiesDataStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MerchCustomerActivitiesModel>? cusActivitiesData});
}

/// @nodoc
class __$$GetMerchCustomerActivitiesDataStateImplCopyWithImpl<$Res>
    extends _$MerchCustomerActivitiesStateCopyWithImpl<$Res,
        _$GetMerchCustomerActivitiesDataStateImpl>
    implements _$$GetMerchCustomerActivitiesDataStateImplCopyWith<$Res> {
  __$$GetMerchCustomerActivitiesDataStateImplCopyWithImpl(
      _$GetMerchCustomerActivitiesDataStateImpl _value,
      $Res Function(_$GetMerchCustomerActivitiesDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cusActivitiesData = freezed,
  }) {
    return _then(_$GetMerchCustomerActivitiesDataStateImpl(
      cusActivitiesData: freezed == cusActivitiesData
          ? _value._cusActivitiesData
          : cusActivitiesData // ignore: cast_nullable_to_non_nullable
              as List<MerchCustomerActivitiesModel>?,
    ));
  }
}

/// @nodoc

class _$GetMerchCustomerActivitiesDataStateImpl
    implements GetMerchCustomerActivitiesDataState {
  const _$GetMerchCustomerActivitiesDataStateImpl(
      {required final List<MerchCustomerActivitiesModel>? cusActivitiesData})
      : _cusActivitiesData = cusActivitiesData;

  final List<MerchCustomerActivitiesModel>? _cusActivitiesData;
  @override
  List<MerchCustomerActivitiesModel>? get cusActivitiesData {
    final value = _cusActivitiesData;
    if (value == null) return null;
    if (_cusActivitiesData is EqualUnmodifiableListView)
      return _cusActivitiesData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MerchCustomerActivitiesState.getMerchCustomerActivitiesDataState(cusActivitiesData: $cusActivitiesData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMerchCustomerActivitiesDataStateImpl &&
            const DeepCollectionEquality()
                .equals(other._cusActivitiesData, _cusActivitiesData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cusActivitiesData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMerchCustomerActivitiesDataStateImplCopyWith<
          _$GetMerchCustomerActivitiesDataStateImpl>
      get copyWith => __$$GetMerchCustomerActivitiesDataStateImplCopyWithImpl<
          _$GetMerchCustomerActivitiesDataStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<MerchCustomerActivitiesModel>? cusActivitiesData)
        getMerchCustomerActivitiesDataState,
    required TResult Function() getMerchCustomerActivitiesDataFailed,
  }) {
    return getMerchCustomerActivitiesDataState(cusActivitiesData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MerchCustomerActivitiesModel>? cusActivitiesData)?
        getMerchCustomerActivitiesDataState,
    TResult? Function()? getMerchCustomerActivitiesDataFailed,
  }) {
    return getMerchCustomerActivitiesDataState?.call(cusActivitiesData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MerchCustomerActivitiesModel>? cusActivitiesData)?
        getMerchCustomerActivitiesDataState,
    TResult Function()? getMerchCustomerActivitiesDataFailed,
    required TResult orElse(),
  }) {
    if (getMerchCustomerActivitiesDataState != null) {
      return getMerchCustomerActivitiesDataState(cusActivitiesData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchCustomerActivitiesDataState value)
        getMerchCustomerActivitiesDataState,
    required TResult Function(GetMerchCustomerActivitiesDataFailed value)
        getMerchCustomerActivitiesDataFailed,
  }) {
    return getMerchCustomerActivitiesDataState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchCustomerActivitiesDataState value)?
        getMerchCustomerActivitiesDataState,
    TResult? Function(GetMerchCustomerActivitiesDataFailed value)?
        getMerchCustomerActivitiesDataFailed,
  }) {
    return getMerchCustomerActivitiesDataState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchCustomerActivitiesDataState value)?
        getMerchCustomerActivitiesDataState,
    TResult Function(GetMerchCustomerActivitiesDataFailed value)?
        getMerchCustomerActivitiesDataFailed,
    required TResult orElse(),
  }) {
    if (getMerchCustomerActivitiesDataState != null) {
      return getMerchCustomerActivitiesDataState(this);
    }
    return orElse();
  }
}

abstract class GetMerchCustomerActivitiesDataState
    implements MerchCustomerActivitiesState {
  const factory GetMerchCustomerActivitiesDataState(
      {required final List<MerchCustomerActivitiesModel>?
          cusActivitiesData}) = _$GetMerchCustomerActivitiesDataStateImpl;

  List<MerchCustomerActivitiesModel>? get cusActivitiesData;
  @JsonKey(ignore: true)
  _$$GetMerchCustomerActivitiesDataStateImplCopyWith<
          _$GetMerchCustomerActivitiesDataStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMerchCustomerActivitiesDataFailedImplCopyWith<$Res> {
  factory _$$GetMerchCustomerActivitiesDataFailedImplCopyWith(
          _$GetMerchCustomerActivitiesDataFailedImpl value,
          $Res Function(_$GetMerchCustomerActivitiesDataFailedImpl) then) =
      __$$GetMerchCustomerActivitiesDataFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMerchCustomerActivitiesDataFailedImplCopyWithImpl<$Res>
    extends _$MerchCustomerActivitiesStateCopyWithImpl<$Res,
        _$GetMerchCustomerActivitiesDataFailedImpl>
    implements _$$GetMerchCustomerActivitiesDataFailedImplCopyWith<$Res> {
  __$$GetMerchCustomerActivitiesDataFailedImplCopyWithImpl(
      _$GetMerchCustomerActivitiesDataFailedImpl _value,
      $Res Function(_$GetMerchCustomerActivitiesDataFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetMerchCustomerActivitiesDataFailedImpl
    implements GetMerchCustomerActivitiesDataFailed {
  const _$GetMerchCustomerActivitiesDataFailedImpl();

  @override
  String toString() {
    return 'MerchCustomerActivitiesState.getMerchCustomerActivitiesDataFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMerchCustomerActivitiesDataFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<MerchCustomerActivitiesModel>? cusActivitiesData)
        getMerchCustomerActivitiesDataState,
    required TResult Function() getMerchCustomerActivitiesDataFailed,
  }) {
    return getMerchCustomerActivitiesDataFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MerchCustomerActivitiesModel>? cusActivitiesData)?
        getMerchCustomerActivitiesDataState,
    TResult? Function()? getMerchCustomerActivitiesDataFailed,
  }) {
    return getMerchCustomerActivitiesDataFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MerchCustomerActivitiesModel>? cusActivitiesData)?
        getMerchCustomerActivitiesDataState,
    TResult Function()? getMerchCustomerActivitiesDataFailed,
    required TResult orElse(),
  }) {
    if (getMerchCustomerActivitiesDataFailed != null) {
      return getMerchCustomerActivitiesDataFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchCustomerActivitiesDataState value)
        getMerchCustomerActivitiesDataState,
    required TResult Function(GetMerchCustomerActivitiesDataFailed value)
        getMerchCustomerActivitiesDataFailed,
  }) {
    return getMerchCustomerActivitiesDataFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchCustomerActivitiesDataState value)?
        getMerchCustomerActivitiesDataState,
    TResult? Function(GetMerchCustomerActivitiesDataFailed value)?
        getMerchCustomerActivitiesDataFailed,
  }) {
    return getMerchCustomerActivitiesDataFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchCustomerActivitiesDataState value)?
        getMerchCustomerActivitiesDataState,
    TResult Function(GetMerchCustomerActivitiesDataFailed value)?
        getMerchCustomerActivitiesDataFailed,
    required TResult orElse(),
  }) {
    if (getMerchCustomerActivitiesDataFailed != null) {
      return getMerchCustomerActivitiesDataFailed(this);
    }
    return orElse();
  }
}

abstract class GetMerchCustomerActivitiesDataFailed
    implements MerchCustomerActivitiesState {
  const factory GetMerchCustomerActivitiesDataFailed() =
      _$GetMerchCustomerActivitiesDataFailedImpl;
}
