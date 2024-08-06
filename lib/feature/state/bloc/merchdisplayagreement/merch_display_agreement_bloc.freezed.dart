// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merch_display_agreement_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MerchDisplayAgreementEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fromDate, String toDate, String status, String searchQuery)
        getMerchDisplayAgreementEvent,
    required TResult Function() clearMerchDisplayAgreementData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchDisplayAgreementEvent,
    TResult? Function()? clearMerchDisplayAgreementData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchDisplayAgreementEvent,
    TResult Function()? clearMerchDisplayAgreementData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchDisplayAgreementEvent value)
        getMerchDisplayAgreementEvent,
    required TResult Function(ClearMerchDisplayAgreementData value)
        clearMerchDisplayAgreementData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchDisplayAgreementEvent value)?
        getMerchDisplayAgreementEvent,
    TResult? Function(ClearMerchDisplayAgreementData value)?
        clearMerchDisplayAgreementData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchDisplayAgreementEvent value)?
        getMerchDisplayAgreementEvent,
    TResult Function(ClearMerchDisplayAgreementData value)?
        clearMerchDisplayAgreementData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchDisplayAgreementEventCopyWith<$Res> {
  factory $MerchDisplayAgreementEventCopyWith(MerchDisplayAgreementEvent value,
          $Res Function(MerchDisplayAgreementEvent) then) =
      _$MerchDisplayAgreementEventCopyWithImpl<$Res,
          MerchDisplayAgreementEvent>;
}

/// @nodoc
class _$MerchDisplayAgreementEventCopyWithImpl<$Res,
        $Val extends MerchDisplayAgreementEvent>
    implements $MerchDisplayAgreementEventCopyWith<$Res> {
  _$MerchDisplayAgreementEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetMerchDisplayAgreementEventImplCopyWith<$Res> {
  factory _$$GetMerchDisplayAgreementEventImplCopyWith(
          _$GetMerchDisplayAgreementEventImpl value,
          $Res Function(_$GetMerchDisplayAgreementEventImpl) then) =
      __$$GetMerchDisplayAgreementEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String fromDate, String toDate, String status, String searchQuery});
}

/// @nodoc
class __$$GetMerchDisplayAgreementEventImplCopyWithImpl<$Res>
    extends _$MerchDisplayAgreementEventCopyWithImpl<$Res,
        _$GetMerchDisplayAgreementEventImpl>
    implements _$$GetMerchDisplayAgreementEventImplCopyWith<$Res> {
  __$$GetMerchDisplayAgreementEventImplCopyWithImpl(
      _$GetMerchDisplayAgreementEventImpl _value,
      $Res Function(_$GetMerchDisplayAgreementEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
    Object? toDate = null,
    Object? status = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetMerchDisplayAgreementEventImpl(
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

class _$GetMerchDisplayAgreementEventImpl
    implements GetMerchDisplayAgreementEvent {
  const _$GetMerchDisplayAgreementEventImpl(
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
    return 'MerchDisplayAgreementEvent.getMerchDisplayAgreementEvent(fromDate: $fromDate, toDate: $toDate, status: $status, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMerchDisplayAgreementEventImpl &&
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
  _$$GetMerchDisplayAgreementEventImplCopyWith<
          _$GetMerchDisplayAgreementEventImpl>
      get copyWith => __$$GetMerchDisplayAgreementEventImplCopyWithImpl<
          _$GetMerchDisplayAgreementEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fromDate, String toDate, String status, String searchQuery)
        getMerchDisplayAgreementEvent,
    required TResult Function() clearMerchDisplayAgreementData,
  }) {
    return getMerchDisplayAgreementEvent(fromDate, toDate, status, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchDisplayAgreementEvent,
    TResult? Function()? clearMerchDisplayAgreementData,
  }) {
    return getMerchDisplayAgreementEvent?.call(
        fromDate, toDate, status, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchDisplayAgreementEvent,
    TResult Function()? clearMerchDisplayAgreementData,
    required TResult orElse(),
  }) {
    if (getMerchDisplayAgreementEvent != null) {
      return getMerchDisplayAgreementEvent(
          fromDate, toDate, status, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchDisplayAgreementEvent value)
        getMerchDisplayAgreementEvent,
    required TResult Function(ClearMerchDisplayAgreementData value)
        clearMerchDisplayAgreementData,
  }) {
    return getMerchDisplayAgreementEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchDisplayAgreementEvent value)?
        getMerchDisplayAgreementEvent,
    TResult? Function(ClearMerchDisplayAgreementData value)?
        clearMerchDisplayAgreementData,
  }) {
    return getMerchDisplayAgreementEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchDisplayAgreementEvent value)?
        getMerchDisplayAgreementEvent,
    TResult Function(ClearMerchDisplayAgreementData value)?
        clearMerchDisplayAgreementData,
    required TResult orElse(),
  }) {
    if (getMerchDisplayAgreementEvent != null) {
      return getMerchDisplayAgreementEvent(this);
    }
    return orElse();
  }
}

