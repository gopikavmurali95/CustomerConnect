// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'special_price_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SpecialPriceDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String prhID) getSpecialPriceDetailsEvent,
    required TResult Function() clearSpecialriceDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String prhID)? getSpecialPriceDetailsEvent,
    TResult? Function()? clearSpecialriceDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String prhID)? getSpecialPriceDetailsEvent,
    TResult Function()? clearSpecialriceDetailsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSpecialPriceDetailsEvent value)
        getSpecialPriceDetailsEvent,
    required TResult Function(ClearSpecialriceDetailsEvent value)
        clearSpecialriceDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSpecialPriceDetailsEvent value)?
        getSpecialPriceDetailsEvent,
    TResult? Function(ClearSpecialriceDetailsEvent value)?
        clearSpecialriceDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSpecialPriceDetailsEvent value)?
        getSpecialPriceDetailsEvent,
    TResult Function(ClearSpecialriceDetailsEvent value)?
        clearSpecialriceDetailsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialPriceDetailsEventCopyWith<$Res> {
  factory $SpecialPriceDetailsEventCopyWith(SpecialPriceDetailsEvent value,
          $Res Function(SpecialPriceDetailsEvent) then) =
      _$SpecialPriceDetailsEventCopyWithImpl<$Res, SpecialPriceDetailsEvent>;
}

/// @nodoc
class _$SpecialPriceDetailsEventCopyWithImpl<$Res,
        $Val extends SpecialPriceDetailsEvent>
    implements $SpecialPriceDetailsEventCopyWith<$Res> {
  _$SpecialPriceDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetSpecialPriceDetailsEventImplCopyWith<$Res> {
  factory _$$GetSpecialPriceDetailsEventImplCopyWith(
          _$GetSpecialPriceDetailsEventImpl value,
          $Res Function(_$GetSpecialPriceDetailsEventImpl) then) =
      __$$GetSpecialPriceDetailsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String prhID});
}

/// @nodoc
class __$$GetSpecialPriceDetailsEventImplCopyWithImpl<$Res>
    extends _$SpecialPriceDetailsEventCopyWithImpl<$Res,
        _$GetSpecialPriceDetailsEventImpl>
    implements _$$GetSpecialPriceDetailsEventImplCopyWith<$Res> {
  __$$GetSpecialPriceDetailsEventImplCopyWithImpl(
      _$GetSpecialPriceDetailsEventImpl _value,
      $Res Function(_$GetSpecialPriceDetailsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prhID = null,
  }) {
    return _then(_$GetSpecialPriceDetailsEventImpl(
      prhID: null == prhID
          ? _value.prhID
          : prhID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSpecialPriceDetailsEventImpl implements GetSpecialPriceDetailsEvent {
  const _$GetSpecialPriceDetailsEventImpl({required this.prhID});

  @override
  final String prhID;

  @override
  String toString() {
    return 'SpecialPriceDetailsEvent.getSpecialPriceDetailsEvent(prhID: $prhID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSpecialPriceDetailsEventImpl &&
            (identical(other.prhID, prhID) || other.prhID == prhID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prhID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSpecialPriceDetailsEventImplCopyWith<_$GetSpecialPriceDetailsEventImpl>
      get copyWith => __$$GetSpecialPriceDetailsEventImplCopyWithImpl<
          _$GetSpecialPriceDetailsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String prhID) getSpecialPriceDetailsEvent,
    required TResult Function() clearSpecialriceDetailsEvent,
  }) {
    return getSpecialPriceDetailsEvent(prhID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String prhID)? getSpecialPriceDetailsEvent,
    TResult? Function()? clearSpecialriceDetailsEvent,
  }) {
    return getSpecialPriceDetailsEvent?.call(prhID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String prhID)? getSpecialPriceDetailsEvent,
    TResult Function()? clearSpecialriceDetailsEvent,
    required TResult orElse(),
  }) {
    if (getSpecialPriceDetailsEvent != null) {
      return getSpecialPriceDetailsEvent(prhID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSpecialPriceDetailsEvent value)
        getSpecialPriceDetailsEvent,
    required TResult Function(ClearSpecialriceDetailsEvent value)
        clearSpecialriceDetailsEvent,
  }) {
    return getSpecialPriceDetailsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSpecialPriceDetailsEvent value)?
        getSpecialPriceDetailsEvent,
    TResult? Function(ClearSpecialriceDetailsEvent value)?
        clearSpecialriceDetailsEvent,
  }) {
    return getSpecialPriceDetailsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSpecialPriceDetailsEvent value)?
        getSpecialPriceDetailsEvent,
    TResult Function(ClearSpecialriceDetailsEvent value)?
        clearSpecialriceDetailsEvent,
    required TResult orElse(),
  }) {
    if (getSpecialPriceDetailsEvent != null) {
      return getSpecialPriceDetailsEvent(this);
    }
    return orElse();
  }
}

