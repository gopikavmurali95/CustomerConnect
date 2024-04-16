// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'special_price_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SpecialPriceHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SpecialPriceHeaderModel spPriceInparas, String searchQuery)
        getSpecialPriceHeaderEvent,
    required TResult Function() specialPriceFailedEvent,
    required TResult Function() clearSpecialPriceEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            SpecialPriceHeaderModel spPriceInparas, String searchQuery)?
        getSpecialPriceHeaderEvent,
    TResult? Function()? specialPriceFailedEvent,
    TResult? Function()? clearSpecialPriceEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            SpecialPriceHeaderModel spPriceInparas, String searchQuery)?
        getSpecialPriceHeaderEvent,
    TResult Function()? specialPriceFailedEvent,
    TResult Function()? clearSpecialPriceEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSpecialPriceHeaderEvent value)
        getSpecialPriceHeaderEvent,
    required TResult Function(SpecialPriceFailedEvent value)
        specialPriceFailedEvent,
    required TResult Function(ClearSpecialPriceEvent value)
        clearSpecialPriceEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSpecialPriceHeaderEvent value)?
        getSpecialPriceHeaderEvent,
    TResult? Function(SpecialPriceFailedEvent value)? specialPriceFailedEvent,
    TResult? Function(ClearSpecialPriceEvent value)? clearSpecialPriceEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSpecialPriceHeaderEvent value)?
        getSpecialPriceHeaderEvent,
    TResult Function(SpecialPriceFailedEvent value)? specialPriceFailedEvent,
    TResult Function(ClearSpecialPriceEvent value)? clearSpecialPriceEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialPriceHeaderEventCopyWith<$Res> {
  factory $SpecialPriceHeaderEventCopyWith(SpecialPriceHeaderEvent value,
          $Res Function(SpecialPriceHeaderEvent) then) =
      _$SpecialPriceHeaderEventCopyWithImpl<$Res, SpecialPriceHeaderEvent>;
}

/// @nodoc
class _$SpecialPriceHeaderEventCopyWithImpl<$Res,
        $Val extends SpecialPriceHeaderEvent>
    implements $SpecialPriceHeaderEventCopyWith<$Res> {
  _$SpecialPriceHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetSpecialPriceHeaderEventImplCopyWith<$Res> {
  factory _$$GetSpecialPriceHeaderEventImplCopyWith(
          _$GetSpecialPriceHeaderEventImpl value,
          $Res Function(_$GetSpecialPriceHeaderEventImpl) then) =
      __$$GetSpecialPriceHeaderEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SpecialPriceHeaderModel spPriceInparas, String searchQuery});
}

