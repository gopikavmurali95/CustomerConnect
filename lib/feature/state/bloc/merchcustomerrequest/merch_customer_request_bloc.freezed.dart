// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merch_customer_request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MerchCustomerRequestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fromDate, String toDate, String status, String searchQuery)
        getMerchCustomerRequestEvent,
    required TResult Function() clearMerchCustomerRequestEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchCustomerRequestEvent,
    TResult? Function()? clearMerchCustomerRequestEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchCustomerRequestEvent,
    TResult Function()? clearMerchCustomerRequestEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchCustomerRequestEvent value)
        getMerchCustomerRequestEvent,
    required TResult Function(ClearMerchCustomerRequestEvent value)
        clearMerchCustomerRequestEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchCustomerRequestEvent value)?
        getMerchCustomerRequestEvent,
    TResult? Function(ClearMerchCustomerRequestEvent value)?
        clearMerchCustomerRequestEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchCustomerRequestEvent value)?
        getMerchCustomerRequestEvent,
    TResult Function(ClearMerchCustomerRequestEvent value)?
        clearMerchCustomerRequestEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchCustomerRequestEventCopyWith<$Res> {
  factory $MerchCustomerRequestEventCopyWith(MerchCustomerRequestEvent value,
          $Res Function(MerchCustomerRequestEvent) then) =
      _$MerchCustomerRequestEventCopyWithImpl<$Res, MerchCustomerRequestEvent>;
}

/// @nodoc
class _$MerchCustomerRequestEventCopyWithImpl<$Res,
        $Val extends MerchCustomerRequestEvent>
    implements $MerchCustomerRequestEventCopyWith<$Res> {
  _$MerchCustomerRequestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetMerchCustomerRequestEventImplCopyWith<$Res> {
  factory _$$GetMerchCustomerRequestEventImplCopyWith(
          _$GetMerchCustomerRequestEventImpl value,
          $Res Function(_$GetMerchCustomerRequestEventImpl) then) =
      __$$GetMerchCustomerRequestEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String fromDate, String toDate, String status, String searchQuery});
}

/// @nodoc
class __$$GetMerchCustomerRequestEventImplCopyWithImpl<$Res>
    extends _$MerchCustomerRequestEventCopyWithImpl<$Res,
        _$GetMerchCustomerRequestEventImpl>
    implements _$$GetMerchCustomerRequestEventImplCopyWith<$Res> {
  __$$GetMerchCustomerRequestEventImplCopyWithImpl(
      _$GetMerchCustomerRequestEventImpl _value,
      $Res Function(_$GetMerchCustomerRequestEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
    Object? toDate = null,
    Object? status = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetMerchCustomerRequestEventImpl(
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

class _$GetMerchCustomerRequestEventImpl
    implements GetMerchCustomerRequestEvent {
  const _$GetMerchCustomerRequestEventImpl(
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
    return 'MerchCustomerRequestEvent.getMerchCustomerRequestEvent(fromDate: $fromDate, toDate: $toDate, status: $status, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMerchCustomerRequestEventImpl &&
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
  _$$GetMerchCustomerRequestEventImplCopyWith<
          _$GetMerchCustomerRequestEventImpl>
      get copyWith => __$$GetMerchCustomerRequestEventImplCopyWithImpl<
          _$GetMerchCustomerRequestEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fromDate, String toDate, String status, String searchQuery)
        getMerchCustomerRequestEvent,
    required TResult Function() clearMerchCustomerRequestEvent,
  }) {
    return getMerchCustomerRequestEvent(fromDate, toDate, status, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchCustomerRequestEvent,
    TResult? Function()? clearMerchCustomerRequestEvent,
  }) {
    return getMerchCustomerRequestEvent?.call(
        fromDate, toDate, status, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchCustomerRequestEvent,
    TResult Function()? clearMerchCustomerRequestEvent,
    required TResult orElse(),
  }) {
    if (getMerchCustomerRequestEvent != null) {
      return getMerchCustomerRequestEvent(
          fromDate, toDate, status, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchCustomerRequestEvent value)
        getMerchCustomerRequestEvent,
    required TResult Function(ClearMerchCustomerRequestEvent value)
        clearMerchCustomerRequestEvent,
  }) {
    return getMerchCustomerRequestEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchCustomerRequestEvent value)?
        getMerchCustomerRequestEvent,
    TResult? Function(ClearMerchCustomerRequestEvent value)?
        clearMerchCustomerRequestEvent,
  }) {
    return getMerchCustomerRequestEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchCustomerRequestEvent value)?
        getMerchCustomerRequestEvent,
    TResult Function(ClearMerchCustomerRequestEvent value)?
        clearMerchCustomerRequestEvent,
    required TResult orElse(),
  }) {
    if (getMerchCustomerRequestEvent != null) {
      return getMerchCustomerRequestEvent(this);
    }
    return orElse();
  }
}

