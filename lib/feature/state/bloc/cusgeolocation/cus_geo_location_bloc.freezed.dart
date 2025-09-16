// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cus_geo_location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CusGeoLocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CusGeoLocInModel cusGeoLocInModel)
        getCusGeoLocationEvent,
    required TResult Function() clearCusgeoLocationEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CusGeoLocInModel cusGeoLocInModel)?
        getCusGeoLocationEvent,
    TResult? Function()? clearCusgeoLocationEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CusGeoLocInModel cusGeoLocInModel)? getCusGeoLocationEvent,
    TResult Function()? clearCusgeoLocationEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusGeoLocationEvent value)
        getCusGeoLocationEvent,
    required TResult Function(ClearCusgeoLocationEvent value)
        clearCusgeoLocationEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusGeoLocationEvent value)? getCusGeoLocationEvent,
    TResult? Function(ClearCusgeoLocationEvent value)? clearCusgeoLocationEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusGeoLocationEvent value)? getCusGeoLocationEvent,
    TResult Function(ClearCusgeoLocationEvent value)? clearCusgeoLocationEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusGeoLocationEventCopyWith<$Res> {
  factory $CusGeoLocationEventCopyWith(
          CusGeoLocationEvent value, $Res Function(CusGeoLocationEvent) then) =
      _$CusGeoLocationEventCopyWithImpl<$Res, CusGeoLocationEvent>;
}

/// @nodoc
class _$CusGeoLocationEventCopyWithImpl<$Res, $Val extends CusGeoLocationEvent>
    implements $CusGeoLocationEventCopyWith<$Res> {
  _$CusGeoLocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CusGeoLocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetCusGeoLocationEventImplCopyWith<$Res> {
  factory _$$GetCusGeoLocationEventImplCopyWith(
          _$GetCusGeoLocationEventImpl value,
          $Res Function(_$GetCusGeoLocationEventImpl) then) =
      __$$GetCusGeoLocationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CusGeoLocInModel cusGeoLocInModel});
}

/// @nodoc
class __$$GetCusGeoLocationEventImplCopyWithImpl<$Res>
    extends _$CusGeoLocationEventCopyWithImpl<$Res,
        _$GetCusGeoLocationEventImpl>
    implements _$$GetCusGeoLocationEventImplCopyWith<$Res> {
  __$$GetCusGeoLocationEventImplCopyWithImpl(
      _$GetCusGeoLocationEventImpl _value,
      $Res Function(_$GetCusGeoLocationEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CusGeoLocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cusGeoLocInModel = null,
  }) {
    return _then(_$GetCusGeoLocationEventImpl(
      cusGeoLocInModel: null == cusGeoLocInModel
          ? _value.cusGeoLocInModel
          : cusGeoLocInModel // ignore: cast_nullable_to_non_nullable
              as CusGeoLocInModel,
    ));
  }
}

/// @nodoc

class _$GetCusGeoLocationEventImpl implements GetCusGeoLocationEvent {
  const _$GetCusGeoLocationEventImpl({required this.cusGeoLocInModel});

  @override
  final CusGeoLocInModel cusGeoLocInModel;

