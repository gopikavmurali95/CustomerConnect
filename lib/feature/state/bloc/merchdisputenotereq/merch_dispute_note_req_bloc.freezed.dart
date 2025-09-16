// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merch_dispute_note_req_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MerchDisputeNoteReqEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fromDate, String toDate, String status, String searchQuery)
        getDisputeNoteDataEvent,
    required TResult Function() clearDisputeNoteData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getDisputeNoteDataEvent,
    TResult? Function()? clearDisputeNoteData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getDisputeNoteDataEvent,
    TResult Function()? clearDisputeNoteData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDisputeNoteDataEvent value)
        getDisputeNoteDataEvent,
    required TResult Function(ClearDisputeNoteData value) clearDisputeNoteData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDisputeNoteDataEvent value)? getDisputeNoteDataEvent,
    TResult? Function(ClearDisputeNoteData value)? clearDisputeNoteData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDisputeNoteDataEvent value)? getDisputeNoteDataEvent,
    TResult Function(ClearDisputeNoteData value)? clearDisputeNoteData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchDisputeNoteReqEventCopyWith<$Res> {
  factory $MerchDisputeNoteReqEventCopyWith(MerchDisputeNoteReqEvent value,
          $Res Function(MerchDisputeNoteReqEvent) then) =
      _$MerchDisputeNoteReqEventCopyWithImpl<$Res, MerchDisputeNoteReqEvent>;
}

/// @nodoc
class _$MerchDisputeNoteReqEventCopyWithImpl<$Res,
        $Val extends MerchDisputeNoteReqEvent>
    implements $MerchDisputeNoteReqEventCopyWith<$Res> {
  _$MerchDisputeNoteReqEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchDisputeNoteReqEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetDisputeNoteDataEventImplCopyWith<$Res> {
  factory _$$GetDisputeNoteDataEventImplCopyWith(
          _$GetDisputeNoteDataEventImpl value,
          $Res Function(_$GetDisputeNoteDataEventImpl) then) =
      __$$GetDisputeNoteDataEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String fromDate, String toDate, String status, String searchQuery});
}

/// @nodoc
class __$$GetDisputeNoteDataEventImplCopyWithImpl<$Res>
    extends _$MerchDisputeNoteReqEventCopyWithImpl<$Res,
        _$GetDisputeNoteDataEventImpl>
    implements _$$GetDisputeNoteDataEventImplCopyWith<$Res> {
  __$$GetDisputeNoteDataEventImplCopyWithImpl(
      _$GetDisputeNoteDataEventImpl _value,
      $Res Function(_$GetDisputeNoteDataEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchDisputeNoteReqEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
    Object? toDate = null,
    Object? status = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetDisputeNoteDataEventImpl(
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

class _$GetDisputeNoteDataEventImpl implements GetDisputeNoteDataEvent {
  const _$GetDisputeNoteDataEventImpl(
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
    return 'MerchDisputeNoteReqEvent.getDisputeNoteDataEvent(fromDate: $fromDate, toDate: $toDate, status: $status, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDisputeNoteDataEventImpl &&
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

  /// Create a copy of MerchDisputeNoteReqEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDisputeNoteDataEventImplCopyWith<_$GetDisputeNoteDataEventImpl>
      get copyWith => __$$GetDisputeNoteDataEventImplCopyWithImpl<
          _$GetDisputeNoteDataEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fromDate, String toDate, String status, String searchQuery)
        getDisputeNoteDataEvent,
    required TResult Function() clearDisputeNoteData,
  }) {
    return getDisputeNoteDataEvent(fromDate, toDate, status, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getDisputeNoteDataEvent,
    TResult? Function()? clearDisputeNoteData,
  }) {
    return getDisputeNoteDataEvent?.call(fromDate, toDate, status, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getDisputeNoteDataEvent,
    TResult Function()? clearDisputeNoteData,
    required TResult orElse(),
  }) {
    if (getDisputeNoteDataEvent != null) {
      return getDisputeNoteDataEvent(fromDate, toDate, status, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDisputeNoteDataEvent value)
        getDisputeNoteDataEvent,
    required TResult Function(ClearDisputeNoteData value) clearDisputeNoteData,
  }) {
    return getDisputeNoteDataEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDisputeNoteDataEvent value)? getDisputeNoteDataEvent,
    TResult? Function(ClearDisputeNoteData value)? clearDisputeNoteData,
  }) {
    return getDisputeNoteDataEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDisputeNoteDataEvent value)? getDisputeNoteDataEvent,
    TResult Function(ClearDisputeNoteData value)? clearDisputeNoteData,
    required TResult orElse(),
  }) {
    if (getDisputeNoteDataEvent != null) {
      return getDisputeNoteDataEvent(this);
    }
    return orElse();
  }
}

