// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merch_return_request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MerchReturnRequestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fromDate, String toDate, String status, String searchQuery)
        getMErchReturnRequestDataEvent,
    required TResult Function() clearMerchReturnRequestData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMErchReturnRequestDataEvent,
    TResult? Function()? clearMerchReturnRequestData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMErchReturnRequestDataEvent,
    TResult Function()? clearMerchReturnRequestData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMErchReturnRequestDataEvent value)
        getMErchReturnRequestDataEvent,
    required TResult Function(ClearMerchReturnRequestData value)
        clearMerchReturnRequestData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMErchReturnRequestDataEvent value)?
        getMErchReturnRequestDataEvent,
    TResult? Function(ClearMerchReturnRequestData value)?
        clearMerchReturnRequestData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMErchReturnRequestDataEvent value)?
        getMErchReturnRequestDataEvent,
    TResult Function(ClearMerchReturnRequestData value)?
        clearMerchReturnRequestData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchReturnRequestEventCopyWith<$Res> {
  factory $MerchReturnRequestEventCopyWith(MerchReturnRequestEvent value,
          $Res Function(MerchReturnRequestEvent) then) =
      _$MerchReturnRequestEventCopyWithImpl<$Res, MerchReturnRequestEvent>;
}

/// @nodoc
class _$MerchReturnRequestEventCopyWithImpl<$Res,
        $Val extends MerchReturnRequestEvent>
    implements $MerchReturnRequestEventCopyWith<$Res> {
  _$MerchReturnRequestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetMErchReturnRequestDataEventImplCopyWith<$Res> {
  factory _$$GetMErchReturnRequestDataEventImplCopyWith(
          _$GetMErchReturnRequestDataEventImpl value,
          $Res Function(_$GetMErchReturnRequestDataEventImpl) then) =
      __$$GetMErchReturnRequestDataEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String fromDate, String toDate, String status, String searchQuery});
}

/// @nodoc
class __$$GetMErchReturnRequestDataEventImplCopyWithImpl<$Res>
    extends _$MerchReturnRequestEventCopyWithImpl<$Res,
        _$GetMErchReturnRequestDataEventImpl>
    implements _$$GetMErchReturnRequestDataEventImplCopyWith<$Res> {
  __$$GetMErchReturnRequestDataEventImplCopyWithImpl(
      _$GetMErchReturnRequestDataEventImpl _value,
      $Res Function(_$GetMErchReturnRequestDataEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
    Object? toDate = null,
    Object? status = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetMErchReturnRequestDataEventImpl(
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

class _$GetMErchReturnRequestDataEventImpl
    implements GetMErchReturnRequestDataEvent {
  const _$GetMErchReturnRequestDataEventImpl(
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
    return 'MerchReturnRequestEvent.getMErchReturnRequestDataEvent(fromDate: $fromDate, toDate: $toDate, status: $status, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMErchReturnRequestDataEventImpl &&
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
  _$$GetMErchReturnRequestDataEventImplCopyWith<
          _$GetMErchReturnRequestDataEventImpl>
      get copyWith => __$$GetMErchReturnRequestDataEventImplCopyWithImpl<
          _$GetMErchReturnRequestDataEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fromDate, String toDate, String status, String searchQuery)
        getMErchReturnRequestDataEvent,
    required TResult Function() clearMerchReturnRequestData,
  }) {
    return getMErchReturnRequestDataEvent(
        fromDate, toDate, status, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMErchReturnRequestDataEvent,
    TResult? Function()? clearMerchReturnRequestData,
  }) {
    return getMErchReturnRequestDataEvent?.call(
        fromDate, toDate, status, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMErchReturnRequestDataEvent,
    TResult Function()? clearMerchReturnRequestData,
    required TResult orElse(),
  }) {
    if (getMErchReturnRequestDataEvent != null) {
      return getMErchReturnRequestDataEvent(
          fromDate, toDate, status, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMErchReturnRequestDataEvent value)
        getMErchReturnRequestDataEvent,
    required TResult Function(ClearMerchReturnRequestData value)
        clearMerchReturnRequestData,
  }) {
    return getMErchReturnRequestDataEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMErchReturnRequestDataEvent value)?
        getMErchReturnRequestDataEvent,
    TResult? Function(ClearMerchReturnRequestData value)?
        clearMerchReturnRequestData,
  }) {
    return getMErchReturnRequestDataEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMErchReturnRequestDataEvent value)?
        getMErchReturnRequestDataEvent,
    TResult Function(ClearMerchReturnRequestData value)?
        clearMerchReturnRequestData,
    required TResult orElse(),
  }) {
    if (getMErchReturnRequestDataEvent != null) {
      return getMErchReturnRequestDataEvent(this);
    }
    return orElse();
  }
}

