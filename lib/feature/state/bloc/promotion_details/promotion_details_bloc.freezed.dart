// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PromotionDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) promotionDetailsEvent,
    required TResult Function() clearPromotionDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? promotionDetailsEvent,
    TResult? Function()? clearPromotionDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? promotionDetailsEvent,
    TResult Function()? clearPromotionDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPromotionDetailsEvent value)
        promotionDetailsEvent,
    required TResult Function(ClearPromotionDetails value)
        clearPromotionDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPromotionDetailsEvent value)? promotionDetailsEvent,
    TResult? Function(ClearPromotionDetails value)? clearPromotionDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPromotionDetailsEvent value)? promotionDetailsEvent,
    TResult Function(ClearPromotionDetails value)? clearPromotionDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionDetailsEventCopyWith<$Res> {
  factory $PromotionDetailsEventCopyWith(PromotionDetailsEvent value,
          $Res Function(PromotionDetailsEvent) then) =
      _$PromotionDetailsEventCopyWithImpl<$Res, PromotionDetailsEvent>;
}

/// @nodoc
class _$PromotionDetailsEventCopyWithImpl<$Res,
        $Val extends PromotionDetailsEvent>
    implements $PromotionDetailsEventCopyWith<$Res> {
  _$PromotionDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPromotionDetailsEventImplCopyWith<$Res> {
  factory _$$GetPromotionDetailsEventImplCopyWith(
          _$GetPromotionDetailsEventImpl value,
          $Res Function(_$GetPromotionDetailsEventImpl) then) =
      __$$GetPromotionDetailsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetPromotionDetailsEventImplCopyWithImpl<$Res>
    extends _$PromotionDetailsEventCopyWithImpl<$Res,
        _$GetPromotionDetailsEventImpl>
    implements _$$GetPromotionDetailsEventImplCopyWith<$Res> {
  __$$GetPromotionDetailsEventImplCopyWithImpl(
      _$GetPromotionDetailsEventImpl _value,
      $Res Function(_$GetPromotionDetailsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetPromotionDetailsEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPromotionDetailsEventImpl implements GetPromotionDetailsEvent {
  const _$GetPromotionDetailsEventImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'PromotionDetailsEvent.promotionDetailsEvent(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPromotionDetailsEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPromotionDetailsEventImplCopyWith<_$GetPromotionDetailsEventImpl>
      get copyWith => __$$GetPromotionDetailsEventImplCopyWithImpl<
          _$GetPromotionDetailsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) promotionDetailsEvent,
    required TResult Function() clearPromotionDetails,
  }) {
    return promotionDetailsEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? promotionDetailsEvent,
    TResult? Function()? clearPromotionDetails,
  }) {
    return promotionDetailsEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? promotionDetailsEvent,
    TResult Function()? clearPromotionDetails,
    required TResult orElse(),
  }) {
    if (promotionDetailsEvent != null) {
      return promotionDetailsEvent(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPromotionDetailsEvent value)
        promotionDetailsEvent,
    required TResult Function(ClearPromotionDetails value)
        clearPromotionDetails,
  }) {
    return promotionDetailsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPromotionDetailsEvent value)? promotionDetailsEvent,
    TResult? Function(ClearPromotionDetails value)? clearPromotionDetails,
  }) {
    return promotionDetailsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPromotionDetailsEvent value)? promotionDetailsEvent,
    TResult Function(ClearPromotionDetails value)? clearPromotionDetails,
    required TResult orElse(),
  }) {
    if (promotionDetailsEvent != null) {
      return promotionDetailsEvent(this);
    }
    return orElse();
  }
}

