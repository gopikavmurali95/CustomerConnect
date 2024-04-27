// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_change_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PriceChangeDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pchID) getPriceChangeDetailsEvent,
    required TResult Function() clearPriceChangeDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pchID)? getPriceChangeDetailsEvent,
    TResult? Function()? clearPriceChangeDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pchID)? getPriceChangeDetailsEvent,
    TResult Function()? clearPriceChangeDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPriceChangeDetailsEvent value)
        getPriceChangeDetailsEvent,
    required TResult Function(ClearPriceChangeDetails value)
        clearPriceChangeDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPriceChangeDetailsEvent value)?
        getPriceChangeDetailsEvent,
    TResult? Function(ClearPriceChangeDetails value)? clearPriceChangeDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPriceChangeDetailsEvent value)?
        getPriceChangeDetailsEvent,
    TResult Function(ClearPriceChangeDetails value)? clearPriceChangeDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceChangeDetailsEventCopyWith<$Res> {
  factory $PriceChangeDetailsEventCopyWith(PriceChangeDetailsEvent value,
          $Res Function(PriceChangeDetailsEvent) then) =
      _$PriceChangeDetailsEventCopyWithImpl<$Res, PriceChangeDetailsEvent>;
}

/// @nodoc
class _$PriceChangeDetailsEventCopyWithImpl<$Res,
        $Val extends PriceChangeDetailsEvent>
    implements $PriceChangeDetailsEventCopyWith<$Res> {
  _$PriceChangeDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPriceChangeDetailsEventImplCopyWith<$Res> {
  factory _$$GetPriceChangeDetailsEventImplCopyWith(
          _$GetPriceChangeDetailsEventImpl value,
          $Res Function(_$GetPriceChangeDetailsEventImpl) then) =
      __$$GetPriceChangeDetailsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pchID});
}

/// @nodoc
class __$$GetPriceChangeDetailsEventImplCopyWithImpl<$Res>
    extends _$PriceChangeDetailsEventCopyWithImpl<$Res,
        _$GetPriceChangeDetailsEventImpl>
    implements _$$GetPriceChangeDetailsEventImplCopyWith<$Res> {
  __$$GetPriceChangeDetailsEventImplCopyWithImpl(
      _$GetPriceChangeDetailsEventImpl _value,
      $Res Function(_$GetPriceChangeDetailsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pchID = null,
  }) {
    return _then(_$GetPriceChangeDetailsEventImpl(
      pchID: null == pchID
          ? _value.pchID
          : pchID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPriceChangeDetailsEventImpl implements GetPriceChangeDetailsEvent {
  const _$GetPriceChangeDetailsEventImpl({required this.pchID});

  @override
  final String pchID;

  @override
  String toString() {
    return 'PriceChangeDetailsEvent.getPriceChangeDetailsEvent(pchID: $pchID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPriceChangeDetailsEventImpl &&
            (identical(other.pchID, pchID) || other.pchID == pchID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pchID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPriceChangeDetailsEventImplCopyWith<_$GetPriceChangeDetailsEventImpl>
      get copyWith => __$$GetPriceChangeDetailsEventImplCopyWithImpl<
          _$GetPriceChangeDetailsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pchID) getPriceChangeDetailsEvent,
    required TResult Function() clearPriceChangeDetails,
  }) {
    return getPriceChangeDetailsEvent(pchID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pchID)? getPriceChangeDetailsEvent,
    TResult? Function()? clearPriceChangeDetails,
  }) {
    return getPriceChangeDetailsEvent?.call(pchID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pchID)? getPriceChangeDetailsEvent,
    TResult Function()? clearPriceChangeDetails,
    required TResult orElse(),
  }) {
    if (getPriceChangeDetailsEvent != null) {
      return getPriceChangeDetailsEvent(pchID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPriceChangeDetailsEvent value)
        getPriceChangeDetailsEvent,
    required TResult Function(ClearPriceChangeDetails value)
        clearPriceChangeDetails,
  }) {
    return getPriceChangeDetailsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPriceChangeDetailsEvent value)?
        getPriceChangeDetailsEvent,
    TResult? Function(ClearPriceChangeDetails value)? clearPriceChangeDetails,
  }) {
    return getPriceChangeDetailsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPriceChangeDetailsEvent value)?
        getPriceChangeDetailsEvent,
    TResult Function(ClearPriceChangeDetails value)? clearPriceChangeDetails,
    required TResult orElse(),
  }) {
    if (getPriceChangeDetailsEvent != null) {
      return getPriceChangeDetailsEvent(this);
    }
    return orElse();
  }
}