abstract class GetMerchDisplayAgreementEvent
    implements MerchDisplayAgreementEvent {
  const factory GetMerchDisplayAgreementEvent(
      {required final String fromDate,
      required final String toDate,
      required final String status,
      required final String searchQuery}) = _$GetMerchDisplayAgreementEventImpl;

  String get fromDate;
  String get toDate;
  String get status;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetMerchDisplayAgreementEventImplCopyWith<
          _$GetMerchDisplayAgreementEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearMerchDisplayAgreementDataImplCopyWith<$Res> {
  factory _$$ClearMerchDisplayAgreementDataImplCopyWith(
          _$ClearMerchDisplayAgreementDataImpl value,
          $Res Function(_$ClearMerchDisplayAgreementDataImpl) then) =
      __$$ClearMerchDisplayAgreementDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearMerchDisplayAgreementDataImplCopyWithImpl<$Res>
    extends _$MerchDisplayAgreementEventCopyWithImpl<$Res,
        _$ClearMerchDisplayAgreementDataImpl>
    implements _$$ClearMerchDisplayAgreementDataImplCopyWith<$Res> {
  __$$ClearMerchDisplayAgreementDataImplCopyWithImpl(
      _$ClearMerchDisplayAgreementDataImpl _value,
      $Res Function(_$ClearMerchDisplayAgreementDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearMerchDisplayAgreementDataImpl
    implements ClearMerchDisplayAgreementData {
  const _$ClearMerchDisplayAgreementDataImpl();

  @override
  String toString() {
    return 'MerchDisplayAgreementEvent.clearMerchDisplayAgreementData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearMerchDisplayAgreementDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fromDate, String toDate, String status, String searchQuery)
        getMerchDisplayAgreementEvent,
    required TResult Function() clearMerchDisplayAgreementData,
  }) {
    return clearMerchDisplayAgreementData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchDisplayAgreementEvent,
    TResult? Function()? clearMerchDisplayAgreementData,
  }) {
    return clearMerchDisplayAgreementData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchDisplayAgreementEvent,
    TResult Function()? clearMerchDisplayAgreementData,
    required TResult orElse(),
  }) {
    if (clearMerchDisplayAgreementData != null) {
      return clearMerchDisplayAgreementData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchDisplayAgreementEvent value)
        getMerchDisplayAgreementEvent,
    required TResult Function(ClearMerchDisplayAgreementData value)
        clearMerchDisplayAgreementData,
  }) {
    return clearMerchDisplayAgreementData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchDisplayAgreementEvent value)?
        getMerchDisplayAgreementEvent,
    TResult? Function(ClearMerchDisplayAgreementData value)?
        clearMerchDisplayAgreementData,
  }) {
    return clearMerchDisplayAgreementData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchDisplayAgreementEvent value)?
        getMerchDisplayAgreementEvent,
    TResult Function(ClearMerchDisplayAgreementData value)?
        clearMerchDisplayAgreementData,
    required TResult orElse(),
  }) {
    if (clearMerchDisplayAgreementData != null) {
      return clearMerchDisplayAgreementData(this);
    }
    return orElse();
  }
}

abstract class ClearMerchDisplayAgreementData
    implements MerchDisplayAgreementEvent {
  const factory ClearMerchDisplayAgreementData() =
      _$ClearMerchDisplayAgreementDataImpl;
}