abstract class GetPromotionDetailsEvent implements PromotionDetailsEvent {
  const factory GetPromotionDetailsEvent({required final String id}) =
      _$GetPromotionDetailsEventImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$GetPromotionDetailsEventImplCopyWith<_$GetPromotionDetailsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearPromotionDetailsImplCopyWith<$Res> {
  factory _$$ClearPromotionDetailsImplCopyWith(
          _$ClearPromotionDetailsImpl value,
          $Res Function(_$ClearPromotionDetailsImpl) then) =
      __$$ClearPromotionDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPromotionDetailsImplCopyWithImpl<$Res>
    extends _$PromotionDetailsEventCopyWithImpl<$Res,
        _$ClearPromotionDetailsImpl>
    implements _$$ClearPromotionDetailsImplCopyWith<$Res> {
  __$$ClearPromotionDetailsImplCopyWithImpl(_$ClearPromotionDetailsImpl _value,
      $Res Function(_$ClearPromotionDetailsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearPromotionDetailsImpl implements ClearPromotionDetails {
  const _$ClearPromotionDetailsImpl();

  @override
  String toString() {
    return 'PromotionDetailsEvent.clearPromotionDetails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearPromotionDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) promotionDetailsEvent,
    required TResult Function() clearPromotionDetails,
  }) {
    return clearPromotionDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? promotionDetailsEvent,
    TResult? Function()? clearPromotionDetails,
  }) {
    return clearPromotionDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? promotionDetailsEvent,
    TResult Function()? clearPromotionDetails,
    required TResult orElse(),
  }) {
    if (clearPromotionDetails != null) {
      return clearPromotionDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPromotionDetailsEvent value)
        promotionDetailsEvent,
    required TResult Function(ClearPromotionDetails value)
        clearPromotionDetails,
  }) {
    return clearPromotionDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPromotionDetailsEvent value)? promotionDetailsEvent,
    TResult? Function(ClearPromotionDetails value)? clearPromotionDetails,
  }) {
    return clearPromotionDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPromotionDetailsEvent value)? promotionDetailsEvent,
    TResult Function(ClearPromotionDetails value)? clearPromotionDetails,
    required TResult orElse(),
  }) {
    if (clearPromotionDetails != null) {
      return clearPromotionDetails(this);
    }
    return orElse();
  }
}

abstract class ClearPromotionDetails implements PromotionDetailsEvent {
  const factory ClearPromotionDetails() = _$ClearPromotionDetailsImpl;
}

/// @nodoc
mixin _$PromotionDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PromotionDetailsModel>? promodetails)
        getPromotionDetailsState,
    required TResult Function() promotionDetailsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PromotionDetailsModel>? promodetails)?
        getPromotionDetailsState,
    TResult? Function()? promotionDetailsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PromotionDetailsModel>? promodetails)?
        getPromotionDetailsState,
    TResult Function()? promotionDetailsFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPromotionDetailsState value)
        getPromotionDetailsState,
    required TResult Function(PromotionDetailsFailed value)
        promotionDetailsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPromotionDetailsState value)? getPromotionDetailsState,
    TResult? Function(PromotionDetailsFailed value)? promotionDetailsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPromotionDetailsState value)? getPromotionDetailsState,
    TResult Function(PromotionDetailsFailed value)? promotionDetailsFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionDetailsStateCopyWith<$Res> {
  factory $PromotionDetailsStateCopyWith(PromotionDetailsState value,
          $Res Function(PromotionDetailsState) then) =
      _$PromotionDetailsStateCopyWithImpl<$Res, PromotionDetailsState>;
}

/// @nodoc
class _$PromotionDetailsStateCopyWithImpl<$Res,
        $Val extends PromotionDetailsState>
    implements $PromotionDetailsStateCopyWith<$Res> {
  _$PromotionDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPromotionDetailsStateImplCopyWith<$Res> {
  factory _$$GetPromotionDetailsStateImplCopyWith(
          _$GetPromotionDetailsStateImpl value,
          $Res Function(_$GetPromotionDetailsStateImpl) then) =
      __$$GetPromotionDetailsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PromotionDetailsModel>? promodetails});
}

/// @nodoc
class __$$GetPromotionDetailsStateImplCopyWithImpl<$Res>
    extends _$PromotionDetailsStateCopyWithImpl<$Res,
        _$GetPromotionDetailsStateImpl>
    implements _$$GetPromotionDetailsStateImplCopyWith<$Res> {
  __$$GetPromotionDetailsStateImplCopyWithImpl(
      _$GetPromotionDetailsStateImpl _value,
      $Res Function(_$GetPromotionDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promodetails = freezed,
  }) {
    return _then(_$GetPromotionDetailsStateImpl(
      promodetails: freezed == promodetails
          ? _value._promodetails
          : promodetails // ignore: cast_nullable_to_non_nullable
              as List<PromotionDetailsModel>?,
    ));
  }
}

/// @nodoc

class _$GetPromotionDetailsStateImpl implements GetPromotionDetailsState {
  const _$GetPromotionDetailsStateImpl(
      {required final List<PromotionDetailsModel>? promodetails})
      : _promodetails = promodetails;