abstract class GetPriceChangeDetailsEvent implements PriceChangeDetailsEvent {
  const factory GetPriceChangeDetailsEvent({required final String pchID}) =
      _$GetPriceChangeDetailsEventImpl;

  String get pchID;
  @JsonKey(ignore: true)
  _$$GetPriceChangeDetailsEventImplCopyWith<_$GetPriceChangeDetailsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearPriceChangeDetailsImplCopyWith<$Res> {
  factory _$$ClearPriceChangeDetailsImplCopyWith(
          _$ClearPriceChangeDetailsImpl value,
          $Res Function(_$ClearPriceChangeDetailsImpl) then) =
      __$$ClearPriceChangeDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPriceChangeDetailsImplCopyWithImpl<$Res>
    extends _$PriceChangeDetailsEventCopyWithImpl<$Res,
        _$ClearPriceChangeDetailsImpl>
    implements _$$ClearPriceChangeDetailsImplCopyWith<$Res> {
  __$$ClearPriceChangeDetailsImplCopyWithImpl(
      _$ClearPriceChangeDetailsImpl _value,
      $Res Function(_$ClearPriceChangeDetailsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearPriceChangeDetailsImpl implements ClearPriceChangeDetails {
  const _$ClearPriceChangeDetailsImpl();

  @override
  String toString() {
    return 'PriceChangeDetailsEvent.clearPriceChangeDetails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearPriceChangeDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pchID) getPriceChangeDetailsEvent,
    required TResult Function() clearPriceChangeDetails,
  }) {
    return clearPriceChangeDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pchID)? getPriceChangeDetailsEvent,
    TResult? Function()? clearPriceChangeDetails,
  }) {
    return clearPriceChangeDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pchID)? getPriceChangeDetailsEvent,
    TResult Function()? clearPriceChangeDetails,
    required TResult orElse(),
  }) {
    if (clearPriceChangeDetails != null) {
      return clearPriceChangeDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPriceChangeDetailsEvent value)
        getPriceChangeDetailsEvent,
    required TResult Function(ClearPriceChangeDetails value)
        clearPriceChangeDetails,
  }) {
    return clearPriceChangeDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPriceChangeDetailsEvent value)?
        getPriceChangeDetailsEvent,
    TResult? Function(ClearPriceChangeDetails value)? clearPriceChangeDetails,
  }) {
    return clearPriceChangeDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPriceChangeDetailsEvent value)?
        getPriceChangeDetailsEvent,
    TResult Function(ClearPriceChangeDetails value)? clearPriceChangeDetails,
    required TResult orElse(),
  }) {
    if (clearPriceChangeDetails != null) {
      return clearPriceChangeDetails(this);
    }
    return orElse();
  }
}

abstract class ClearPriceChangeDetails implements PriceChangeDetailsEvent {
  const factory ClearPriceChangeDetails() = _$ClearPriceChangeDetailsImpl;
}