  @override
  String toString() {
    return 'CusGeoLocationEvent.getCusGeoLocationEvent(cusGeoLocInModel: $cusGeoLocInModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCusGeoLocationEventImpl &&
            (identical(other.cusGeoLocInModel, cusGeoLocInModel) ||
                other.cusGeoLocInModel == cusGeoLocInModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cusGeoLocInModel);

  /// Create a copy of CusGeoLocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCusGeoLocationEventImplCopyWith<_$GetCusGeoLocationEventImpl>
      get copyWith => __$$GetCusGeoLocationEventImplCopyWithImpl<
          _$GetCusGeoLocationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CusGeoLocInModel cusGeoLocInModel)
        getCusGeoLocationEvent,
    required TResult Function() clearCusgeoLocationEvent,
  }) {
    return getCusGeoLocationEvent(cusGeoLocInModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CusGeoLocInModel cusGeoLocInModel)?
        getCusGeoLocationEvent,
    TResult? Function()? clearCusgeoLocationEvent,
  }) {
    return getCusGeoLocationEvent?.call(cusGeoLocInModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CusGeoLocInModel cusGeoLocInModel)? getCusGeoLocationEvent,
    TResult Function()? clearCusgeoLocationEvent,
    required TResult orElse(),
  }) {
    if (getCusGeoLocationEvent != null) {
      return getCusGeoLocationEvent(cusGeoLocInModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusGeoLocationEvent value)
        getCusGeoLocationEvent,
    required TResult Function(ClearCusgeoLocationEvent value)
        clearCusgeoLocationEvent,
  }) {
    return getCusGeoLocationEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusGeoLocationEvent value)? getCusGeoLocationEvent,
    TResult? Function(ClearCusgeoLocationEvent value)? clearCusgeoLocationEvent,
  }) {
    return getCusGeoLocationEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusGeoLocationEvent value)? getCusGeoLocationEvent,
    TResult Function(ClearCusgeoLocationEvent value)? clearCusgeoLocationEvent,
    required TResult orElse(),
  }) {
    if (getCusGeoLocationEvent != null) {
      return getCusGeoLocationEvent(this);
    }
    return orElse();
  }
}

abstract class GetCusGeoLocationEvent implements CusGeoLocationEvent {
  const factory GetCusGeoLocationEvent(
          {required final CusGeoLocInModel cusGeoLocInModel}) =
      _$GetCusGeoLocationEventImpl;

  CusGeoLocInModel get cusGeoLocInModel;

  /// Create a copy of CusGeoLocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCusGeoLocationEventImplCopyWith<_$GetCusGeoLocationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCusgeoLocationEventImplCopyWith<$Res> {
  factory _$$ClearCusgeoLocationEventImplCopyWith(
          _$ClearCusgeoLocationEventImpl value,
          $Res Function(_$ClearCusgeoLocationEventImpl) then) =
      __$$ClearCusgeoLocationEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCusgeoLocationEventImplCopyWithImpl<$Res>
    extends _$CusGeoLocationEventCopyWithImpl<$Res,
        _$ClearCusgeoLocationEventImpl>
    implements _$$ClearCusgeoLocationEventImplCopyWith<$Res> {
  __$$ClearCusgeoLocationEventImplCopyWithImpl(
      _$ClearCusgeoLocationEventImpl _value,
      $Res Function(_$ClearCusgeoLocationEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CusGeoLocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearCusgeoLocationEventImpl implements ClearCusgeoLocationEvent {
  const _$ClearCusgeoLocationEventImpl();

  @override
  String toString() {
    return 'CusGeoLocationEvent.clearCusgeoLocationEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearCusgeoLocationEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CusGeoLocInModel cusGeoLocInModel)
        getCusGeoLocationEvent,
    required TResult Function() clearCusgeoLocationEvent,
  }) {
    return clearCusgeoLocationEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CusGeoLocInModel cusGeoLocInModel)?
        getCusGeoLocationEvent,
    TResult? Function()? clearCusgeoLocationEvent,
  }) {
    return clearCusgeoLocationEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CusGeoLocInModel cusGeoLocInModel)? getCusGeoLocationEvent,
    TResult Function()? clearCusgeoLocationEvent,
    required TResult orElse(),
  }) {
    if (clearCusgeoLocationEvent != null) {
      return clearCusgeoLocationEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusGeoLocationEvent value)
        getCusGeoLocationEvent,
    required TResult Function(ClearCusgeoLocationEvent value)
        clearCusgeoLocationEvent,
  }) {
    return clearCusgeoLocationEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusGeoLocationEvent value)? getCusGeoLocationEvent,
    TResult? Function(ClearCusgeoLocationEvent value)? clearCusgeoLocationEvent,
  }) {
    return clearCusgeoLocationEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusGeoLocationEvent value)? getCusGeoLocationEvent,
    TResult Function(ClearCusgeoLocationEvent value)? clearCusgeoLocationEvent,
    required TResult orElse(),
  }) {
    if (clearCusgeoLocationEvent != null) {
      return clearCusgeoLocationEvent(this);
    }
    return orElse();
  }
}