abstract class GetMErchReturnRequestDataEvent
    implements MerchReturnRequestEvent {
  const factory GetMErchReturnRequestDataEvent(
          {required final String fromDate,
          required final String toDate,
          required final String status,
          required final String searchQuery}) =
      _$GetMErchReturnRequestDataEventImpl;

  String get fromDate;
  String get toDate;
  String get status;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetMErchReturnRequestDataEventImplCopyWith<
          _$GetMErchReturnRequestDataEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearMerchReturnRequestDataImplCopyWith<$Res> {
  factory _$$ClearMerchReturnRequestDataImplCopyWith(
          _$ClearMerchReturnRequestDataImpl value,
          $Res Function(_$ClearMerchReturnRequestDataImpl) then) =
      __$$ClearMerchReturnRequestDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearMerchReturnRequestDataImplCopyWithImpl<$Res>
    extends _$MerchReturnRequestEventCopyWithImpl<$Res,
        _$ClearMerchReturnRequestDataImpl>
    implements _$$ClearMerchReturnRequestDataImplCopyWith<$Res> {
  __$$ClearMerchReturnRequestDataImplCopyWithImpl(
      _$ClearMerchReturnRequestDataImpl _value,
      $Res Function(_$ClearMerchReturnRequestDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearMerchReturnRequestDataImpl implements ClearMerchReturnRequestData {
  const _$ClearMerchReturnRequestDataImpl();

  @override
  String toString() {
    return 'MerchReturnRequestEvent.clearMerchReturnRequestData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearMerchReturnRequestDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fromDate, String toDate, String status, String searchQuery)
        getMErchReturnRequestDataEvent,
    required TResult Function() clearMerchReturnRequestData,
  }) {
    return clearMerchReturnRequestData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMErchReturnRequestDataEvent,
    TResult? Function()? clearMerchReturnRequestData,
  }) {
    return clearMerchReturnRequestData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMErchReturnRequestDataEvent,
    TResult Function()? clearMerchReturnRequestData,
    required TResult orElse(),
  }) {
    if (clearMerchReturnRequestData != null) {
      return clearMerchReturnRequestData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMErchReturnRequestDataEvent value)
        getMErchReturnRequestDataEvent,
    required TResult Function(ClearMerchReturnRequestData value)
        clearMerchReturnRequestData,
  }) {
    return clearMerchReturnRequestData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMErchReturnRequestDataEvent value)?
        getMErchReturnRequestDataEvent,
    TResult? Function(ClearMerchReturnRequestData value)?
        clearMerchReturnRequestData,
  }) {
    return clearMerchReturnRequestData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMErchReturnRequestDataEvent value)?
        getMErchReturnRequestDataEvent,
    TResult Function(ClearMerchReturnRequestData value)?
        clearMerchReturnRequestData,
    required TResult orElse(),
  }) {
    if (clearMerchReturnRequestData != null) {
      return clearMerchReturnRequestData(this);
    }
    return orElse();
  }
}

abstract class ClearMerchReturnRequestData implements MerchReturnRequestEvent {
  const factory ClearMerchReturnRequestData() =
      _$ClearMerchReturnRequestDataImpl;
}