abstract class GetMerchCustomerRequestEvent
    implements MerchCustomerRequestEvent {
  const factory GetMerchCustomerRequestEvent(
      {required final String fromDate,
      required final String toDate,
      required final String status,
      required final String searchQuery}) = _$GetMerchCustomerRequestEventImpl;

  String get fromDate;
  String get toDate;
  String get status;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetMerchCustomerRequestEventImplCopyWith<
          _$GetMerchCustomerRequestEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearMerchCustomerRequestEventImplCopyWith<$Res> {
  factory _$$ClearMerchCustomerRequestEventImplCopyWith(
          _$ClearMerchCustomerRequestEventImpl value,
          $Res Function(_$ClearMerchCustomerRequestEventImpl) then) =
      __$$ClearMerchCustomerRequestEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearMerchCustomerRequestEventImplCopyWithImpl<$Res>
    extends _$MerchCustomerRequestEventCopyWithImpl<$Res,
        _$ClearMerchCustomerRequestEventImpl>
    implements _$$ClearMerchCustomerRequestEventImplCopyWith<$Res> {
  __$$ClearMerchCustomerRequestEventImplCopyWithImpl(
      _$ClearMerchCustomerRequestEventImpl _value,
      $Res Function(_$ClearMerchCustomerRequestEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearMerchCustomerRequestEventImpl
    implements ClearMerchCustomerRequestEvent {
  const _$ClearMerchCustomerRequestEventImpl();

  @override
  String toString() {
    return 'MerchCustomerRequestEvent.clearMerchCustomerRequestEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearMerchCustomerRequestEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fromDate, String toDate, String status, String searchQuery)
        getMerchCustomerRequestEvent,
    required TResult Function() clearMerchCustomerRequestEvent,
  }) {
    return clearMerchCustomerRequestEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchCustomerRequestEvent,
    TResult? Function()? clearMerchCustomerRequestEvent,
  }) {
    return clearMerchCustomerRequestEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchCustomerRequestEvent,
    TResult Function()? clearMerchCustomerRequestEvent,
    required TResult orElse(),
  }) {
    if (clearMerchCustomerRequestEvent != null) {
      return clearMerchCustomerRequestEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchCustomerRequestEvent value)
        getMerchCustomerRequestEvent,
    required TResult Function(ClearMerchCustomerRequestEvent value)
        clearMerchCustomerRequestEvent,
  }) {
    return clearMerchCustomerRequestEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchCustomerRequestEvent value)?
        getMerchCustomerRequestEvent,
    TResult? Function(ClearMerchCustomerRequestEvent value)?
        clearMerchCustomerRequestEvent,
  }) {
    return clearMerchCustomerRequestEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchCustomerRequestEvent value)?
        getMerchCustomerRequestEvent,
    TResult Function(ClearMerchCustomerRequestEvent value)?
        clearMerchCustomerRequestEvent,
    required TResult orElse(),
  }) {
    if (clearMerchCustomerRequestEvent != null) {
      return clearMerchCustomerRequestEvent(this);
    }
    return orElse();
  }
}

abstract class ClearMerchCustomerRequestEvent
    implements MerchCustomerRequestEvent {
  const factory ClearMerchCustomerRequestEvent() =
      _$ClearMerchCustomerRequestEventImpl;
}

