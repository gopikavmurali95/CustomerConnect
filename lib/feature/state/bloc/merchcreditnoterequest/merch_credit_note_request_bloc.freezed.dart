// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merch_credit_note_request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MerchCreditNoteRequestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fromDate, String toDate, String status, String searchQuery)
        getMerchCreditNoteRequestEvent,
    required TResult Function() clearMerchCreditNoteRequestData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchCreditNoteRequestEvent,
    TResult? Function()? clearMerchCreditNoteRequestData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchCreditNoteRequestEvent,
    TResult Function()? clearMerchCreditNoteRequestData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchCreditNoteRequestEvent value)
        getMerchCreditNoteRequestEvent,
    required TResult Function(ClearMerchCreditNoteRequestData value)
        clearMerchCreditNoteRequestData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchCreditNoteRequestEvent value)?
        getMerchCreditNoteRequestEvent,
    TResult? Function(ClearMerchCreditNoteRequestData value)?
        clearMerchCreditNoteRequestData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchCreditNoteRequestEvent value)?
        getMerchCreditNoteRequestEvent,
    TResult Function(ClearMerchCreditNoteRequestData value)?
        clearMerchCreditNoteRequestData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchCreditNoteRequestEventCopyWith<$Res> {
  factory $MerchCreditNoteRequestEventCopyWith(
          MerchCreditNoteRequestEvent value,
          $Res Function(MerchCreditNoteRequestEvent) then) =
      _$MerchCreditNoteRequestEventCopyWithImpl<$Res,
          MerchCreditNoteRequestEvent>;
}

/// @nodoc
class _$MerchCreditNoteRequestEventCopyWithImpl<$Res,
        $Val extends MerchCreditNoteRequestEvent>
    implements $MerchCreditNoteRequestEventCopyWith<$Res> {
  _$MerchCreditNoteRequestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchCreditNoteRequestEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetMerchCreditNoteRequestEventImplCopyWith<$Res> {
  factory _$$GetMerchCreditNoteRequestEventImplCopyWith(
          _$GetMerchCreditNoteRequestEventImpl value,
          $Res Function(_$GetMerchCreditNoteRequestEventImpl) then) =
      __$$GetMerchCreditNoteRequestEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String fromDate, String toDate, String status, String searchQuery});
}

/// @nodoc
class __$$GetMerchCreditNoteRequestEventImplCopyWithImpl<$Res>
    extends _$MerchCreditNoteRequestEventCopyWithImpl<$Res,
        _$GetMerchCreditNoteRequestEventImpl>
    implements _$$GetMerchCreditNoteRequestEventImplCopyWith<$Res> {
  __$$GetMerchCreditNoteRequestEventImplCopyWithImpl(
      _$GetMerchCreditNoteRequestEventImpl _value,
      $Res Function(_$GetMerchCreditNoteRequestEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchCreditNoteRequestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
    Object? toDate = null,
    Object? status = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetMerchCreditNoteRequestEventImpl(
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

class _$GetMerchCreditNoteRequestEventImpl
    implements GetMerchCreditNoteRequestEvent {
  const _$GetMerchCreditNoteRequestEventImpl(
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
    return 'MerchCreditNoteRequestEvent.getMerchCreditNoteRequestEvent(fromDate: $fromDate, toDate: $toDate, status: $status, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMerchCreditNoteRequestEventImpl &&
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

  /// Create a copy of MerchCreditNoteRequestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMerchCreditNoteRequestEventImplCopyWith<
          _$GetMerchCreditNoteRequestEventImpl>
      get copyWith => __$$GetMerchCreditNoteRequestEventImplCopyWithImpl<
          _$GetMerchCreditNoteRequestEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fromDate, String toDate, String status, String searchQuery)
        getMerchCreditNoteRequestEvent,
    required TResult Function() clearMerchCreditNoteRequestData,
  }) {
    return getMerchCreditNoteRequestEvent(
        fromDate, toDate, status, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchCreditNoteRequestEvent,
    TResult? Function()? clearMerchCreditNoteRequestData,
  }) {
    return getMerchCreditNoteRequestEvent?.call(
        fromDate, toDate, status, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchCreditNoteRequestEvent,
    TResult Function()? clearMerchCreditNoteRequestData,
    required TResult orElse(),
  }) {
    if (getMerchCreditNoteRequestEvent != null) {
      return getMerchCreditNoteRequestEvent(
          fromDate, toDate, status, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchCreditNoteRequestEvent value)
        getMerchCreditNoteRequestEvent,
    required TResult Function(ClearMerchCreditNoteRequestData value)
        clearMerchCreditNoteRequestData,
  }) {
    return getMerchCreditNoteRequestEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchCreditNoteRequestEvent value)?
        getMerchCreditNoteRequestEvent,
    TResult? Function(ClearMerchCreditNoteRequestData value)?
        clearMerchCreditNoteRequestData,
  }) {
    return getMerchCreditNoteRequestEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchCreditNoteRequestEvent value)?
        getMerchCreditNoteRequestEvent,
    TResult Function(ClearMerchCreditNoteRequestData value)?
        clearMerchCreditNoteRequestData,
    required TResult orElse(),
  }) {
    if (getMerchCreditNoteRequestEvent != null) {
      return getMerchCreditNoteRequestEvent(this);
    }
    return orElse();
  }
}