abstract class GetSpecialPriceDetailsEvent implements SpecialPriceDetailsEvent {
  const factory GetSpecialPriceDetailsEvent({required final String prhID}) =
      _$GetSpecialPriceDetailsEventImpl;

  String get prhID;
  @JsonKey(ignore: true)
  _$$GetSpecialPriceDetailsEventImplCopyWith<_$GetSpecialPriceDetailsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearSpecialriceDetailsEventImplCopyWith<$Res> {
  factory _$$ClearSpecialriceDetailsEventImplCopyWith(
          _$ClearSpecialriceDetailsEventImpl value,
          $Res Function(_$ClearSpecialriceDetailsEventImpl) then) =
      __$$ClearSpecialriceDetailsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearSpecialriceDetailsEventImplCopyWithImpl<$Res>
    extends _$SpecialPriceDetailsEventCopyWithImpl<$Res,
        _$ClearSpecialriceDetailsEventImpl>
    implements _$$ClearSpecialriceDetailsEventImplCopyWith<$Res> {
  __$$ClearSpecialriceDetailsEventImplCopyWithImpl(
      _$ClearSpecialriceDetailsEventImpl _value,
      $Res Function(_$ClearSpecialriceDetailsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearSpecialriceDetailsEventImpl
    implements ClearSpecialriceDetailsEvent {
  const _$ClearSpecialriceDetailsEventImpl();

  @override
  String toString() {
    return 'SpecialPriceDetailsEvent.clearSpecialriceDetailsEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearSpecialriceDetailsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String prhID) getSpecialPriceDetailsEvent,
    required TResult Function() clearSpecialriceDetailsEvent,
  }) {
    return clearSpecialriceDetailsEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String prhID)? getSpecialPriceDetailsEvent,
    TResult? Function()? clearSpecialriceDetailsEvent,
  }) {
    return clearSpecialriceDetailsEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String prhID)? getSpecialPriceDetailsEvent,
    TResult Function()? clearSpecialriceDetailsEvent,
    required TResult orElse(),
  }) {
    if (clearSpecialriceDetailsEvent != null) {
      return clearSpecialriceDetailsEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSpecialPriceDetailsEvent value)
        getSpecialPriceDetailsEvent,
    required TResult Function(ClearSpecialriceDetailsEvent value)
        clearSpecialriceDetailsEvent,
  }) {
    return clearSpecialriceDetailsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSpecialPriceDetailsEvent value)?
        getSpecialPriceDetailsEvent,
    TResult? Function(ClearSpecialriceDetailsEvent value)?
        clearSpecialriceDetailsEvent,
  }) {
    return clearSpecialriceDetailsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSpecialPriceDetailsEvent value)?
        getSpecialPriceDetailsEvent,
    TResult Function(ClearSpecialriceDetailsEvent value)?
        clearSpecialriceDetailsEvent,
    required TResult orElse(),
  }) {
    if (clearSpecialriceDetailsEvent != null) {
      return clearSpecialriceDetailsEvent(this);
    }
    return orElse();
  }
}

abstract class ClearSpecialriceDetailsEvent
    implements SpecialPriceDetailsEvent {
  const factory ClearSpecialriceDetailsEvent() =
      _$ClearSpecialriceDetailsEventImpl;
}