abstract class ClearCusgeoLocationEvent implements CusGeoLocationEvent {
  const factory ClearCusgeoLocationEvent() = _$ClearCusgeoLocationEventImpl;
}

/// @nodoc
mixin _$CusGeoLocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusGeoLocationModel>? geolocations)
        getCusGeoLocationState,
    required TResult Function() getgeolocationFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusGeoLocationModel>? geolocations)?
        getCusGeoLocationState,
    TResult? Function()? getgeolocationFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusGeoLocationModel>? geolocations)?
        getCusGeoLocationState,
    TResult Function()? getgeolocationFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getCusGeoLocationState value)
        getCusGeoLocationState,
    required TResult Function(GetgeolocationFailedState value)
        getgeolocationFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getCusGeoLocationState value)? getCusGeoLocationState,
    TResult? Function(GetgeolocationFailedState value)?
        getgeolocationFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getCusGeoLocationState value)? getCusGeoLocationState,
    TResult Function(GetgeolocationFailedState value)?
        getgeolocationFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusGeoLocationStateCopyWith<$Res> {
  factory $CusGeoLocationStateCopyWith(
          CusGeoLocationState value, $Res Function(CusGeoLocationState) then) =
      _$CusGeoLocationStateCopyWithImpl<$Res, CusGeoLocationState>;
}

/// @nodoc
class _$CusGeoLocationStateCopyWithImpl<$Res, $Val extends CusGeoLocationState>
    implements $CusGeoLocationStateCopyWith<$Res> {
  _$CusGeoLocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CusGeoLocationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$getCusGeoLocationStateImplCopyWith<$Res> {
  factory _$$getCusGeoLocationStateImplCopyWith(
          _$getCusGeoLocationStateImpl value,
          $Res Function(_$getCusGeoLocationStateImpl) then) =
      __$$getCusGeoLocationStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CusGeoLocationModel>? geolocations});
}

/// @nodoc
class __$$getCusGeoLocationStateImplCopyWithImpl<$Res>
    extends _$CusGeoLocationStateCopyWithImpl<$Res,
        _$getCusGeoLocationStateImpl>
    implements _$$getCusGeoLocationStateImplCopyWith<$Res> {
  __$$getCusGeoLocationStateImplCopyWithImpl(
      _$getCusGeoLocationStateImpl _value,
      $Res Function(_$getCusGeoLocationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CusGeoLocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geolocations = freezed,
  }) {
    return _then(_$getCusGeoLocationStateImpl(
      geolocations: freezed == geolocations
          ? _value._geolocations
          : geolocations // ignore: cast_nullable_to_non_nullable
              as List<CusGeoLocationModel>?,
    ));
  }
}

/// @nodoc

class _$getCusGeoLocationStateImpl implements getCusGeoLocationState {
  const _$getCusGeoLocationStateImpl(
      {required final List<CusGeoLocationModel>? geolocations})
      : _geolocations = geolocations;