abstract class GetMerchCreditNoteRequestEvent
    implements MerchCreditNoteRequestEvent {
  const factory GetMerchCreditNoteRequestEvent(
          {required final String fromDate,
          required final String toDate,
          required final String status,
          required final String searchQuery}) =
      _$GetMerchCreditNoteRequestEventImpl;

  String get fromDate;
  String get toDate;
  String get status;
  String get searchQuery;

  /// Create a copy of MerchCreditNoteRequestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMerchCreditNoteRequestEventImplCopyWith<
          _$GetMerchCreditNoteRequestEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearMerchCreditNoteRequestDataImplCopyWith<$Res> {
  factory _$$ClearMerchCreditNoteRequestDataImplCopyWith(
          _$ClearMerchCreditNoteRequestDataImpl value,
          $Res Function(_$ClearMerchCreditNoteRequestDataImpl) then) =
      __$$ClearMerchCreditNoteRequestDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearMerchCreditNoteRequestDataImplCopyWithImpl<$Res>
    extends _$MerchCreditNoteRequestEventCopyWithImpl<$Res,
        _$ClearMerchCreditNoteRequestDataImpl>
    implements _$$ClearMerchCreditNoteRequestDataImplCopyWith<$Res> {
  __$$ClearMerchCreditNoteRequestDataImplCopyWithImpl(
      _$ClearMerchCreditNoteRequestDataImpl _value,
      $Res Function(_$ClearMerchCreditNoteRequestDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchCreditNoteRequestEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearMerchCreditNoteRequestDataImpl
    implements ClearMerchCreditNoteRequestData {
  const _$ClearMerchCreditNoteRequestDataImpl();

  @override
  String toString() {
    return 'MerchCreditNoteRequestEvent.clearMerchCreditNoteRequestData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearMerchCreditNoteRequestDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fromDate, String toDate, String status, String searchQuery)
        getMerchCreditNoteRequestEvent,
    required TResult Function() clearMerchCreditNoteRequestData,
  }) {
    return clearMerchCreditNoteRequestData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchCreditNoteRequestEvent,
    TResult? Function()? clearMerchCreditNoteRequestData,
  }) {
    return clearMerchCreditNoteRequestData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchCreditNoteRequestEvent,
    TResult Function()? clearMerchCreditNoteRequestData,
    required TResult orElse(),
  }) {
    if (clearMerchCreditNoteRequestData != null) {
      return clearMerchCreditNoteRequestData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchCreditNoteRequestEvent value)
        getMerchCreditNoteRequestEvent,
    required TResult Function(ClearMerchCreditNoteRequestData value)
        clearMerchCreditNoteRequestData,
  }) {
    return clearMerchCreditNoteRequestData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchCreditNoteRequestEvent value)?
        getMerchCreditNoteRequestEvent,
    TResult? Function(ClearMerchCreditNoteRequestData value)?
        clearMerchCreditNoteRequestData,
  }) {
    return clearMerchCreditNoteRequestData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchCreditNoteRequestEvent value)?
        getMerchCreditNoteRequestEvent,
    TResult Function(ClearMerchCreditNoteRequestData value)?
        clearMerchCreditNoteRequestData,
    required TResult orElse(),
  }) {
    if (clearMerchCreditNoteRequestData != null) {
      return clearMerchCreditNoteRequestData(this);
    }
    return orElse();
  }
}

abstract class ClearMerchCreditNoteRequestData
    implements MerchCreditNoteRequestEvent {
  const factory ClearMerchCreditNoteRequestData() =
      _$ClearMerchCreditNoteRequestDataImpl;
}