/// @nodoc
mixin _$MerchReturnRequestState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MerchReturnRequestModel>? returnData)
        getMerchReturnReqDataState,
    required TResult Function() merchReturnRequestDataFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MerchReturnRequestModel>? returnData)?
        getMerchReturnReqDataState,
    TResult? Function()? merchReturnRequestDataFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MerchReturnRequestModel>? returnData)?
        getMerchReturnReqDataState,
    TResult Function()? merchReturnRequestDataFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchReturnReqDataState value)
        getMerchReturnReqDataState,
    required TResult Function(MerchReturnRequestDataFailed value)
        merchReturnRequestDataFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchReturnReqDataState value)?
        getMerchReturnReqDataState,
    TResult? Function(MerchReturnRequestDataFailed value)?
        merchReturnRequestDataFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchReturnReqDataState value)?
        getMerchReturnReqDataState,
    TResult Function(MerchReturnRequestDataFailed value)?
        merchReturnRequestDataFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchReturnRequestStateCopyWith<$Res> {
  factory $MerchReturnRequestStateCopyWith(MerchReturnRequestState value,
          $Res Function(MerchReturnRequestState) then) =
      _$MerchReturnRequestStateCopyWithImpl<$Res, MerchReturnRequestState>;
}

/// @nodoc
class _$MerchReturnRequestStateCopyWithImpl<$Res,
        $Val extends MerchReturnRequestState>
    implements $MerchReturnRequestStateCopyWith<$Res> {
  _$MerchReturnRequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetMerchReturnReqDataStateImplCopyWith<$Res> {
  factory _$$GetMerchReturnReqDataStateImplCopyWith(
          _$GetMerchReturnReqDataStateImpl value,
          $Res Function(_$GetMerchReturnReqDataStateImpl) then) =
      __$$GetMerchReturnReqDataStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MerchReturnRequestModel>? returnData});
}

/// @nodoc
class __$$GetMerchReturnReqDataStateImplCopyWithImpl<$Res>
    extends _$MerchReturnRequestStateCopyWithImpl<$Res,
        _$GetMerchReturnReqDataStateImpl>
    implements _$$GetMerchReturnReqDataStateImplCopyWith<$Res> {
  __$$GetMerchReturnReqDataStateImplCopyWithImpl(
      _$GetMerchReturnReqDataStateImpl _value,
      $Res Function(_$GetMerchReturnReqDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? returnData = freezed,
  }) {
    return _then(_$GetMerchReturnReqDataStateImpl(
      returnData: freezed == returnData
          ? _value._returnData
          : returnData // ignore: cast_nullable_to_non_nullable
              as List<MerchReturnRequestModel>?,
    ));
  }
}

/// @nodoc

class _$GetMerchReturnReqDataStateImpl implements GetMerchReturnReqDataState {
  const _$GetMerchReturnReqDataStateImpl(
      {required final List<MerchReturnRequestModel>? returnData})
      : _returnData = returnData;

  final List<MerchReturnRequestModel>? _returnData;
  @override
  List<MerchReturnRequestModel>? get returnData {
    final value = _returnData;
    if (value == null) return null;
    if (_returnData is EqualUnmodifiableListView) return _returnData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MerchReturnRequestState.getMerchReturnReqDataState(returnData: $returnData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMerchReturnReqDataStateImpl &&
            const DeepCollectionEquality()
                .equals(other._returnData, _returnData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_returnData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMerchReturnReqDataStateImplCopyWith<_$GetMerchReturnReqDataStateImpl>
      get copyWith => __$$GetMerchReturnReqDataStateImplCopyWithImpl<
          _$GetMerchReturnReqDataStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MerchReturnRequestModel>? returnData)
        getMerchReturnReqDataState,
    required TResult Function() merchReturnRequestDataFailed,
  }) {
    return getMerchReturnReqDataState(returnData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MerchReturnRequestModel>? returnData)?
        getMerchReturnReqDataState,
    TResult? Function()? merchReturnRequestDataFailed,
  }) {
    return getMerchReturnReqDataState?.call(returnData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MerchReturnRequestModel>? returnData)?
        getMerchReturnReqDataState,
    TResult Function()? merchReturnRequestDataFailed,
    required TResult orElse(),
  }) {
    if (getMerchReturnReqDataState != null) {
      return getMerchReturnReqDataState(returnData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchReturnReqDataState value)
        getMerchReturnReqDataState,
    required TResult Function(MerchReturnRequestDataFailed value)
        merchReturnRequestDataFailed,
  }) {
    return getMerchReturnReqDataState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchReturnReqDataState value)?
        getMerchReturnReqDataState,
    TResult? Function(MerchReturnRequestDataFailed value)?
        merchReturnRequestDataFailed,
  }) {
    return getMerchReturnReqDataState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchReturnReqDataState value)?
        getMerchReturnReqDataState,
    TResult Function(MerchReturnRequestDataFailed value)?
        merchReturnRequestDataFailed,
    required TResult orElse(),
  }) {
    if (getMerchReturnReqDataState != null) {
      return getMerchReturnReqDataState(this);
    }
    return orElse();
  }
}