  final List<CusGeoLocationModel>? _geolocations;
  @override
  List<CusGeoLocationModel>? get geolocations {
    final value = _geolocations;
    if (value == null) return null;
    if (_geolocations is EqualUnmodifiableListView) return _geolocations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CusGeoLocationState.getCusGeoLocationState(geolocations: $geolocations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getCusGeoLocationStateImpl &&
            const DeepCollectionEquality()
                .equals(other._geolocations, _geolocations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_geolocations));

  /// Create a copy of CusGeoLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$getCusGeoLocationStateImplCopyWith<_$getCusGeoLocationStateImpl>
      get copyWith => __$$getCusGeoLocationStateImplCopyWithImpl<
          _$getCusGeoLocationStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusGeoLocationModel>? geolocations)
        getCusGeoLocationState,
    required TResult Function() getgeolocationFailedState,
  }) {
    return getCusGeoLocationState(geolocations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusGeoLocationModel>? geolocations)?
        getCusGeoLocationState,
    TResult? Function()? getgeolocationFailedState,
  }) {
    return getCusGeoLocationState?.call(geolocations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusGeoLocationModel>? geolocations)?
        getCusGeoLocationState,
    TResult Function()? getgeolocationFailedState,
    required TResult orElse(),
  }) {
    if (getCusGeoLocationState != null) {
      return getCusGeoLocationState(geolocations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getCusGeoLocationState value)
        getCusGeoLocationState,
    required TResult Function(GetgeolocationFailedState value)
        getgeolocationFailedState,
  }) {
    return getCusGeoLocationState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getCusGeoLocationState value)? getCusGeoLocationState,
    TResult? Function(GetgeolocationFailedState value)?
        getgeolocationFailedState,
  }) {
    return getCusGeoLocationState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getCusGeoLocationState value)? getCusGeoLocationState,
    TResult Function(GetgeolocationFailedState value)?
        getgeolocationFailedState,
    required TResult orElse(),
  }) {
    if (getCusGeoLocationState != null) {
      return getCusGeoLocationState(this);
    }
    return orElse();
  }
}

abstract class getCusGeoLocationState implements CusGeoLocationState {
  const factory getCusGeoLocationState(
          {required final List<CusGeoLocationModel>? geolocations}) =
      _$getCusGeoLocationStateImpl;

  List<CusGeoLocationModel>? get geolocations;

  /// Create a copy of CusGeoLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$getCusGeoLocationStateImplCopyWith<_$getCusGeoLocationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetgeolocationFailedStateImplCopyWith<$Res> {
  factory _$$GetgeolocationFailedStateImplCopyWith(
          _$GetgeolocationFailedStateImpl value,
          $Res Function(_$GetgeolocationFailedStateImpl) then) =
      __$$GetgeolocationFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetgeolocationFailedStateImplCopyWithImpl<$Res>
    extends _$CusGeoLocationStateCopyWithImpl<$Res,
        _$GetgeolocationFailedStateImpl>
    implements _$$GetgeolocationFailedStateImplCopyWith<$Res> {
  __$$GetgeolocationFailedStateImplCopyWithImpl(
      _$GetgeolocationFailedStateImpl _value,
      $Res Function(_$GetgeolocationFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CusGeoLocationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetgeolocationFailedStateImpl implements GetgeolocationFailedState {
  const _$GetgeolocationFailedStateImpl();

  @override
  String toString() {
    return 'CusGeoLocationState.getgeolocationFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetgeolocationFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusGeoLocationModel>? geolocations)
        getCusGeoLocationState,
    required TResult Function() getgeolocationFailedState,
  }) {
    return getgeolocationFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusGeoLocationModel>? geolocations)?
        getCusGeoLocationState,
    TResult? Function()? getgeolocationFailedState,
  }) {
    return getgeolocationFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusGeoLocationModel>? geolocations)?
        getCusGeoLocationState,
    TResult Function()? getgeolocationFailedState,
    required TResult orElse(),
  }) {
    if (getgeolocationFailedState != null) {
      return getgeolocationFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getCusGeoLocationState value)
        getCusGeoLocationState,
    required TResult Function(GetgeolocationFailedState value)
        getgeolocationFailedState,
  }) {
    return getgeolocationFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getCusGeoLocationState value)? getCusGeoLocationState,
    TResult? Function(GetgeolocationFailedState value)?
        getgeolocationFailedState,
  }) {
    return getgeolocationFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getCusGeoLocationState value)? getCusGeoLocationState,
    TResult Function(GetgeolocationFailedState value)?
        getgeolocationFailedState,
    required TResult orElse(),
  }) {
    if (getgeolocationFailedState != null) {
      return getgeolocationFailedState(this);
    }
    return orElse();
  }
}

abstract class GetgeolocationFailedState implements CusGeoLocationState {
  const factory GetgeolocationFailedState() = _$GetgeolocationFailedStateImpl;
}
