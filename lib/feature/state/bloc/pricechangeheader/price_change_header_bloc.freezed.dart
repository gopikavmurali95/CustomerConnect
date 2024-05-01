// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_change_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PriceChangeHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rotID) getPriceChangeHeaderEvent,
    required TResult Function() clearPriceChangeHeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rotID)? getPriceChangeHeaderEvent,
    TResult? Function()? clearPriceChangeHeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rotID)? getPriceChangeHeaderEvent,
    TResult Function()? clearPriceChangeHeader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPriceChangeHeaderEvent value)
        getPriceChangeHeaderEvent,
    required TResult Function(ClearPriceChangeHeader value)
        clearPriceChangeHeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPriceChangeHeaderEvent value)?
        getPriceChangeHeaderEvent,
    TResult? Function(ClearPriceChangeHeader value)? clearPriceChangeHeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPriceChangeHeaderEvent value)?
        getPriceChangeHeaderEvent,
    TResult Function(ClearPriceChangeHeader value)? clearPriceChangeHeader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceChangeHeaderEventCopyWith<$Res> {
  factory $PriceChangeHeaderEventCopyWith(PriceChangeHeaderEvent value,
          $Res Function(PriceChangeHeaderEvent) then) =
      _$PriceChangeHeaderEventCopyWithImpl<$Res, PriceChangeHeaderEvent>;
}

/// @nodoc
class _$PriceChangeHeaderEventCopyWithImpl<$Res,
        $Val extends PriceChangeHeaderEvent>
    implements $PriceChangeHeaderEventCopyWith<$Res> {
  _$PriceChangeHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPriceChangeHeaderEventImplCopyWith<$Res> {
  factory _$$GetPriceChangeHeaderEventImplCopyWith(
          _$GetPriceChangeHeaderEventImpl value,
          $Res Function(_$GetPriceChangeHeaderEventImpl) then) =
      __$$GetPriceChangeHeaderEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String rotID});
}

/// @nodoc
class __$$GetPriceChangeHeaderEventImplCopyWithImpl<$Res>
    extends _$PriceChangeHeaderEventCopyWithImpl<$Res,
        _$GetPriceChangeHeaderEventImpl>
    implements _$$GetPriceChangeHeaderEventImplCopyWith<$Res> {
  __$$GetPriceChangeHeaderEventImplCopyWithImpl(
      _$GetPriceChangeHeaderEventImpl _value,
      $Res Function(_$GetPriceChangeHeaderEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rotID = null,
  }) {
    return _then(_$GetPriceChangeHeaderEventImpl(
      rotID: null == rotID
          ? _value.rotID
          : rotID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPriceChangeHeaderEventImpl implements GetPriceChangeHeaderEvent {
  const _$GetPriceChangeHeaderEventImpl({required this.rotID});

  @override
  final String rotID;

  @override
  String toString() {
    return 'PriceChangeHeaderEvent.getPriceChangeHeaderEvent(rotID: $rotID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPriceChangeHeaderEventImpl &&
            (identical(other.rotID, rotID) || other.rotID == rotID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rotID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPriceChangeHeaderEventImplCopyWith<_$GetPriceChangeHeaderEventImpl>
      get copyWith => __$$GetPriceChangeHeaderEventImplCopyWithImpl<
          _$GetPriceChangeHeaderEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rotID) getPriceChangeHeaderEvent,
    required TResult Function() clearPriceChangeHeader,
  }) {
    return getPriceChangeHeaderEvent(rotID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rotID)? getPriceChangeHeaderEvent,
    TResult? Function()? clearPriceChangeHeader,
  }) {
    return getPriceChangeHeaderEvent?.call(rotID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rotID)? getPriceChangeHeaderEvent,
    TResult Function()? clearPriceChangeHeader,
    required TResult orElse(),
  }) {
    if (getPriceChangeHeaderEvent != null) {
      return getPriceChangeHeaderEvent(rotID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPriceChangeHeaderEvent value)
        getPriceChangeHeaderEvent,
    required TResult Function(ClearPriceChangeHeader value)
        clearPriceChangeHeader,
  }) {
    return getPriceChangeHeaderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPriceChangeHeaderEvent value)?
        getPriceChangeHeaderEvent,
    TResult? Function(ClearPriceChangeHeader value)? clearPriceChangeHeader,
  }) {
    return getPriceChangeHeaderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPriceChangeHeaderEvent value)?
        getPriceChangeHeaderEvent,
    TResult Function(ClearPriceChangeHeader value)? clearPriceChangeHeader,
    required TResult orElse(),
  }) {
    if (getPriceChangeHeaderEvent != null) {
      return getPriceChangeHeaderEvent(this);
    }
    return orElse();
  }
}

abstract class GetPriceChangeHeaderEvent implements PriceChangeHeaderEvent {
  const factory GetPriceChangeHeaderEvent({required final String rotID}) =
      _$GetPriceChangeHeaderEventImpl;