/// @nodoc
class __$$GetSpecialPriceHeaderEventImplCopyWithImpl<$Res>
    extends _$SpecialPriceHeaderEventCopyWithImpl<$Res,
        _$GetSpecialPriceHeaderEventImpl>
    implements _$$GetSpecialPriceHeaderEventImplCopyWith<$Res> {
  __$$GetSpecialPriceHeaderEventImplCopyWithImpl(
      _$GetSpecialPriceHeaderEventImpl _value,
      $Res Function(_$GetSpecialPriceHeaderEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spPriceInparas = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetSpecialPriceHeaderEventImpl(
      spPriceInparas: null == spPriceInparas
          ? _value.spPriceInparas
          : spPriceInparas // ignore: cast_nullable_to_non_nullable
              as SpecialPriceHeaderModel,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSpecialPriceHeaderEventImpl implements GetSpecialPriceHeaderEvent {
  const _$GetSpecialPriceHeaderEventImpl(
      {required this.spPriceInparas, required this.searchQuery});

  @override
  final SpecialPriceHeaderModel spPriceInparas;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'SpecialPriceHeaderEvent.getSpecialPriceHeaderEvent(spPriceInparas: $spPriceInparas, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSpecialPriceHeaderEventImpl &&
            (identical(other.spPriceInparas, spPriceInparas) ||
                other.spPriceInparas == spPriceInparas) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, spPriceInparas, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSpecialPriceHeaderEventImplCopyWith<_$GetSpecialPriceHeaderEventImpl>
      get copyWith => __$$GetSpecialPriceHeaderEventImplCopyWithImpl<
          _$GetSpecialPriceHeaderEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SpecialPriceHeaderModel spPriceInparas, String searchQuery)
        getSpecialPriceHeaderEvent,
    required TResult Function() specialPriceFailedEvent,
    required TResult Function() clearSpecialPriceEvent,
  }) {
    return getSpecialPriceHeaderEvent(spPriceInparas, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            SpecialPriceHeaderModel spPriceInparas, String searchQuery)?
        getSpecialPriceHeaderEvent,
    TResult? Function()? specialPriceFailedEvent,
    TResult? Function()? clearSpecialPriceEvent,
  }) {
    return getSpecialPriceHeaderEvent?.call(spPriceInparas, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            SpecialPriceHeaderModel spPriceInparas, String searchQuery)?
        getSpecialPriceHeaderEvent,
    TResult Function()? specialPriceFailedEvent,
    TResult Function()? clearSpecialPriceEvent,
    required TResult orElse(),
  }) {
    if (getSpecialPriceHeaderEvent != null) {
      return getSpecialPriceHeaderEvent(spPriceInparas, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSpecialPriceHeaderEvent value)
        getSpecialPriceHeaderEvent,
    required TResult Function(SpecialPriceFailedEvent value)
        specialPriceFailedEvent,
    required TResult Function(ClearSpecialPriceEvent value)
        clearSpecialPriceEvent,
  }) {
    return getSpecialPriceHeaderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSpecialPriceHeaderEvent value)?
        getSpecialPriceHeaderEvent,
    TResult? Function(SpecialPriceFailedEvent value)? specialPriceFailedEvent,
    TResult? Function(ClearSpecialPriceEvent value)? clearSpecialPriceEvent,
  }) {
    return getSpecialPriceHeaderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSpecialPriceHeaderEvent value)?
        getSpecialPriceHeaderEvent,
    TResult Function(SpecialPriceFailedEvent value)? specialPriceFailedEvent,
    TResult Function(ClearSpecialPriceEvent value)? clearSpecialPriceEvent,
    required TResult orElse(),
  }) {
    if (getSpecialPriceHeaderEvent != null) {
      return getSpecialPriceHeaderEvent(this);
    }
    return orElse();
  }
}

abstract class GetSpecialPriceHeaderEvent implements SpecialPriceHeaderEvent {
  const factory GetSpecialPriceHeaderEvent(
      {required final SpecialPriceHeaderModel spPriceInparas,
      required final String searchQuery}) = _$GetSpecialPriceHeaderEventImpl;

  SpecialPriceHeaderModel get spPriceInparas;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetSpecialPriceHeaderEventImplCopyWith<_$GetSpecialPriceHeaderEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpecialPriceFailedEventImplCopyWith<$Res> {
  factory _$$SpecialPriceFailedEventImplCopyWith(
          _$SpecialPriceFailedEventImpl value,
          $Res Function(_$SpecialPriceFailedEventImpl) then) =
      __$$SpecialPriceFailedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SpecialPriceFailedEventImplCopyWithImpl<$Res>
    extends _$SpecialPriceHeaderEventCopyWithImpl<$Res,
        _$SpecialPriceFailedEventImpl>
    implements _$$SpecialPriceFailedEventImplCopyWith<$Res> {
  __$$SpecialPriceFailedEventImplCopyWithImpl(
      _$SpecialPriceFailedEventImpl _value,
      $Res Function(_$SpecialPriceFailedEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SpecialPriceFailedEventImpl implements SpecialPriceFailedEvent {
  const _$SpecialPriceFailedEventImpl();

  @override
  String toString() {
    return 'SpecialPriceHeaderEvent.specialPriceFailedEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialPriceFailedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SpecialPriceHeaderModel spPriceInparas, String searchQuery)
        getSpecialPriceHeaderEvent,
    required TResult Function() specialPriceFailedEvent,
    required TResult Function() clearSpecialPriceEvent,
  }) {
    return specialPriceFailedEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            SpecialPriceHeaderModel spPriceInparas, String searchQuery)?
        getSpecialPriceHeaderEvent,
    TResult? Function()? specialPriceFailedEvent,
    TResult? Function()? clearSpecialPriceEvent,
  }) {
    return specialPriceFailedEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            SpecialPriceHeaderModel spPriceInparas, String searchQuery)?
        getSpecialPriceHeaderEvent,
    TResult Function()? specialPriceFailedEvent,
    TResult Function()? clearSpecialPriceEvent,
    required TResult orElse(),
  }) {
    if (specialPriceFailedEvent != null) {
      return specialPriceFailedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSpecialPriceHeaderEvent value)
        getSpecialPriceHeaderEvent,
    required TResult Function(SpecialPriceFailedEvent value)
        specialPriceFailedEvent,
    required TResult Function(ClearSpecialPriceEvent value)
        clearSpecialPriceEvent,
  }) {
    return specialPriceFailedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSpecialPriceHeaderEvent value)?
        getSpecialPriceHeaderEvent,
    TResult? Function(SpecialPriceFailedEvent value)? specialPriceFailedEvent,
    TResult? Function(ClearSpecialPriceEvent value)? clearSpecialPriceEvent,
  }) {
    return specialPriceFailedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSpecialPriceHeaderEvent value)?
        getSpecialPriceHeaderEvent,
    TResult Function(SpecialPriceFailedEvent value)? specialPriceFailedEvent,
    TResult Function(ClearSpecialPriceEvent value)? clearSpecialPriceEvent,
    required TResult orElse(),
  }) {
    if (specialPriceFailedEvent != null) {
      return specialPriceFailedEvent(this);
    }
    return orElse();
  }
}