abstract class GetDisputeNoteDataEvent implements MerchDisputeNoteReqEvent {
  const factory GetDisputeNoteDataEvent(
      {required final String fromDate,
      required final String toDate,
      required final String status,
      required final String searchQuery}) = _$GetDisputeNoteDataEventImpl;

  String get fromDate;
  String get toDate;
  String get status;
  String get searchQuery;

  /// Create a copy of MerchDisputeNoteReqEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDisputeNoteDataEventImplCopyWith<_$GetDisputeNoteDataEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearDisputeNoteDataImplCopyWith<$Res> {
  factory _$$ClearDisputeNoteDataImplCopyWith(_$ClearDisputeNoteDataImpl value,
          $Res Function(_$ClearDisputeNoteDataImpl) then) =
      __$$ClearDisputeNoteDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearDisputeNoteDataImplCopyWithImpl<$Res>
    extends _$MerchDisputeNoteReqEventCopyWithImpl<$Res,
        _$ClearDisputeNoteDataImpl>
    implements _$$ClearDisputeNoteDataImplCopyWith<$Res> {
  __$$ClearDisputeNoteDataImplCopyWithImpl(_$ClearDisputeNoteDataImpl _value,
      $Res Function(_$ClearDisputeNoteDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchDisputeNoteReqEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearDisputeNoteDataImpl implements ClearDisputeNoteData {
  const _$ClearDisputeNoteDataImpl();

  @override
  String toString() {
    return 'MerchDisputeNoteReqEvent.clearDisputeNoteData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearDisputeNoteDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fromDate, String toDate, String status, String searchQuery)
        getDisputeNoteDataEvent,
    required TResult Function() clearDisputeNoteData,
  }) {
    return clearDisputeNoteData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getDisputeNoteDataEvent,
    TResult? Function()? clearDisputeNoteData,
  }) {
    return clearDisputeNoteData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getDisputeNoteDataEvent,
    TResult Function()? clearDisputeNoteData,
    required TResult orElse(),
  }) {
    if (clearDisputeNoteData != null) {
      return clearDisputeNoteData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDisputeNoteDataEvent value)
        getDisputeNoteDataEvent,
    required TResult Function(ClearDisputeNoteData value) clearDisputeNoteData,
  }) {
    return clearDisputeNoteData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDisputeNoteDataEvent value)? getDisputeNoteDataEvent,
    TResult? Function(ClearDisputeNoteData value)? clearDisputeNoteData,
  }) {
    return clearDisputeNoteData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDisputeNoteDataEvent value)? getDisputeNoteDataEvent,
    TResult Function(ClearDisputeNoteData value)? clearDisputeNoteData,
    required TResult orElse(),
  }) {
    if (clearDisputeNoteData != null) {
      return clearDisputeNoteData(this);
    }
    return orElse();
  }
}

abstract class ClearDisputeNoteData implements MerchDisputeNoteReqEvent {
  const factory ClearDisputeNoteData() = _$ClearDisputeNoteDataImpl;
}