/// @nodoc
mixin _$MerchCreditNoteRequestState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<MerchCreditNoteRequestModel>? creditNoteState)
        getMerchCreditNoteRequestState,
    required TResult Function() merchCreditRequestFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MerchCreditNoteRequestModel>? creditNoteState)?
        getMerchCreditNoteRequestState,
    TResult? Function()? merchCreditRequestFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MerchCreditNoteRequestModel>? creditNoteState)?
        getMerchCreditNoteRequestState,
    TResult Function()? merchCreditRequestFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchCreditNoteRequestState value)
        getMerchCreditNoteRequestState,
    required TResult Function(MerchCreditRequestFailed value)
        merchCreditRequestFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchCreditNoteRequestState value)?
        getMerchCreditNoteRequestState,
    TResult? Function(MerchCreditRequestFailed value)? merchCreditRequestFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchCreditNoteRequestState value)?
        getMerchCreditNoteRequestState,
    TResult Function(MerchCreditRequestFailed value)? merchCreditRequestFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchCreditNoteRequestStateCopyWith<$Res> {
  factory $MerchCreditNoteRequestStateCopyWith(
          MerchCreditNoteRequestState value,
          $Res Function(MerchCreditNoteRequestState) then) =
      _$MerchCreditNoteRequestStateCopyWithImpl<$Res,
          MerchCreditNoteRequestState>;
}

/// @nodoc
class _$MerchCreditNoteRequestStateCopyWithImpl<$Res,
        $Val extends MerchCreditNoteRequestState>
    implements $MerchCreditNoteRequestStateCopyWith<$Res> {
  _$MerchCreditNoteRequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchCreditNoteRequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetMerchCreditNoteRequestStateImplCopyWith<$Res> {
  factory _$$GetMerchCreditNoteRequestStateImplCopyWith(
          _$GetMerchCreditNoteRequestStateImpl value,
          $Res Function(_$GetMerchCreditNoteRequestStateImpl) then) =
      __$$GetMerchCreditNoteRequestStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MerchCreditNoteRequestModel>? creditNoteState});
}

/// @nodoc
class __$$GetMerchCreditNoteRequestStateImplCopyWithImpl<$Res>
    extends _$MerchCreditNoteRequestStateCopyWithImpl<$Res,
        _$GetMerchCreditNoteRequestStateImpl>
    implements _$$GetMerchCreditNoteRequestStateImplCopyWith<$Res> {
  __$$GetMerchCreditNoteRequestStateImplCopyWithImpl(
      _$GetMerchCreditNoteRequestStateImpl _value,
      $Res Function(_$GetMerchCreditNoteRequestStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchCreditNoteRequestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditNoteState = freezed,
  }) {
    return _then(_$GetMerchCreditNoteRequestStateImpl(
      creditNoteState: freezed == creditNoteState
          ? _value._creditNoteState
          : creditNoteState // ignore: cast_nullable_to_non_nullable
              as List<MerchCreditNoteRequestModel>?,
    ));
  }
}

/// @nodoc

class _$GetMerchCreditNoteRequestStateImpl
    implements GetMerchCreditNoteRequestState {
  const _$GetMerchCreditNoteRequestStateImpl(
      {required final List<MerchCreditNoteRequestModel>? creditNoteState})
      : _creditNoteState = creditNoteState;

  final List<MerchCreditNoteRequestModel>? _creditNoteState;
  @override
  List<MerchCreditNoteRequestModel>? get creditNoteState {
    final value = _creditNoteState;
    if (value == null) return null;
    if (_creditNoteState is EqualUnmodifiableListView) return _creditNoteState;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MerchCreditNoteRequestState.getMerchCreditNoteRequestState(creditNoteState: $creditNoteState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMerchCreditNoteRequestStateImpl &&
            const DeepCollectionEquality()
                .equals(other._creditNoteState, _creditNoteState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_creditNoteState));

  /// Create a copy of MerchCreditNoteRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMerchCreditNoteRequestStateImplCopyWith<
          _$GetMerchCreditNoteRequestStateImpl>
      get copyWith => __$$GetMerchCreditNoteRequestStateImplCopyWithImpl<
          _$GetMerchCreditNoteRequestStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<MerchCreditNoteRequestModel>? creditNoteState)
        getMerchCreditNoteRequestState,
    required TResult Function() merchCreditRequestFailed,
  }) {
    return getMerchCreditNoteRequestState(creditNoteState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MerchCreditNoteRequestModel>? creditNoteState)?
        getMerchCreditNoteRequestState,
    TResult? Function()? merchCreditRequestFailed,
  }) {
    return getMerchCreditNoteRequestState?.call(creditNoteState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MerchCreditNoteRequestModel>? creditNoteState)?
        getMerchCreditNoteRequestState,
    TResult Function()? merchCreditRequestFailed,
    required TResult orElse(),
  }) {
    if (getMerchCreditNoteRequestState != null) {
      return getMerchCreditNoteRequestState(creditNoteState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchCreditNoteRequestState value)
        getMerchCreditNoteRequestState,
    required TResult Function(MerchCreditRequestFailed value)
        merchCreditRequestFailed,
  }) {
    return getMerchCreditNoteRequestState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchCreditNoteRequestState value)?
        getMerchCreditNoteRequestState,
    TResult? Function(MerchCreditRequestFailed value)? merchCreditRequestFailed,
  }) {
    return getMerchCreditNoteRequestState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchCreditNoteRequestState value)?
        getMerchCreditNoteRequestState,
    TResult Function(MerchCreditRequestFailed value)? merchCreditRequestFailed,
    required TResult orElse(),
  }) {
    if (getMerchCreditNoteRequestState != null) {
      return getMerchCreditNoteRequestState(this);
    }
    return orElse();
  }
}