/// @nodoc
mixin _$MerchCustomerRequestState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MerchCustomerRequestHeaderModel>? headers)
        getMerchCustomerRequestHeadersState,
    required TResult Function() merchCustomerRequestsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MerchCustomerRequestHeaderModel>? headers)?
        getMerchCustomerRequestHeadersState,
    TResult? Function()? merchCustomerRequestsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MerchCustomerRequestHeaderModel>? headers)?
        getMerchCustomerRequestHeadersState,
    TResult Function()? merchCustomerRequestsFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchCustomerRequestHeadersState value)
        getMerchCustomerRequestHeadersState,
    required TResult Function(MerchCustomerRequestsFailedState value)
        merchCustomerRequestsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchCustomerRequestHeadersState value)?
        getMerchCustomerRequestHeadersState,
    TResult? Function(MerchCustomerRequestsFailedState value)?
        merchCustomerRequestsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchCustomerRequestHeadersState value)?
        getMerchCustomerRequestHeadersState,
    TResult Function(MerchCustomerRequestsFailedState value)?
        merchCustomerRequestsFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchCustomerRequestStateCopyWith<$Res> {
  factory $MerchCustomerRequestStateCopyWith(MerchCustomerRequestState value,
          $Res Function(MerchCustomerRequestState) then) =
      _$MerchCustomerRequestStateCopyWithImpl<$Res, MerchCustomerRequestState>;
}

/// @nodoc
class _$MerchCustomerRequestStateCopyWithImpl<$Res,
        $Val extends MerchCustomerRequestState>
    implements $MerchCustomerRequestStateCopyWith<$Res> {
  _$MerchCustomerRequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetMerchCustomerRequestHeadersStateImplCopyWith<$Res> {
  factory _$$GetMerchCustomerRequestHeadersStateImplCopyWith(
          _$GetMerchCustomerRequestHeadersStateImpl value,
          $Res Function(_$GetMerchCustomerRequestHeadersStateImpl) then) =
      __$$GetMerchCustomerRequestHeadersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MerchCustomerRequestHeaderModel>? headers});
}

/// @nodoc
class __$$GetMerchCustomerRequestHeadersStateImplCopyWithImpl<$Res>
    extends _$MerchCustomerRequestStateCopyWithImpl<$Res,
        _$GetMerchCustomerRequestHeadersStateImpl>
    implements _$$GetMerchCustomerRequestHeadersStateImplCopyWith<$Res> {
  __$$GetMerchCustomerRequestHeadersStateImplCopyWithImpl(
      _$GetMerchCustomerRequestHeadersStateImpl _value,
      $Res Function(_$GetMerchCustomerRequestHeadersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_$GetMerchCustomerRequestHeadersStateImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<MerchCustomerRequestHeaderModel>?,
    ));
  }
}

/// @nodoc

class _$GetMerchCustomerRequestHeadersStateImpl
    implements GetMerchCustomerRequestHeadersState {
  const _$GetMerchCustomerRequestHeadersStateImpl(
      {required final List<MerchCustomerRequestHeaderModel>? headers})
      : _headers = headers;

  final List<MerchCustomerRequestHeaderModel>? _headers;
  @override
  List<MerchCustomerRequestHeaderModel>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MerchCustomerRequestState.getMerchCustomerRequestHeadersState(headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMerchCustomerRequestHeadersStateImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMerchCustomerRequestHeadersStateImplCopyWith<
          _$GetMerchCustomerRequestHeadersStateImpl>
      get copyWith => __$$GetMerchCustomerRequestHeadersStateImplCopyWithImpl<
          _$GetMerchCustomerRequestHeadersStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MerchCustomerRequestHeaderModel>? headers)
        getMerchCustomerRequestHeadersState,
    required TResult Function() merchCustomerRequestsFailedState,
  }) {
    return getMerchCustomerRequestHeadersState(headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MerchCustomerRequestHeaderModel>? headers)?
        getMerchCustomerRequestHeadersState,
    TResult? Function()? merchCustomerRequestsFailedState,
  }) {
    return getMerchCustomerRequestHeadersState?.call(headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MerchCustomerRequestHeaderModel>? headers)?
        getMerchCustomerRequestHeadersState,
    TResult Function()? merchCustomerRequestsFailedState,
    required TResult orElse(),
  }) {
    if (getMerchCustomerRequestHeadersState != null) {
      return getMerchCustomerRequestHeadersState(headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchCustomerRequestHeadersState value)
        getMerchCustomerRequestHeadersState,
    required TResult Function(MerchCustomerRequestsFailedState value)
        merchCustomerRequestsFailedState,
  }) {
    return getMerchCustomerRequestHeadersState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchCustomerRequestHeadersState value)?
        getMerchCustomerRequestHeadersState,
    TResult? Function(MerchCustomerRequestsFailedState value)?
        merchCustomerRequestsFailedState,
  }) {
    return getMerchCustomerRequestHeadersState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchCustomerRequestHeadersState value)?
        getMerchCustomerRequestHeadersState,
    TResult Function(MerchCustomerRequestsFailedState value)?
        merchCustomerRequestsFailedState,
    required TResult orElse(),
  }) {
    if (getMerchCustomerRequestHeadersState != null) {
      return getMerchCustomerRequestHeadersState(this);
    }
    return orElse();
  }
}