/// @nodoc
mixin _$PriceChangeDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PriceChangeDetailsModel>? pcDetails)
        getPRiceChangeDetails,
    required TResult Function() priceChangedetailsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PriceChangeDetailsModel>? pcDetails)?
        getPRiceChangeDetails,
    TResult? Function()? priceChangedetailsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PriceChangeDetailsModel>? pcDetails)?
        getPRiceChangeDetails,
    TResult Function()? priceChangedetailsFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPRiceChangeDetailsState value)
        getPRiceChangeDetails,
    required TResult Function(PriceChangedetailsFailed value)
        priceChangedetailsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPRiceChangeDetailsState value)? getPRiceChangeDetails,
    TResult? Function(PriceChangedetailsFailed value)? priceChangedetailsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPRiceChangeDetailsState value)? getPRiceChangeDetails,
    TResult Function(PriceChangedetailsFailed value)? priceChangedetailsFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceChangeDetailsStateCopyWith<$Res> {
  factory $PriceChangeDetailsStateCopyWith(PriceChangeDetailsState value,
          $Res Function(PriceChangeDetailsState) then) =
      _$PriceChangeDetailsStateCopyWithImpl<$Res, PriceChangeDetailsState>;
}

/// @nodoc
class _$PriceChangeDetailsStateCopyWithImpl<$Res,
        $Val extends PriceChangeDetailsState>
    implements $PriceChangeDetailsStateCopyWith<$Res> {
  _$PriceChangeDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPRiceChangeDetailsStateImplCopyWith<$Res> {
  factory _$$GetPRiceChangeDetailsStateImplCopyWith(
          _$GetPRiceChangeDetailsStateImpl value,
          $Res Function(_$GetPRiceChangeDetailsStateImpl) then) =
      __$$GetPRiceChangeDetailsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PriceChangeDetailsModel>? pcDetails});
}

/// @nodoc
class __$$GetPRiceChangeDetailsStateImplCopyWithImpl<$Res>
    extends _$PriceChangeDetailsStateCopyWithImpl<$Res,
        _$GetPRiceChangeDetailsStateImpl>
    implements _$$GetPRiceChangeDetailsStateImplCopyWith<$Res> {
  __$$GetPRiceChangeDetailsStateImplCopyWithImpl(
      _$GetPRiceChangeDetailsStateImpl _value,
      $Res Function(_$GetPRiceChangeDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pcDetails = freezed,
  }) {
    return _then(_$GetPRiceChangeDetailsStateImpl(
      pcDetails: freezed == pcDetails
          ? _value._pcDetails
          : pcDetails // ignore: cast_nullable_to_non_nullable
              as List<PriceChangeDetailsModel>?,
    ));
  }
}

/// @nodoc

class _$GetPRiceChangeDetailsStateImpl implements GetPRiceChangeDetailsState {
  const _$GetPRiceChangeDetailsStateImpl(
      {required final List<PriceChangeDetailsModel>? pcDetails})
      : _pcDetails = pcDetails;

  final List<PriceChangeDetailsModel>? _pcDetails;
  @override
  List<PriceChangeDetailsModel>? get pcDetails {
    final value = _pcDetails;
    if (value == null) return null;
    if (_pcDetails is EqualUnmodifiableListView) return _pcDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PriceChangeDetailsState.getPRiceChangeDetails(pcDetails: $pcDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPRiceChangeDetailsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._pcDetails, _pcDetails));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pcDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPRiceChangeDetailsStateImplCopyWith<_$GetPRiceChangeDetailsStateImpl>
      get copyWith => __$$GetPRiceChangeDetailsStateImplCopyWithImpl<
          _$GetPRiceChangeDetailsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PriceChangeDetailsModel>? pcDetails)
        getPRiceChangeDetails,
    required TResult Function() priceChangedetailsFailed,
  }) {
    return getPRiceChangeDetails(pcDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PriceChangeDetailsModel>? pcDetails)?
        getPRiceChangeDetails,
    TResult? Function()? priceChangedetailsFailed,
  }) {
    return getPRiceChangeDetails?.call(pcDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PriceChangeDetailsModel>? pcDetails)?
        getPRiceChangeDetails,
    TResult Function()? priceChangedetailsFailed,
    required TResult orElse(),
  }) {
    if (getPRiceChangeDetails != null) {
      return getPRiceChangeDetails(pcDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPRiceChangeDetailsState value)
        getPRiceChangeDetails,
    required TResult Function(PriceChangedetailsFailed value)
        priceChangedetailsFailed,
  }) {
    return getPRiceChangeDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPRiceChangeDetailsState value)? getPRiceChangeDetails,
    TResult? Function(PriceChangedetailsFailed value)? priceChangedetailsFailed,
  }) {
    return getPRiceChangeDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPRiceChangeDetailsState value)? getPRiceChangeDetails,
    TResult Function(PriceChangedetailsFailed value)? priceChangedetailsFailed,
    required TResult orElse(),
  }) {
    if (getPRiceChangeDetails != null) {
      return getPRiceChangeDetails(this);
    }
    return orElse();
  }
}