abstract class GetMerchCreditNoteRequestState
    implements MerchCreditNoteRequestState {
  const factory GetMerchCreditNoteRequestState(
          {required final List<MerchCreditNoteRequestModel>? creditNoteState}) =
      _$GetMerchCreditNoteRequestStateImpl;

  List<MerchCreditNoteRequestModel>? get creditNoteState;

  /// Create a copy of MerchCreditNoteRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMerchCreditNoteRequestStateImplCopyWith<
          _$GetMerchCreditNoteRequestStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MerchCreditRequestFailedImplCopyWith<$Res> {
  factory _$$MerchCreditRequestFailedImplCopyWith(
          _$MerchCreditRequestFailedImpl value,
          $Res Function(_$MerchCreditRequestFailedImpl) then) =
      __$$MerchCreditRequestFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MerchCreditRequestFailedImplCopyWithImpl<$Res>
    extends _$MerchCreditNoteRequestStateCopyWithImpl<$Res,
        _$MerchCreditRequestFailedImpl>
    implements _$$MerchCreditRequestFailedImplCopyWith<$Res> {
  __$$MerchCreditRequestFailedImplCopyWithImpl(
      _$MerchCreditRequestFailedImpl _value,
      $Res Function(_$MerchCreditRequestFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchCreditNoteRequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MerchCreditRequestFailedImpl implements MerchCreditRequestFailed {
  const _$MerchCreditRequestFailedImpl();

  @override
  String toString() {
    return 'MerchCreditNoteRequestState.merchCreditRequestFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerchCreditRequestFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<MerchCreditNoteRequestModel>? creditNoteState)
        getMerchCreditNoteRequestState,
    required TResult Function() merchCreditRequestFailed,
  }) {
    return merchCreditRequestFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MerchCreditNoteRequestModel>? creditNoteState)?
        getMerchCreditNoteRequestState,
    TResult? Function()? merchCreditRequestFailed,
  }) {
    return merchCreditRequestFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MerchCreditNoteRequestModel>? creditNoteState)?
        getMerchCreditNoteRequestState,
    TResult Function()? merchCreditRequestFailed,
    required TResult orElse(),
  }) {
    if (merchCreditRequestFailed != null) {
      return merchCreditRequestFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchCreditNoteRequestState value)
        getMerchCreditNoteRequestState,
    required TResult Function(MerchCreditRequestFailed value)
        merchCreditRequestFailed,
  }) {
    return merchCreditRequestFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchCreditNoteRequestState value)?
        getMerchCreditNoteRequestState,
    TResult? Function(MerchCreditRequestFailed value)? merchCreditRequestFailed,
  }) {
    return merchCreditRequestFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchCreditNoteRequestState value)?
        getMerchCreditNoteRequestState,
    TResult Function(MerchCreditRequestFailed value)? merchCreditRequestFailed,
    required TResult orElse(),
  }) {
    if (merchCreditRequestFailed != null) {
      return merchCreditRequestFailed(this);
    }
    return orElse();
  }
}

abstract class MerchCreditRequestFailed implements MerchCreditNoteRequestState {
  const factory MerchCreditRequestFailed() = _$MerchCreditRequestFailedImpl;
}