/// @nodoc
mixin _$MerchDisplayAgreementState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<MerchandisingDisplayAgreementMdel>? agreementData)
        getMerchDisplayAgreementDataState,
    required TResult Function() getMerchDisplayAgreementDataFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MerchandisingDisplayAgreementMdel>? agreementData)?
        getMerchDisplayAgreementDataState,
    TResult? Function()? getMerchDisplayAgreementDataFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MerchandisingDisplayAgreementMdel>? agreementData)?
        getMerchDisplayAgreementDataState,
    TResult Function()? getMerchDisplayAgreementDataFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchDisplayAgreementDataState value)
        getMerchDisplayAgreementDataState,
    required TResult Function(GetMerchDisplayAgreementDataFailed value)
        getMerchDisplayAgreementDataFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchDisplayAgreementDataState value)?
        getMerchDisplayAgreementDataState,
    TResult? Function(GetMerchDisplayAgreementDataFailed value)?
        getMerchDisplayAgreementDataFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchDisplayAgreementDataState value)?
        getMerchDisplayAgreementDataState,
    TResult Function(GetMerchDisplayAgreementDataFailed value)?
        getMerchDisplayAgreementDataFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchDisplayAgreementStateCopyWith<$Res> {
  factory $MerchDisplayAgreementStateCopyWith(MerchDisplayAgreementState value,
          $Res Function(MerchDisplayAgreementState) then) =
      _$MerchDisplayAgreementStateCopyWithImpl<$Res,
          MerchDisplayAgreementState>;
}

/// @nodoc
class _$MerchDisplayAgreementStateCopyWithImpl<$Res,
        $Val extends MerchDisplayAgreementState>
    implements $MerchDisplayAgreementStateCopyWith<$Res> {
  _$MerchDisplayAgreementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetMerchDisplayAgreementDataStateImplCopyWith<$Res> {
  factory _$$GetMerchDisplayAgreementDataStateImplCopyWith(
          _$GetMerchDisplayAgreementDataStateImpl value,
          $Res Function(_$GetMerchDisplayAgreementDataStateImpl) then) =
      __$$GetMerchDisplayAgreementDataStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MerchandisingDisplayAgreementMdel>? agreementData});
}

/// @nodoc
class __$$GetMerchDisplayAgreementDataStateImplCopyWithImpl<$Res>
    extends _$MerchDisplayAgreementStateCopyWithImpl<$Res,
        _$GetMerchDisplayAgreementDataStateImpl>
    implements _$$GetMerchDisplayAgreementDataStateImplCopyWith<$Res> {
  __$$GetMerchDisplayAgreementDataStateImplCopyWithImpl(
      _$GetMerchDisplayAgreementDataStateImpl _value,
      $Res Function(_$GetMerchDisplayAgreementDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agreementData = freezed,
  }) {
    return _then(_$GetMerchDisplayAgreementDataStateImpl(
      agreementData: freezed == agreementData
          ? _value._agreementData
          : agreementData // ignore: cast_nullable_to_non_nullable
              as List<MerchandisingDisplayAgreementMdel>?,
    ));
  }
}

/// @nodoc

class _$GetMerchDisplayAgreementDataStateImpl
    implements GetMerchDisplayAgreementDataState {
  const _$GetMerchDisplayAgreementDataStateImpl(
      {required final List<MerchandisingDisplayAgreementMdel>? agreementData})
      : _agreementData = agreementData;

  final List<MerchandisingDisplayAgreementMdel>? _agreementData;
  @override
  List<MerchandisingDisplayAgreementMdel>? get agreementData {
    final value = _agreementData;
    if (value == null) return null;
    if (_agreementData is EqualUnmodifiableListView) return _agreementData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MerchDisplayAgreementState.getMerchDisplayAgreementDataState(agreementData: $agreementData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMerchDisplayAgreementDataStateImpl &&
            const DeepCollectionEquality()
                .equals(other._agreementData, _agreementData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_agreementData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMerchDisplayAgreementDataStateImplCopyWith<
          _$GetMerchDisplayAgreementDataStateImpl>
      get copyWith => __$$GetMerchDisplayAgreementDataStateImplCopyWithImpl<
          _$GetMerchDisplayAgreementDataStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<MerchandisingDisplayAgreementMdel>? agreementData)
        getMerchDisplayAgreementDataState,
    required TResult Function() getMerchDisplayAgreementDataFailed,
  }) {
    return getMerchDisplayAgreementDataState(agreementData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MerchandisingDisplayAgreementMdel>? agreementData)?
        getMerchDisplayAgreementDataState,
    TResult? Function()? getMerchDisplayAgreementDataFailed,
  }) {
    return getMerchDisplayAgreementDataState?.call(agreementData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MerchandisingDisplayAgreementMdel>? agreementData)?
        getMerchDisplayAgreementDataState,
    TResult Function()? getMerchDisplayAgreementDataFailed,
    required TResult orElse(),
  }) {
    if (getMerchDisplayAgreementDataState != null) {
      return getMerchDisplayAgreementDataState(agreementData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchDisplayAgreementDataState value)
        getMerchDisplayAgreementDataState,
    required TResult Function(GetMerchDisplayAgreementDataFailed value)
        getMerchDisplayAgreementDataFailed,
  }) {
    return getMerchDisplayAgreementDataState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchDisplayAgreementDataState value)?
        getMerchDisplayAgreementDataState,
    TResult? Function(GetMerchDisplayAgreementDataFailed value)?
        getMerchDisplayAgreementDataFailed,
  }) {
    return getMerchDisplayAgreementDataState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchDisplayAgreementDataState value)?
        getMerchDisplayAgreementDataState,
    TResult Function(GetMerchDisplayAgreementDataFailed value)?
        getMerchDisplayAgreementDataFailed,
    required TResult orElse(),
  }) {
    if (getMerchDisplayAgreementDataState != null) {
      return getMerchDisplayAgreementDataState(this);
    }
    return orElse();
  }
}