abstract class GetMerchCustomerRequestHeadersState
    implements MerchCustomerRequestState {
  const factory GetMerchCustomerRequestHeadersState(
          {required final List<MerchCustomerRequestHeaderModel>? headers}) =
      _$GetMerchCustomerRequestHeadersStateImpl;

  List<MerchCustomerRequestHeaderModel>? get headers;
  @JsonKey(ignore: true)
  _$$GetMerchCustomerRequestHeadersStateImplCopyWith<
          _$GetMerchCustomerRequestHeadersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MerchCustomerRequestsFailedStateImplCopyWith<$Res> {
  factory _$$MerchCustomerRequestsFailedStateImplCopyWith(
          _$MerchCustomerRequestsFailedStateImpl value,
          $Res Function(_$MerchCustomerRequestsFailedStateImpl) then) =
      __$$MerchCustomerRequestsFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MerchCustomerRequestsFailedStateImplCopyWithImpl<$Res>
    extends _$MerchCustomerRequestStateCopyWithImpl<$Res,
        _$MerchCustomerRequestsFailedStateImpl>
    implements _$$MerchCustomerRequestsFailedStateImplCopyWith<$Res> {
  __$$MerchCustomerRequestsFailedStateImplCopyWithImpl(
      _$MerchCustomerRequestsFailedStateImpl _value,
      $Res Function(_$MerchCustomerRequestsFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MerchCustomerRequestsFailedStateImpl
    implements MerchCustomerRequestsFailedState {
  const _$MerchCustomerRequestsFailedStateImpl();

  @override
  String toString() {
    return 'MerchCustomerRequestState.merchCustomerRequestsFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerchCustomerRequestsFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MerchCustomerRequestHeaderModel>? headers)
        getMerchCustomerRequestHeadersState,
    required TResult Function() merchCustomerRequestsFailedState,
  }) {
    return merchCustomerRequestsFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MerchCustomerRequestHeaderModel>? headers)?
        getMerchCustomerRequestHeadersState,
    TResult? Function()? merchCustomerRequestsFailedState,
  }) {
    return merchCustomerRequestsFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MerchCustomerRequestHeaderModel>? headers)?
        getMerchCustomerRequestHeadersState,
    TResult Function()? merchCustomerRequestsFailedState,
    required TResult orElse(),
  }) {
    if (merchCustomerRequestsFailedState != null) {
      return merchCustomerRequestsFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchCustomerRequestHeadersState value)
        getMerchCustomerRequestHeadersState,
    required TResult Function(MerchCustomerRequestsFailedState value)
        merchCustomerRequestsFailedState,
  }) {
    return merchCustomerRequestsFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchCustomerRequestHeadersState value)?
        getMerchCustomerRequestHeadersState,
    TResult? Function(MerchCustomerRequestsFailedState value)?
        merchCustomerRequestsFailedState,
  }) {
    return merchCustomerRequestsFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchCustomerRequestHeadersState value)?
        getMerchCustomerRequestHeadersState,
    TResult Function(MerchCustomerRequestsFailedState value)?
        merchCustomerRequestsFailedState,
    required TResult orElse(),
  }) {
    if (merchCustomerRequestsFailedState != null) {
      return merchCustomerRequestsFailedState(this);
    }
    return orElse();
  }
}

abstract class MerchCustomerRequestsFailedState
    implements MerchCustomerRequestState {
  const factory MerchCustomerRequestsFailedState() =
      _$MerchCustomerRequestsFailedStateImpl;
}