  final List<PromotionDetailsModel>? _promodetails;
  @override
  List<PromotionDetailsModel>? get promodetails {
    final value = _promodetails;
    if (value == null) return null;
    if (_promodetails is EqualUnmodifiableListView) return _promodetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PromotionDetailsState.getPromotionDetailsState(promodetails: $promodetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPromotionDetailsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._promodetails, _promodetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_promodetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPromotionDetailsStateImplCopyWith<_$GetPromotionDetailsStateImpl>
      get copyWith => __$$GetPromotionDetailsStateImplCopyWithImpl<
          _$GetPromotionDetailsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PromotionDetailsModel>? promodetails)
        getPromotionDetailsState,
    required TResult Function() promotionDetailsFailed,
  }) {
    return getPromotionDetailsState(promodetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PromotionDetailsModel>? promodetails)?
        getPromotionDetailsState,
    TResult? Function()? promotionDetailsFailed,
  }) {
    return getPromotionDetailsState?.call(promodetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PromotionDetailsModel>? promodetails)?
        getPromotionDetailsState,
    TResult Function()? promotionDetailsFailed,
    required TResult orElse(),
  }) {
    if (getPromotionDetailsState != null) {
      return getPromotionDetailsState(promodetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPromotionDetailsState value)
        getPromotionDetailsState,
    required TResult Function(PromotionDetailsFailed value)
        promotionDetailsFailed,
  }) {
    return getPromotionDetailsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPromotionDetailsState value)? getPromotionDetailsState,
    TResult? Function(PromotionDetailsFailed value)? promotionDetailsFailed,
  }) {
    return getPromotionDetailsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPromotionDetailsState value)? getPromotionDetailsState,
    TResult Function(PromotionDetailsFailed value)? promotionDetailsFailed,
    required TResult orElse(),
  }) {
    if (getPromotionDetailsState != null) {
      return getPromotionDetailsState(this);
    }
    return orElse();
  }
}

abstract class GetPromotionDetailsState implements PromotionDetailsState {
  const factory GetPromotionDetailsState(
          {required final List<PromotionDetailsModel>? promodetails}) =
      _$GetPromotionDetailsStateImpl;

  List<PromotionDetailsModel>? get promodetails;
  @JsonKey(ignore: true)
  _$$GetPromotionDetailsStateImplCopyWith<_$GetPromotionDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PromotionDetailsFailedImplCopyWith<$Res> {
  factory _$$PromotionDetailsFailedImplCopyWith(
          _$PromotionDetailsFailedImpl value,
          $Res Function(_$PromotionDetailsFailedImpl) then) =
      __$$PromotionDetailsFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PromotionDetailsFailedImplCopyWithImpl<$Res>
    extends _$PromotionDetailsStateCopyWithImpl<$Res,
        _$PromotionDetailsFailedImpl>
    implements _$$PromotionDetailsFailedImplCopyWith<$Res> {
  __$$PromotionDetailsFailedImplCopyWithImpl(
      _$PromotionDetailsFailedImpl _value,
      $Res Function(_$PromotionDetailsFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PromotionDetailsFailedImpl implements PromotionDetailsFailed {
  const _$PromotionDetailsFailedImpl();

  @override
  String toString() {
    return 'PromotionDetailsState.promotionDetailsFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionDetailsFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PromotionDetailsModel>? promodetails)
        getPromotionDetailsState,
    required TResult Function() promotionDetailsFailed,
  }) {
    return promotionDetailsFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PromotionDetailsModel>? promodetails)?
        getPromotionDetailsState,
    TResult? Function()? promotionDetailsFailed,
  }) {
    return promotionDetailsFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PromotionDetailsModel>? promodetails)?
        getPromotionDetailsState,
    TResult Function()? promotionDetailsFailed,
    required TResult orElse(),
  }) {
    if (promotionDetailsFailed != null) {
      return promotionDetailsFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPromotionDetailsState value)
        getPromotionDetailsState,
    required TResult Function(PromotionDetailsFailed value)
        promotionDetailsFailed,
  }) {
    return promotionDetailsFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPromotionDetailsState value)? getPromotionDetailsState,
    TResult? Function(PromotionDetailsFailed value)? promotionDetailsFailed,
  }) {
    return promotionDetailsFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPromotionDetailsState value)? getPromotionDetailsState,
    TResult Function(PromotionDetailsFailed value)? promotionDetailsFailed,
    required TResult orElse(),
  }) {
    if (promotionDetailsFailed != null) {
      return promotionDetailsFailed(this);
    }
    return orElse();
  }
}

abstract class PromotionDetailsFailed implements PromotionDetailsState {
  const factory PromotionDetailsFailed() = _$PromotionDetailsFailedImpl;
}