  String get rotID;
  @JsonKey(ignore: true)
  _$$GetPriceChangeHeaderEventImplCopyWith<_$GetPriceChangeHeaderEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearPriceChangeHeaderImplCopyWith<$Res> {
  factory _$$ClearPriceChangeHeaderImplCopyWith(
          _$ClearPriceChangeHeaderImpl value,
          $Res Function(_$ClearPriceChangeHeaderImpl) then) =
      __$$ClearPriceChangeHeaderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPriceChangeHeaderImplCopyWithImpl<$Res>
    extends _$PriceChangeHeaderEventCopyWithImpl<$Res,
        _$ClearPriceChangeHeaderImpl>
    implements _$$ClearPriceChangeHeaderImplCopyWith<$Res> {
  __$$ClearPriceChangeHeaderImplCopyWithImpl(
      _$ClearPriceChangeHeaderImpl _value,
      $Res Function(_$ClearPriceChangeHeaderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearPriceChangeHeaderImpl implements ClearPriceChangeHeader {
  const _$ClearPriceChangeHeaderImpl();

  @override
  String toString() {
    return 'PriceChangeHeaderEvent.clearPriceChangeHeader()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearPriceChangeHeaderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rotID) getPriceChangeHeaderEvent,
    required TResult Function() clearPriceChangeHeader,
  }) {
    return clearPriceChangeHeader();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rotID)? getPriceChangeHeaderEvent,
    TResult? Function()? clearPriceChangeHeader,
  }) {
    return clearPriceChangeHeader?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rotID)? getPriceChangeHeaderEvent,
    TResult Function()? clearPriceChangeHeader,
    required TResult orElse(),
  }) {
    if (clearPriceChangeHeader != null) {
      return clearPriceChangeHeader();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPriceChangeHeaderEvent value)
        getPriceChangeHeaderEvent,
    required TResult Function(ClearPriceChangeHeader value)
        clearPriceChangeHeader,
  }) {
    return clearPriceChangeHeader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPriceChangeHeaderEvent value)?
        getPriceChangeHeaderEvent,
    TResult? Function(ClearPriceChangeHeader value)? clearPriceChangeHeader,
  }) {
    return clearPriceChangeHeader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPriceChangeHeaderEvent value)?
        getPriceChangeHeaderEvent,
    TResult Function(ClearPriceChangeHeader value)? clearPriceChangeHeader,
    required TResult orElse(),
  }) {
    if (clearPriceChangeHeader != null) {
      return clearPriceChangeHeader(this);
    }
    return orElse();
  }
}

abstract class ClearPriceChangeHeader implements PriceChangeHeaderEvent {
  const factory ClearPriceChangeHeader() = _$ClearPriceChangeHeaderImpl;
}

/// @nodoc
mixin _$PriceChangeHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PriceChangeHeaderModel>? pcHeader)
        getPriceChangeState,
    required TResult Function() priceChangeFailureState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PriceChangeHeaderModel>? pcHeader)?
        getPriceChangeState,
    TResult? Function()? priceChangeFailureState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PriceChangeHeaderModel>? pcHeader)?
        getPriceChangeState,
    TResult Function()? priceChangeFailureState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPriceChangeState value) getPriceChangeState,
    required TResult Function(PriceChangeFailureState value)
        priceChangeFailureState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPriceChangeState value)? getPriceChangeState,
    TResult? Function(PriceChangeFailureState value)? priceChangeFailureState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPriceChangeState value)? getPriceChangeState,
    TResult Function(PriceChangeFailureState value)? priceChangeFailureState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceChangeHeaderStateCopyWith<$Res> {
  factory $PriceChangeHeaderStateCopyWith(PriceChangeHeaderState value,
          $Res Function(PriceChangeHeaderState) then) =
      _$PriceChangeHeaderStateCopyWithImpl<$Res, PriceChangeHeaderState>;
}

/// @nodoc
class _$PriceChangeHeaderStateCopyWithImpl<$Res,
        $Val extends PriceChangeHeaderState>
    implements $PriceChangeHeaderStateCopyWith<$Res> {
  _$PriceChangeHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPriceChangeStateImplCopyWith<$Res> {
  factory _$$GetPriceChangeStateImplCopyWith(_$GetPriceChangeStateImpl value,
          $Res Function(_$GetPriceChangeStateImpl) then) =
      __$$GetPriceChangeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PriceChangeHeaderModel>? pcHeader});
}

/// @nodoc
class __$$GetPriceChangeStateImplCopyWithImpl<$Res>
    extends _$PriceChangeHeaderStateCopyWithImpl<$Res,
        _$GetPriceChangeStateImpl>
    implements _$$GetPriceChangeStateImplCopyWith<$Res> {
  __$$GetPriceChangeStateImplCopyWithImpl(_$GetPriceChangeStateImpl _value,
      $Res Function(_$GetPriceChangeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pcHeader = freezed,
  }) {
    return _then(_$GetPriceChangeStateImpl(
      pcHeader: freezed == pcHeader
          ? _value._pcHeader
          : pcHeader // ignore: cast_nullable_to_non_nullable
              as List<PriceChangeHeaderModel>?,
    ));
  }
}