abstract class SpecialPriceFailedEvent implements SpecialPriceHeaderEvent {
  const factory SpecialPriceFailedEvent() = _$SpecialPriceFailedEventImpl;
}

/// @nodoc
abstract class _$$ClearSpecialPriceEventImplCopyWith<$Res> {
  factory _$$ClearSpecialPriceEventImplCopyWith(
          _$ClearSpecialPriceEventImpl value,
          $Res Function(_$ClearSpecialPriceEventImpl) then) =
      __$$ClearSpecialPriceEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearSpecialPriceEventImplCopyWithImpl<$Res>
    extends _$SpecialPriceHeaderEventCopyWithImpl<$Res,
        _$ClearSpecialPriceEventImpl>
    implements _$$ClearSpecialPriceEventImplCopyWith<$Res> {
  __$$ClearSpecialPriceEventImplCopyWithImpl(
      _$ClearSpecialPriceEventImpl _value,
      $Res Function(_$ClearSpecialPriceEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearSpecialPriceEventImpl implements ClearSpecialPriceEvent {
  const _$ClearSpecialPriceEventImpl();

  @override
  String toString() {
    return 'SpecialPriceHeaderEvent.clearSpecialPriceEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearSpecialPriceEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SpecialPriceHeaderModel spPriceInparas, String searchQuery)
        getSpecialPriceHeaderEvent,
    required TResult Function() specialPriceFailedEvent,
    required TResult Function() clearSpecialPriceEvent,
  }) {
    return clearSpecialPriceEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            SpecialPriceHeaderModel spPriceInparas, String searchQuery)?
        getSpecialPriceHeaderEvent,
    TResult? Function()? specialPriceFailedEvent,
    TResult? Function()? clearSpecialPriceEvent,
  }) {
    return clearSpecialPriceEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            SpecialPriceHeaderModel spPriceInparas, String searchQuery)?
        getSpecialPriceHeaderEvent,
    TResult Function()? specialPriceFailedEvent,
    TResult Function()? clearSpecialPriceEvent,
    required TResult orElse(),
  }) {
    if (clearSpecialPriceEvent != null) {
      return clearSpecialPriceEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSpecialPriceHeaderEvent value)
        getSpecialPriceHeaderEvent,
    required TResult Function(SpecialPriceFailedEvent value)
        specialPriceFailedEvent,
    required TResult Function(ClearSpecialPriceEvent value)
        clearSpecialPriceEvent,
  }) {
    return clearSpecialPriceEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSpecialPriceHeaderEvent value)?
        getSpecialPriceHeaderEvent,
    TResult? Function(SpecialPriceFailedEvent value)? specialPriceFailedEvent,
    TResult? Function(ClearSpecialPriceEvent value)? clearSpecialPriceEvent,
  }) {
    return clearSpecialPriceEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSpecialPriceHeaderEvent value)?
        getSpecialPriceHeaderEvent,
    TResult Function(SpecialPriceFailedEvent value)? specialPriceFailedEvent,
    TResult Function(ClearSpecialPriceEvent value)? clearSpecialPriceEvent,
    required TResult orElse(),
  }) {
    if (clearSpecialPriceEvent != null) {
      return clearSpecialPriceEvent(this);
    }
    return orElse();
  }
}

abstract class ClearSpecialPriceEvent implements SpecialPriceHeaderEvent {
  const factory ClearSpecialPriceEvent() = _$ClearSpecialPriceEventImpl;
}