/// @nodoc
mixin _$SpecialPriceDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SpecialPriceDetailsModel>? spdetails)
        getSpecialPriceDetailsState,
    required TResult Function() specialPriceDetailsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SpecialPriceDetailsModel>? spdetails)?
        getSpecialPriceDetailsState,
    TResult? Function()? specialPriceDetailsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SpecialPriceDetailsModel>? spdetails)?
        getSpecialPriceDetailsState,
    TResult Function()? specialPriceDetailsFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSpecialPriceDetailsState value)
        getSpecialPriceDetailsState,
    required TResult Function(specialPriceDetailsFailedState value)
        specialPriceDetailsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSpecialPriceDetailsState value)?
        getSpecialPriceDetailsState,
    TResult? Function(specialPriceDetailsFailedState value)?
        specialPriceDetailsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSpecialPriceDetailsState value)?
        getSpecialPriceDetailsState,
    TResult Function(specialPriceDetailsFailedState value)?
        specialPriceDetailsFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialPriceDetailsStateCopyWith<$Res> {
  factory $SpecialPriceDetailsStateCopyWith(SpecialPriceDetailsState value,
          $Res Function(SpecialPriceDetailsState) then) =
      _$SpecialPriceDetailsStateCopyWithImpl<$Res, SpecialPriceDetailsState>;
}

/// @nodoc
class _$SpecialPriceDetailsStateCopyWithImpl<$Res,
        $Val extends SpecialPriceDetailsState>
    implements $SpecialPriceDetailsStateCopyWith<$Res> {
  _$SpecialPriceDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetSpecialPriceDetailsStateImplCopyWith<$Res> {
  factory _$$GetSpecialPriceDetailsStateImplCopyWith(
          _$GetSpecialPriceDetailsStateImpl value,
          $Res Function(_$GetSpecialPriceDetailsStateImpl) then) =
      __$$GetSpecialPriceDetailsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SpecialPriceDetailsModel>? spdetails});
}

/// @nodoc
class __$$GetSpecialPriceDetailsStateImplCopyWithImpl<$Res>
    extends _$SpecialPriceDetailsStateCopyWithImpl<$Res,
        _$GetSpecialPriceDetailsStateImpl>
    implements _$$GetSpecialPriceDetailsStateImplCopyWith<$Res> {
  __$$GetSpecialPriceDetailsStateImplCopyWithImpl(
      _$GetSpecialPriceDetailsStateImpl _value,
      $Res Function(_$GetSpecialPriceDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spdetails = freezed,
  }) {
    return _then(_$GetSpecialPriceDetailsStateImpl(
      spdetails: freezed == spdetails
          ? _value._spdetails
          : spdetails // ignore: cast_nullable_to_non_nullable
              as List<SpecialPriceDetailsModel>?,
    ));
  }
}

/// @nodoc

class _$GetSpecialPriceDetailsStateImpl implements GetSpecialPriceDetailsState {
  const _$GetSpecialPriceDetailsStateImpl(
      {required final List<SpecialPriceDetailsModel>? spdetails})
      : _spdetails = spdetails;

  final List<SpecialPriceDetailsModel>? _spdetails;
  @override
  List<SpecialPriceDetailsModel>? get spdetails {
    final value = _spdetails;
    if (value == null) return null;
    if (_spdetails is EqualUnmodifiableListView) return _spdetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SpecialPriceDetailsState.getSpecialPriceDetailsState(spdetails: $spdetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSpecialPriceDetailsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._spdetails, _spdetails));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_spdetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSpecialPriceDetailsStateImplCopyWith<_$GetSpecialPriceDetailsStateImpl>
      get copyWith => __$$GetSpecialPriceDetailsStateImplCopyWithImpl<
          _$GetSpecialPriceDetailsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SpecialPriceDetailsModel>? spdetails)
        getSpecialPriceDetailsState,
    required TResult Function() specialPriceDetailsFailedState,
  }) {
    return getSpecialPriceDetailsState(spdetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SpecialPriceDetailsModel>? spdetails)?
        getSpecialPriceDetailsState,
    TResult? Function()? specialPriceDetailsFailedState,
  }) {
    return getSpecialPriceDetailsState?.call(spdetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SpecialPriceDetailsModel>? spdetails)?
        getSpecialPriceDetailsState,
    TResult Function()? specialPriceDetailsFailedState,
    required TResult orElse(),
  }) {
    if (getSpecialPriceDetailsState != null) {
      return getSpecialPriceDetailsState(spdetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSpecialPriceDetailsState value)
        getSpecialPriceDetailsState,
    required TResult Function(specialPriceDetailsFailedState value)
        specialPriceDetailsFailedState,
  }) {
    return getSpecialPriceDetailsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSpecialPriceDetailsState value)?
        getSpecialPriceDetailsState,
    TResult? Function(specialPriceDetailsFailedState value)?
        specialPriceDetailsFailedState,
  }) {
    return getSpecialPriceDetailsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSpecialPriceDetailsState value)?
        getSpecialPriceDetailsState,
    TResult Function(specialPriceDetailsFailedState value)?
        specialPriceDetailsFailedState,
    required TResult orElse(),
  }) {
    if (getSpecialPriceDetailsState != null) {
      return getSpecialPriceDetailsState(this);
    }
    return orElse();
  }
}