/// @nodoc
mixin _$MerchDisputeNoteReqState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MerchDisputeRequestModel>? data)
        getMerchDisputeDataState,
    required TResult Function() merchDisputeNoteDataFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MerchDisputeRequestModel>? data)?
        getMerchDisputeDataState,
    TResult? Function()? merchDisputeNoteDataFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MerchDisputeRequestModel>? data)?
        getMerchDisputeDataState,
    TResult Function()? merchDisputeNoteDataFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchDisputeDataState value)
        getMerchDisputeDataState,
    required TResult Function(MerchDisputeNoteDataFailed value)
        merchDisputeNoteDataFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchDisputeDataState value)? getMerchDisputeDataState,
    TResult? Function(MerchDisputeNoteDataFailed value)?
        merchDisputeNoteDataFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchDisputeDataState value)? getMerchDisputeDataState,
    TResult Function(MerchDisputeNoteDataFailed value)?
        merchDisputeNoteDataFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchDisputeNoteReqStateCopyWith<$Res> {
  factory $MerchDisputeNoteReqStateCopyWith(MerchDisputeNoteReqState value,
          $Res Function(MerchDisputeNoteReqState) then) =
      _$MerchDisputeNoteReqStateCopyWithImpl<$Res, MerchDisputeNoteReqState>;
}

/// @nodoc
class _$MerchDisputeNoteReqStateCopyWithImpl<$Res,
        $Val extends MerchDisputeNoteReqState>
    implements $MerchDisputeNoteReqStateCopyWith<$Res> {
  _$MerchDisputeNoteReqStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchDisputeNoteReqState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetMerchDisputeDataStateImplCopyWith<$Res> {
  factory _$$GetMerchDisputeDataStateImplCopyWith(
          _$GetMerchDisputeDataStateImpl value,
          $Res Function(_$GetMerchDisputeDataStateImpl) then) =
      __$$GetMerchDisputeDataStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MerchDisputeRequestModel>? data});
}

/// @nodoc
class __$$GetMerchDisputeDataStateImplCopyWithImpl<$Res>
    extends _$MerchDisputeNoteReqStateCopyWithImpl<$Res,
        _$GetMerchDisputeDataStateImpl>
    implements _$$GetMerchDisputeDataStateImplCopyWith<$Res> {
  __$$GetMerchDisputeDataStateImplCopyWithImpl(
      _$GetMerchDisputeDataStateImpl _value,
      $Res Function(_$GetMerchDisputeDataStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchDisputeNoteReqState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetMerchDisputeDataStateImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MerchDisputeRequestModel>?,
    ));
  }
}

/// @nodoc

class _$GetMerchDisputeDataStateImpl implements GetMerchDisputeDataState {
  const _$GetMerchDisputeDataStateImpl(
      {required final List<MerchDisputeRequestModel>? data})
      : _data = data;

  final List<MerchDisputeRequestModel>? _data;
  @override
  List<MerchDisputeRequestModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MerchDisputeNoteReqState.getMerchDisputeDataState(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMerchDisputeDataStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of MerchDisputeNoteReqState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMerchDisputeDataStateImplCopyWith<_$GetMerchDisputeDataStateImpl>
      get copyWith => __$$GetMerchDisputeDataStateImplCopyWithImpl<
          _$GetMerchDisputeDataStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MerchDisputeRequestModel>? data)
        getMerchDisputeDataState,
    required TResult Function() merchDisputeNoteDataFailed,
  }) {
    return getMerchDisputeDataState(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MerchDisputeRequestModel>? data)?
        getMerchDisputeDataState,
    TResult? Function()? merchDisputeNoteDataFailed,
  }) {
    return getMerchDisputeDataState?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MerchDisputeRequestModel>? data)?
        getMerchDisputeDataState,
    TResult Function()? merchDisputeNoteDataFailed,
    required TResult orElse(),
  }) {
    if (getMerchDisputeDataState != null) {
      return getMerchDisputeDataState(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchDisputeDataState value)
        getMerchDisputeDataState,
    required TResult Function(MerchDisputeNoteDataFailed value)
        merchDisputeNoteDataFailed,
  }) {
    return getMerchDisputeDataState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchDisputeDataState value)? getMerchDisputeDataState,
    TResult? Function(MerchDisputeNoteDataFailed value)?
        merchDisputeNoteDataFailed,
  }) {
    return getMerchDisputeDataState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchDisputeDataState value)? getMerchDisputeDataState,
    TResult Function(MerchDisputeNoteDataFailed value)?
        merchDisputeNoteDataFailed,
    required TResult orElse(),
  }) {
    if (getMerchDisputeDataState != null) {
      return getMerchDisputeDataState(this);
    }
    return orElse();
  }
}