/// @nodoc
mixin _$SpecialPriceHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SpecialPriceHeaderOutparas>? spPrice)
        getSpecialPriceHeaderState,
    required TResult Function() speciaPriceHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SpecialPriceHeaderOutparas>? spPrice)?
        getSpecialPriceHeaderState,
    TResult? Function()? speciaPriceHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SpecialPriceHeaderOutparas>? spPrice)?
        getSpecialPriceHeaderState,
    TResult Function()? speciaPriceHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSspecialPriceHeaderState value)
        getSpecialPriceHeaderState,
    required TResult Function(SpeciaPriceHeaderFailedState value)
        speciaPriceHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSspecialPriceHeaderState value)?
        getSpecialPriceHeaderState,
    TResult? Function(SpeciaPriceHeaderFailedState value)?
        speciaPriceHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSspecialPriceHeaderState value)?
        getSpecialPriceHeaderState,
    TResult Function(SpeciaPriceHeaderFailedState value)?
        speciaPriceHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialPriceHeaderStateCopyWith<$Res> {
  factory $SpecialPriceHeaderStateCopyWith(SpecialPriceHeaderState value,
          $Res Function(SpecialPriceHeaderState) then) =
      _$SpecialPriceHeaderStateCopyWithImpl<$Res, SpecialPriceHeaderState>;
}

/// @nodoc
class _$SpecialPriceHeaderStateCopyWithImpl<$Res,
        $Val extends SpecialPriceHeaderState>
    implements $SpecialPriceHeaderStateCopyWith<$Res> {
  _$SpecialPriceHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetSspecialPriceHeaderStateImplCopyWith<$Res> {
  factory _$$GetSspecialPriceHeaderStateImplCopyWith(
          _$GetSspecialPriceHeaderStateImpl value,
          $Res Function(_$GetSspecialPriceHeaderStateImpl) then) =
      __$$GetSspecialPriceHeaderStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SpecialPriceHeaderOutparas>? spPrice});
}

/// @nodoc
class __$$GetSspecialPriceHeaderStateImplCopyWithImpl<$Res>
    extends _$SpecialPriceHeaderStateCopyWithImpl<$Res,
        _$GetSspecialPriceHeaderStateImpl>
    implements _$$GetSspecialPriceHeaderStateImplCopyWith<$Res> {
  __$$GetSspecialPriceHeaderStateImplCopyWithImpl(
      _$GetSspecialPriceHeaderStateImpl _value,
      $Res Function(_$GetSspecialPriceHeaderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spPrice = freezed,
  }) {
    return _then(_$GetSspecialPriceHeaderStateImpl(
      spPrice: freezed == spPrice
          ? _value._spPrice
          : spPrice // ignore: cast_nullable_to_non_nullable
              as List<SpecialPriceHeaderOutparas>?,
    ));
  }
}

/// @nodoc

class _$GetSspecialPriceHeaderStateImpl implements GetSspecialPriceHeaderState {
  const _$GetSspecialPriceHeaderStateImpl(
      {required final List<SpecialPriceHeaderOutparas>? spPrice})
      : _spPrice = spPrice;

  final List<SpecialPriceHeaderOutparas>? _spPrice;
  @override
  List<SpecialPriceHeaderOutparas>? get spPrice {
    final value = _spPrice;
    if (value == null) return null;
    if (_spPrice is EqualUnmodifiableListView) return _spPrice;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SpecialPriceHeaderState.getSpecialPriceHeaderState(spPrice: $spPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSspecialPriceHeaderStateImpl &&
            const DeepCollectionEquality().equals(other._spPrice, _spPrice));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_spPrice));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSspecialPriceHeaderStateImplCopyWith<_$GetSspecialPriceHeaderStateImpl>
      get copyWith => __$$GetSspecialPriceHeaderStateImplCopyWithImpl<
          _$GetSspecialPriceHeaderStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SpecialPriceHeaderOutparas>? spPrice)
        getSpecialPriceHeaderState,
    required TResult Function() speciaPriceHeaderFailedState,
  }) {
    return getSpecialPriceHeaderState(spPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SpecialPriceHeaderOutparas>? spPrice)?
        getSpecialPriceHeaderState,
    TResult? Function()? speciaPriceHeaderFailedState,
  }) {
    return getSpecialPriceHeaderState?.call(spPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SpecialPriceHeaderOutparas>? spPrice)?
        getSpecialPriceHeaderState,
    TResult Function()? speciaPriceHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getSpecialPriceHeaderState != null) {
      return getSpecialPriceHeaderState(spPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSspecialPriceHeaderState value)
        getSpecialPriceHeaderState,
    required TResult Function(SpeciaPriceHeaderFailedState value)
        speciaPriceHeaderFailedState,
  }) {
    return getSpecialPriceHeaderState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSspecialPriceHeaderState value)?
        getSpecialPriceHeaderState,
    TResult? Function(SpeciaPriceHeaderFailedState value)?
        speciaPriceHeaderFailedState,
  }) {
    return getSpecialPriceHeaderState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSspecialPriceHeaderState value)?
        getSpecialPriceHeaderState,
    TResult Function(SpeciaPriceHeaderFailedState value)?
        speciaPriceHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getSpecialPriceHeaderState != null) {
      return getSpecialPriceHeaderState(this);
    }
    return orElse();
  }
}