abstract class GetSpecialPriceDetailsState implements SpecialPriceDetailsState {
  const factory GetSpecialPriceDetailsState(
          {required final List<SpecialPriceDetailsModel>? spdetails}) =
      _$GetSpecialPriceDetailsStateImpl;

  List<SpecialPriceDetailsModel>? get spdetails;
  @JsonKey(ignore: true)
  _$$GetSpecialPriceDetailsStateImplCopyWith<_$GetSpecialPriceDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$specialPriceDetailsFailedStateImplCopyWith<$Res> {
  factory _$$specialPriceDetailsFailedStateImplCopyWith(
          _$specialPriceDetailsFailedStateImpl value,
          $Res Function(_$specialPriceDetailsFailedStateImpl) then) =
      __$$specialPriceDetailsFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$specialPriceDetailsFailedStateImplCopyWithImpl<$Res>
    extends _$SpecialPriceDetailsStateCopyWithImpl<$Res,
        _$specialPriceDetailsFailedStateImpl>
    implements _$$specialPriceDetailsFailedStateImplCopyWith<$Res> {
  __$$specialPriceDetailsFailedStateImplCopyWithImpl(
      _$specialPriceDetailsFailedStateImpl _value,
      $Res Function(_$specialPriceDetailsFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$specialPriceDetailsFailedStateImpl
    implements specialPriceDetailsFailedState {
  const _$specialPriceDetailsFailedStateImpl();

  @override
  String toString() {
    return 'SpecialPriceDetailsState.specialPriceDetailsFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$specialPriceDetailsFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SpecialPriceDetailsModel>? spdetails)
        getSpecialPriceDetailsState,
    required TResult Function() specialPriceDetailsFailedState,
  }) {
    return specialPriceDetailsFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SpecialPriceDetailsModel>? spdetails)?
        getSpecialPriceDetailsState,
    TResult? Function()? specialPriceDetailsFailedState,
  }) {
    return specialPriceDetailsFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SpecialPriceDetailsModel>? spdetails)?
        getSpecialPriceDetailsState,
    TResult Function()? specialPriceDetailsFailedState,
    required TResult orElse(),
  }) {
    if (specialPriceDetailsFailedState != null) {
      return specialPriceDetailsFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSpecialPriceDetailsState value)
        getSpecialPriceDetailsState,
    required TResult Function(specialPriceDetailsFailedState value)
        specialPriceDetailsFailedState,
  }) {
    return specialPriceDetailsFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSpecialPriceDetailsState value)?
        getSpecialPriceDetailsState,
    TResult? Function(specialPriceDetailsFailedState value)?
        specialPriceDetailsFailedState,
  }) {
    return specialPriceDetailsFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSpecialPriceDetailsState value)?
        getSpecialPriceDetailsState,
    TResult Function(specialPriceDetailsFailedState value)?
        specialPriceDetailsFailedState,
    required TResult orElse(),
  }) {
    if (specialPriceDetailsFailedState != null) {
      return specialPriceDetailsFailedState(this);
    }
    return orElse();
  }
}

abstract class specialPriceDetailsFailedState
    implements SpecialPriceDetailsState {
  const factory specialPriceDetailsFailedState() =
      _$specialPriceDetailsFailedStateImpl;
}