abstract class GetMerchDisplayAgreementDataState
    implements MerchDisplayAgreementState {
  const factory GetMerchDisplayAgreementDataState(
      {required final List<MerchandisingDisplayAgreementMdel>?
          agreementData}) = _$GetMerchDisplayAgreementDataStateImpl;

  List<MerchandisingDisplayAgreementMdel>? get agreementData;
  @JsonKey(ignore: true)
  _$$GetMerchDisplayAgreementDataStateImplCopyWith<
          _$GetMerchDisplayAgreementDataStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMerchDisplayAgreementDataFailedImplCopyWith<$Res> {
  factory _$$GetMerchDisplayAgreementDataFailedImplCopyWith(
          _$GetMerchDisplayAgreementDataFailedImpl value,
          $Res Function(_$GetMerchDisplayAgreementDataFailedImpl) then) =
      __$$GetMerchDisplayAgreementDataFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMerchDisplayAgreementDataFailedImplCopyWithImpl<$Res>
    extends _$MerchDisplayAgreementStateCopyWithImpl<$Res,
        _$GetMerchDisplayAgreementDataFailedImpl>
    implements _$$GetMerchDisplayAgreementDataFailedImplCopyWith<$Res> {
  __$$GetMerchDisplayAgreementDataFailedImplCopyWithImpl(
      _$GetMerchDisplayAgreementDataFailedImpl _value,
      $Res Function(_$GetMerchDisplayAgreementDataFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetMerchDisplayAgreementDataFailedImpl
    implements GetMerchDisplayAgreementDataFailed {
  const _$GetMerchDisplayAgreementDataFailedImpl();

  @override
  String toString() {
    return 'MerchDisplayAgreementState.getMerchDisplayAgreementDataFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMerchDisplayAgreementDataFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<MerchandisingDisplayAgreementMdel>? agreementData)
        getMerchDisplayAgreementDataState,
    required TResult Function() getMerchDisplayAgreementDataFailed,
  }) {
    return getMerchDisplayAgreementDataFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MerchandisingDisplayAgreementMdel>? agreementData)?
        getMerchDisplayAgreementDataState,
    TResult? Function()? getMerchDisplayAgreementDataFailed,
  }) {
    return getMerchDisplayAgreementDataFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MerchandisingDisplayAgreementMdel>? agreementData)?
        getMerchDisplayAgreementDataState,
    TResult Function()? getMerchDisplayAgreementDataFailed,
    required TResult orElse(),
  }) {
    if (getMerchDisplayAgreementDataFailed != null) {
      return getMerchDisplayAgreementDataFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchDisplayAgreementDataState value)
        getMerchDisplayAgreementDataState,
    required TResult Function(GetMerchDisplayAgreementDataFailed value)
        getMerchDisplayAgreementDataFailed,
  }) {
    return getMerchDisplayAgreementDataFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchDisplayAgreementDataState value)?
        getMerchDisplayAgreementDataState,
    TResult? Function(GetMerchDisplayAgreementDataFailed value)?
        getMerchDisplayAgreementDataFailed,
  }) {
    return getMerchDisplayAgreementDataFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchDisplayAgreementDataState value)?
        getMerchDisplayAgreementDataState,
    TResult Function(GetMerchDisplayAgreementDataFailed value)?
        getMerchDisplayAgreementDataFailed,
    required TResult orElse(),
  }) {
    if (getMerchDisplayAgreementDataFailed != null) {
      return getMerchDisplayAgreementDataFailed(this);
    }
    return orElse();
  }
}

abstract class GetMerchDisplayAgreementDataFailed
    implements MerchDisplayAgreementState {
  const factory GetMerchDisplayAgreementDataFailed() =
      _$GetMerchDisplayAgreementDataFailedImpl;
}