abstract class GetSspecialPriceHeaderState implements SpecialPriceHeaderState {
  const factory GetSspecialPriceHeaderState(
          {required final List<SpecialPriceHeaderOutparas>? spPrice}) =
      _$GetSspecialPriceHeaderStateImpl;

  List<SpecialPriceHeaderOutparas>? get spPrice;
  @JsonKey(ignore: true)
  _$$GetSspecialPriceHeaderStateImplCopyWith<_$GetSspecialPriceHeaderStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpeciaPriceHeaderFailedStateImplCopyWith<$Res> {
  factory _$$SpeciaPriceHeaderFailedStateImplCopyWith(
          _$SpeciaPriceHeaderFailedStateImpl value,
          $Res Function(_$SpeciaPriceHeaderFailedStateImpl) then) =
      __$$SpeciaPriceHeaderFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SpeciaPriceHeaderFailedStateImplCopyWithImpl<$Res>
    extends _$SpecialPriceHeaderStateCopyWithImpl<$Res,
        _$SpeciaPriceHeaderFailedStateImpl>
    implements _$$SpeciaPriceHeaderFailedStateImplCopyWith<$Res> {
  __$$SpeciaPriceHeaderFailedStateImplCopyWithImpl(
      _$SpeciaPriceHeaderFailedStateImpl _value,
      $Res Function(_$SpeciaPriceHeaderFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SpeciaPriceHeaderFailedStateImpl
    implements SpeciaPriceHeaderFailedState {
  const _$SpeciaPriceHeaderFailedStateImpl();

  @override
  String toString() {
    return 'SpecialPriceHeaderState.speciaPriceHeaderFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeciaPriceHeaderFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SpecialPriceHeaderOutparas>? spPrice)
        getSpecialPriceHeaderState,
    required TResult Function() speciaPriceHeaderFailedState,
  }) {
    return speciaPriceHeaderFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SpecialPriceHeaderOutparas>? spPrice)?
        getSpecialPriceHeaderState,
    TResult? Function()? speciaPriceHeaderFailedState,
  }) {
    return speciaPriceHeaderFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SpecialPriceHeaderOutparas>? spPrice)?
        getSpecialPriceHeaderState,
    TResult Function()? speciaPriceHeaderFailedState,
    required TResult orElse(),
  }) {
    if (speciaPriceHeaderFailedState != null) {
      return speciaPriceHeaderFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSspecialPriceHeaderState value)
        getSpecialPriceHeaderState,
    required TResult Function(SpeciaPriceHeaderFailedState value)
        speciaPriceHeaderFailedState,
  }) {
    return speciaPriceHeaderFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSspecialPriceHeaderState value)?
        getSpecialPriceHeaderState,
    TResult? Function(SpeciaPriceHeaderFailedState value)?
        speciaPriceHeaderFailedState,
  }) {
    return speciaPriceHeaderFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSspecialPriceHeaderState value)?
        getSpecialPriceHeaderState,
    TResult Function(SpeciaPriceHeaderFailedState value)?
        speciaPriceHeaderFailedState,
    required TResult orElse(),
  }) {
    if (speciaPriceHeaderFailedState != null) {
      return speciaPriceHeaderFailedState(this);
    }
    return orElse();
  }
}

abstract class SpeciaPriceHeaderFailedState implements SpecialPriceHeaderState {
  const factory SpeciaPriceHeaderFailedState() =
      _$SpeciaPriceHeaderFailedStateImpl;
}