abstract class GetMerchReturnReqDataState implements MerchReturnRequestState {
  const factory GetMerchReturnReqDataState(
          {required final List<MerchReturnRequestModel>? returnData}) =
      _$GetMerchReturnReqDataStateImpl;

  List<MerchReturnRequestModel>? get returnData;
  @JsonKey(ignore: true)
  _$$GetMerchReturnReqDataStateImplCopyWith<_$GetMerchReturnReqDataStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MerchReturnRequestDataFailedImplCopyWith<$Res> {
  factory _$$MerchReturnRequestDataFailedImplCopyWith(
          _$MerchReturnRequestDataFailedImpl value,
          $Res Function(_$MerchReturnRequestDataFailedImpl) then) =
      __$$MerchReturnRequestDataFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MerchReturnRequestDataFailedImplCopyWithImpl<$Res>
    extends _$MerchReturnRequestStateCopyWithImpl<$Res,
        _$MerchReturnRequestDataFailedImpl>
    implements _$$MerchReturnRequestDataFailedImplCopyWith<$Res> {
  __$$MerchReturnRequestDataFailedImplCopyWithImpl(
      _$MerchReturnRequestDataFailedImpl _value,
      $Res Function(_$MerchReturnRequestDataFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MerchReturnRequestDataFailedImpl
    implements MerchReturnRequestDataFailed {
  const _$MerchReturnRequestDataFailedImpl();

  @override
  String toString() {
    return 'MerchReturnRequestState.merchReturnRequestDataFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerchReturnRequestDataFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MerchReturnRequestModel>? returnData)
        getMerchReturnReqDataState,
    required TResult Function() merchReturnRequestDataFailed,
  }) {
    return merchReturnRequestDataFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MerchReturnRequestModel>? returnData)?
        getMerchReturnReqDataState,
    TResult? Function()? merchReturnRequestDataFailed,
  }) {
    return merchReturnRequestDataFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MerchReturnRequestModel>? returnData)?
        getMerchReturnReqDataState,
    TResult Function()? merchReturnRequestDataFailed,
    required TResult orElse(),
  }) {
    if (merchReturnRequestDataFailed != null) {
      return merchReturnRequestDataFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchReturnReqDataState value)
        getMerchReturnReqDataState,
    required TResult Function(MerchReturnRequestDataFailed value)
        merchReturnRequestDataFailed,
  }) {
    return merchReturnRequestDataFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchReturnReqDataState value)?
        getMerchReturnReqDataState,
    TResult? Function(MerchReturnRequestDataFailed value)?
        merchReturnRequestDataFailed,
  }) {
    return merchReturnRequestDataFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchReturnReqDataState value)?
        getMerchReturnReqDataState,
    TResult Function(MerchReturnRequestDataFailed value)?
        merchReturnRequestDataFailed,
    required TResult orElse(),
  }) {
    if (merchReturnRequestDataFailed != null) {
      return merchReturnRequestDataFailed(this);
    }
    return orElse();
  }
}

abstract class MerchReturnRequestDataFailed implements MerchReturnRequestState {
  const factory MerchReturnRequestDataFailed() =
      _$MerchReturnRequestDataFailedImpl;
}