abstract class GetPRiceChangeDetailsState implements PriceChangeDetailsState {
  const factory GetPRiceChangeDetailsState(
          {required final List<PriceChangeDetailsModel>? pcDetails}) =
      _$GetPRiceChangeDetailsStateImpl;

  List<PriceChangeDetailsModel>? get pcDetails;
  @JsonKey(ignore: true)
  _$$GetPRiceChangeDetailsStateImplCopyWith<_$GetPRiceChangeDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PriceChangedetailsFailedImplCopyWith<$Res> {
  factory _$$PriceChangedetailsFailedImplCopyWith(
          _$PriceChangedetailsFailedImpl value,
          $Res Function(_$PriceChangedetailsFailedImpl) then) =
      __$$PriceChangedetailsFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PriceChangedetailsFailedImplCopyWithImpl<$Res>
    extends _$PriceChangeDetailsStateCopyWithImpl<$Res,
        _$PriceChangedetailsFailedImpl>
    implements _$$PriceChangedetailsFailedImplCopyWith<$Res> {
  __$$PriceChangedetailsFailedImplCopyWithImpl(
      _$PriceChangedetailsFailedImpl _value,
      $Res Function(_$PriceChangedetailsFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PriceChangedetailsFailedImpl implements PriceChangedetailsFailed {
  const _$PriceChangedetailsFailedImpl();

  @override
  String toString() {
    return 'PriceChangeDetailsState.priceChangedetailsFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceChangedetailsFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PriceChangeDetailsModel>? pcDetails)
        getPRiceChangeDetails,
    required TResult Function() priceChangedetailsFailed,
  }) {
    return priceChangedetailsFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PriceChangeDetailsModel>? pcDetails)?
        getPRiceChangeDetails,
    TResult? Function()? priceChangedetailsFailed,
  }) {
    return priceChangedetailsFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PriceChangeDetailsModel>? pcDetails)?
        getPRiceChangeDetails,
    TResult Function()? priceChangedetailsFailed,
    required TResult orElse(),
  }) {
    if (priceChangedetailsFailed != null) {
      return priceChangedetailsFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPRiceChangeDetailsState value)
        getPRiceChangeDetails,
    required TResult Function(PriceChangedetailsFailed value)
        priceChangedetailsFailed,
  }) {
    return priceChangedetailsFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPRiceChangeDetailsState value)? getPRiceChangeDetails,
    TResult? Function(PriceChangedetailsFailed value)? priceChangedetailsFailed,
  }) {
    return priceChangedetailsFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPRiceChangeDetailsState value)? getPRiceChangeDetails,
    TResult Function(PriceChangedetailsFailed value)? priceChangedetailsFailed,
    required TResult orElse(),
  }) {
    if (priceChangedetailsFailed != null) {
      return priceChangedetailsFailed(this);
    }
    return orElse();
  }
}

abstract class PriceChangedetailsFailed implements PriceChangeDetailsState {
  const factory PriceChangedetailsFailed() = _$PriceChangedetailsFailedImpl;
}