/// @nodoc

class _$GetPriceChangeStateImpl implements GetPriceChangeState {
  const _$GetPriceChangeStateImpl(
      {required final List<PriceChangeHeaderModel>? pcHeader})
      : _pcHeader = pcHeader;

  final List<PriceChangeHeaderModel>? _pcHeader;
  @override
  List<PriceChangeHeaderModel>? get pcHeader {
    final value = _pcHeader;
    if (value == null) return null;
    if (_pcHeader is EqualUnmodifiableListView) return _pcHeader;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PriceChangeHeaderState.getPriceChangeState(pcHeader: $pcHeader)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPriceChangeStateImpl &&
            const DeepCollectionEquality().equals(other._pcHeader, _pcHeader));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pcHeader));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPriceChangeStateImplCopyWith<_$GetPriceChangeStateImpl> get copyWith =>
      __$$GetPriceChangeStateImplCopyWithImpl<_$GetPriceChangeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PriceChangeHeaderModel>? pcHeader)
        getPriceChangeState,
    required TResult Function() priceChangeFailureState,
  }) {
    return getPriceChangeState(pcHeader);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PriceChangeHeaderModel>? pcHeader)?
        getPriceChangeState,
    TResult? Function()? priceChangeFailureState,
  }) {
    return getPriceChangeState?.call(pcHeader);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PriceChangeHeaderModel>? pcHeader)?
        getPriceChangeState,
    TResult Function()? priceChangeFailureState,
    required TResult orElse(),
  }) {
    if (getPriceChangeState != null) {
      return getPriceChangeState(pcHeader);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPriceChangeState value) getPriceChangeState,
    required TResult Function(PriceChangeFailureState value)
        priceChangeFailureState,
  }) {
    return getPriceChangeState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPriceChangeState value)? getPriceChangeState,
    TResult? Function(PriceChangeFailureState value)? priceChangeFailureState,
  }) {
    return getPriceChangeState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPriceChangeState value)? getPriceChangeState,
    TResult Function(PriceChangeFailureState value)? priceChangeFailureState,
    required TResult orElse(),
  }) {
    if (getPriceChangeState != null) {
      return getPriceChangeState(this);
    }
    return orElse();
  }
}

abstract class GetPriceChangeState implements PriceChangeHeaderState {
  const factory GetPriceChangeState(
          {required final List<PriceChangeHeaderModel>? pcHeader}) =
      _$GetPriceChangeStateImpl;

  List<PriceChangeHeaderModel>? get pcHeader;
  @JsonKey(ignore: true)
  _$$GetPriceChangeStateImplCopyWith<_$GetPriceChangeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PriceChangeFailureStateImplCopyWith<$Res> {
  factory _$$PriceChangeFailureStateImplCopyWith(
          _$PriceChangeFailureStateImpl value,
          $Res Function(_$PriceChangeFailureStateImpl) then) =
      __$$PriceChangeFailureStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PriceChangeFailureStateImplCopyWithImpl<$Res>
    extends _$PriceChangeHeaderStateCopyWithImpl<$Res,
        _$PriceChangeFailureStateImpl>
    implements _$$PriceChangeFailureStateImplCopyWith<$Res> {
  __$$PriceChangeFailureStateImplCopyWithImpl(
      _$PriceChangeFailureStateImpl _value,
      $Res Function(_$PriceChangeFailureStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PriceChangeFailureStateImpl implements PriceChangeFailureState {
  const _$PriceChangeFailureStateImpl();

  @override
  String toString() {
    return 'PriceChangeHeaderState.priceChangeFailureState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceChangeFailureStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PriceChangeHeaderModel>? pcHeader)
        getPriceChangeState,
    required TResult Function() priceChangeFailureState,
  }) {
    return priceChangeFailureState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PriceChangeHeaderModel>? pcHeader)?
        getPriceChangeState,
    TResult? Function()? priceChangeFailureState,
  }) {
    return priceChangeFailureState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PriceChangeHeaderModel>? pcHeader)?
        getPriceChangeState,
    TResult Function()? priceChangeFailureState,
    required TResult orElse(),
  }) {
    if (priceChangeFailureState != null) {
      return priceChangeFailureState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPriceChangeState value) getPriceChangeState,
    required TResult Function(PriceChangeFailureState value)
        priceChangeFailureState,
  }) {
    return priceChangeFailureState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPriceChangeState value)? getPriceChangeState,
    TResult? Function(PriceChangeFailureState value)? priceChangeFailureState,
  }) {
    return priceChangeFailureState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPriceChangeState value)? getPriceChangeState,
    TResult Function(PriceChangeFailureState value)? priceChangeFailureState,
    required TResult orElse(),
  }) {
    if (priceChangeFailureState != null) {
      return priceChangeFailureState(this);
    }
    return orElse();
  }
}

abstract class PriceChangeFailureState implements PriceChangeHeaderState {
  const factory PriceChangeFailureState() = _$PriceChangeFailureStateImpl;
}