abstract class GetMerchDisputeDataState implements MerchDisputeNoteReqState {
  const factory GetMerchDisputeDataState(
          {required final List<MerchDisputeRequestModel>? data}) =
      _$GetMerchDisputeDataStateImpl;

  List<MerchDisputeRequestModel>? get data;

  /// Create a copy of MerchDisputeNoteReqState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMerchDisputeDataStateImplCopyWith<_$GetMerchDisputeDataStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MerchDisputeNoteDataFailedImplCopyWith<$Res> {
  factory _$$MerchDisputeNoteDataFailedImplCopyWith(
          _$MerchDisputeNoteDataFailedImpl value,
          $Res Function(_$MerchDisputeNoteDataFailedImpl) then) =
      __$$MerchDisputeNoteDataFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MerchDisputeNoteDataFailedImplCopyWithImpl<$Res>
    extends _$MerchDisputeNoteReqStateCopyWithImpl<$Res,
        _$MerchDisputeNoteDataFailedImpl>
    implements _$$MerchDisputeNoteDataFailedImplCopyWith<$Res> {
  __$$MerchDisputeNoteDataFailedImplCopyWithImpl(
      _$MerchDisputeNoteDataFailedImpl _value,
      $Res Function(_$MerchDisputeNoteDataFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchDisputeNoteReqState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MerchDisputeNoteDataFailedImpl implements MerchDisputeNoteDataFailed {
  const _$MerchDisputeNoteDataFailedImpl();

  @override
  String toString() {
    return 'MerchDisputeNoteReqState.merchDisputeNoteDataFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerchDisputeNoteDataFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MerchDisputeRequestModel>? data)
        getMerchDisputeDataState,
    required TResult Function() merchDisputeNoteDataFailed,
  }) {
    return merchDisputeNoteDataFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MerchDisputeRequestModel>? data)?
        getMerchDisputeDataState,
    TResult? Function()? merchDisputeNoteDataFailed,
  }) {
    return merchDisputeNoteDataFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MerchDisputeRequestModel>? data)?
        getMerchDisputeDataState,
    TResult Function()? merchDisputeNoteDataFailed,
    required TResult orElse(),
  }) {
    if (merchDisputeNoteDataFailed != null) {
      return merchDisputeNoteDataFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchDisputeDataState value)
        getMerchDisputeDataState,
    required TResult Function(MerchDisputeNoteDataFailed value)
        merchDisputeNoteDataFailed,
  }) {
    return merchDisputeNoteDataFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchDisputeDataState value)? getMerchDisputeDataState,
    TResult? Function(MerchDisputeNoteDataFailed value)?
        merchDisputeNoteDataFailed,
  }) {
    return merchDisputeNoteDataFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchDisputeDataState value)? getMerchDisputeDataState,
    TResult Function(MerchDisputeNoteDataFailed value)?
        merchDisputeNoteDataFailed,
    required TResult orElse(),
  }) {
    if (merchDisputeNoteDataFailed != null) {
      return merchDisputeNoteDataFailed(this);
    }
    return orElse();
  }
}

abstract class MerchDisputeNoteDataFailed implements MerchDisputeNoteReqState {
  const factory MerchDisputeNoteDataFailed() = _$MerchDisputeNoteDataFailedImpl;
}
