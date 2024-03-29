// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cus_ins_ar_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CusInsArHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CusInsArHeaderInModel arIn)
        getCusInsArHeaderEvent,
    required TResult Function() clearCusInsArHeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CusInsArHeaderInModel arIn)? getCusInsArHeaderEvent,
    TResult? Function()? clearCusInsArHeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CusInsArHeaderInModel arIn)? getCusInsArHeaderEvent,
    TResult Function()? clearCusInsArHeader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusInsArHeaderEvent value)
        getCusInsArHeaderEvent,
    required TResult Function(ClearCusInsArHeader value) clearCusInsArHeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusInsArHeaderEvent value)? getCusInsArHeaderEvent,
    TResult? Function(ClearCusInsArHeader value)? clearCusInsArHeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusInsArHeaderEvent value)? getCusInsArHeaderEvent,
    TResult Function(ClearCusInsArHeader value)? clearCusInsArHeader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusInsArHeaderEventCopyWith<$Res> {
  factory $CusInsArHeaderEventCopyWith(
          CusInsArHeaderEvent value, $Res Function(CusInsArHeaderEvent) then) =
      _$CusInsArHeaderEventCopyWithImpl<$Res, CusInsArHeaderEvent>;
}

/// @nodoc
class _$CusInsArHeaderEventCopyWithImpl<$Res, $Val extends CusInsArHeaderEvent>
    implements $CusInsArHeaderEventCopyWith<$Res> {
  _$CusInsArHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCusInsArHeaderEventImplCopyWith<$Res> {
  factory _$$GetCusInsArHeaderEventImplCopyWith(
          _$GetCusInsArHeaderEventImpl value,
          $Res Function(_$GetCusInsArHeaderEventImpl) then) =
      __$$GetCusInsArHeaderEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CusInsArHeaderInModel arIn});
}

/// @nodoc
class __$$GetCusInsArHeaderEventImplCopyWithImpl<$Res>
    extends _$CusInsArHeaderEventCopyWithImpl<$Res,
        _$GetCusInsArHeaderEventImpl>
    implements _$$GetCusInsArHeaderEventImplCopyWith<$Res> {
  __$$GetCusInsArHeaderEventImplCopyWithImpl(
      _$GetCusInsArHeaderEventImpl _value,
      $Res Function(_$GetCusInsArHeaderEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arIn = null,
  }) {
    return _then(_$GetCusInsArHeaderEventImpl(
      arIn: null == arIn
          ? _value.arIn
          : arIn // ignore: cast_nullable_to_non_nullable
              as CusInsArHeaderInModel,
    ));
  }
}

/// @nodoc

class _$GetCusInsArHeaderEventImpl implements GetCusInsArHeaderEvent {
  const _$GetCusInsArHeaderEventImpl({required this.arIn});

  @override
  final CusInsArHeaderInModel arIn;

  @override
  String toString() {
    return 'CusInsArHeaderEvent.getCusInsArHeaderEvent(arIn: $arIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCusInsArHeaderEventImpl &&
            (identical(other.arIn, arIn) || other.arIn == arIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, arIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCusInsArHeaderEventImplCopyWith<_$GetCusInsArHeaderEventImpl>
      get copyWith => __$$GetCusInsArHeaderEventImplCopyWithImpl<
          _$GetCusInsArHeaderEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CusInsArHeaderInModel arIn)
        getCusInsArHeaderEvent,
    required TResult Function() clearCusInsArHeader,
  }) {
    return getCusInsArHeaderEvent(arIn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CusInsArHeaderInModel arIn)? getCusInsArHeaderEvent,
    TResult? Function()? clearCusInsArHeader,
  }) {
    return getCusInsArHeaderEvent?.call(arIn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CusInsArHeaderInModel arIn)? getCusInsArHeaderEvent,
    TResult Function()? clearCusInsArHeader,
    required TResult orElse(),
  }) {
    if (getCusInsArHeaderEvent != null) {
      return getCusInsArHeaderEvent(arIn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusInsArHeaderEvent value)
        getCusInsArHeaderEvent,
    required TResult Function(ClearCusInsArHeader value) clearCusInsArHeader,
  }) {
    return getCusInsArHeaderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusInsArHeaderEvent value)? getCusInsArHeaderEvent,
    TResult? Function(ClearCusInsArHeader value)? clearCusInsArHeader,
  }) {
    return getCusInsArHeaderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusInsArHeaderEvent value)? getCusInsArHeaderEvent,
    TResult Function(ClearCusInsArHeader value)? clearCusInsArHeader,
    required TResult orElse(),
  }) {
    if (getCusInsArHeaderEvent != null) {
      return getCusInsArHeaderEvent(this);
    }
    return orElse();
  }
}

abstract class GetCusInsArHeaderEvent implements CusInsArHeaderEvent {
  const factory GetCusInsArHeaderEvent(
          {required final CusInsArHeaderInModel arIn}) =
      _$GetCusInsArHeaderEventImpl;

  CusInsArHeaderInModel get arIn;
  @JsonKey(ignore: true)
  _$$GetCusInsArHeaderEventImplCopyWith<_$GetCusInsArHeaderEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCusInsArHeaderImplCopyWith<$Res> {
  factory _$$ClearCusInsArHeaderImplCopyWith(_$ClearCusInsArHeaderImpl value,
          $Res Function(_$ClearCusInsArHeaderImpl) then) =
      __$$ClearCusInsArHeaderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCusInsArHeaderImplCopyWithImpl<$Res>
    extends _$CusInsArHeaderEventCopyWithImpl<$Res, _$ClearCusInsArHeaderImpl>
    implements _$$ClearCusInsArHeaderImplCopyWith<$Res> {
  __$$ClearCusInsArHeaderImplCopyWithImpl(_$ClearCusInsArHeaderImpl _value,
      $Res Function(_$ClearCusInsArHeaderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearCusInsArHeaderImpl implements ClearCusInsArHeader {
  const _$ClearCusInsArHeaderImpl();

  @override
  String toString() {
    return 'CusInsArHeaderEvent.clearCusInsArHeader()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearCusInsArHeaderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CusInsArHeaderInModel arIn)
        getCusInsArHeaderEvent,
    required TResult Function() clearCusInsArHeader,
  }) {
    return clearCusInsArHeader();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CusInsArHeaderInModel arIn)? getCusInsArHeaderEvent,
    TResult? Function()? clearCusInsArHeader,
  }) {
    return clearCusInsArHeader?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CusInsArHeaderInModel arIn)? getCusInsArHeaderEvent,
    TResult Function()? clearCusInsArHeader,
    required TResult orElse(),
  }) {
    if (clearCusInsArHeader != null) {
      return clearCusInsArHeader();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusInsArHeaderEvent value)
        getCusInsArHeaderEvent,
    required TResult Function(ClearCusInsArHeader value) clearCusInsArHeader,
  }) {
    return clearCusInsArHeader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusInsArHeaderEvent value)? getCusInsArHeaderEvent,
    TResult? Function(ClearCusInsArHeader value)? clearCusInsArHeader,
  }) {
    return clearCusInsArHeader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusInsArHeaderEvent value)? getCusInsArHeaderEvent,
    TResult Function(ClearCusInsArHeader value)? clearCusInsArHeader,
    required TResult orElse(),
  }) {
    if (clearCusInsArHeader != null) {
      return clearCusInsArHeader(this);
    }
    return orElse();
  }
}

abstract class ClearCusInsArHeader implements CusInsArHeaderEvent {
  const factory ClearCusInsArHeader() = _$ClearCusInsArHeaderImpl;
}

/// @nodoc
mixin _$CusInsArHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusInsArHEaderModel>? headers,
            ArTotalCollectionModel? artotals)
        getArHeadersState,
    required TResult Function() getArHeadersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusInsArHEaderModel>? headers,
            ArTotalCollectionModel? artotals)?
        getArHeadersState,
    TResult? Function()? getArHeadersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusInsArHEaderModel>? headers,
            ArTotalCollectionModel? artotals)?
        getArHeadersState,
    TResult Function()? getArHeadersFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArHeadersState value) getArHeadersState,
    required TResult Function(GetArHeadersFailedState value)
        getArHeadersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArHeadersState value)? getArHeadersState,
    TResult? Function(GetArHeadersFailedState value)? getArHeadersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArHeadersState value)? getArHeadersState,
    TResult Function(GetArHeadersFailedState value)? getArHeadersFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusInsArHeaderStateCopyWith<$Res> {
  factory $CusInsArHeaderStateCopyWith(
          CusInsArHeaderState value, $Res Function(CusInsArHeaderState) then) =
      _$CusInsArHeaderStateCopyWithImpl<$Res, CusInsArHeaderState>;
}

/// @nodoc
class _$CusInsArHeaderStateCopyWithImpl<$Res, $Val extends CusInsArHeaderState>
    implements $CusInsArHeaderStateCopyWith<$Res> {
  _$CusInsArHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetArHeadersStateImplCopyWith<$Res> {
  factory _$$GetArHeadersStateImplCopyWith(_$GetArHeadersStateImpl value,
          $Res Function(_$GetArHeadersStateImpl) then) =
      __$$GetArHeadersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<CusInsArHEaderModel>? headers, ArTotalCollectionModel? artotals});
}

/// @nodoc
class __$$GetArHeadersStateImplCopyWithImpl<$Res>
    extends _$CusInsArHeaderStateCopyWithImpl<$Res, _$GetArHeadersStateImpl>
    implements _$$GetArHeadersStateImplCopyWith<$Res> {
  __$$GetArHeadersStateImplCopyWithImpl(_$GetArHeadersStateImpl _value,
      $Res Function(_$GetArHeadersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
    Object? artotals = freezed,
  }) {
    return _then(_$GetArHeadersStateImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<CusInsArHEaderModel>?,
      artotals: freezed == artotals
          ? _value.artotals
          : artotals // ignore: cast_nullable_to_non_nullable
              as ArTotalCollectionModel?,
    ));
  }
}

/// @nodoc

class _$GetArHeadersStateImpl implements GetArHeadersState {
  const _$GetArHeadersStateImpl(
      {required final List<CusInsArHEaderModel>? headers,
      required this.artotals})
      : _headers = headers;

  final List<CusInsArHEaderModel>? _headers;
  @override
  List<CusInsArHEaderModel>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ArTotalCollectionModel? artotals;

  @override
  String toString() {
    return 'CusInsArHeaderState.getArHeadersState(headers: $headers, artotals: $artotals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetArHeadersStateImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            (identical(other.artotals, artotals) ||
                other.artotals == artotals));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_headers), artotals);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetArHeadersStateImplCopyWith<_$GetArHeadersStateImpl> get copyWith =>
      __$$GetArHeadersStateImplCopyWithImpl<_$GetArHeadersStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusInsArHEaderModel>? headers,
            ArTotalCollectionModel? artotals)
        getArHeadersState,
    required TResult Function() getArHeadersFailedState,
  }) {
    return getArHeadersState(headers, artotals);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusInsArHEaderModel>? headers,
            ArTotalCollectionModel? artotals)?
        getArHeadersState,
    TResult? Function()? getArHeadersFailedState,
  }) {
    return getArHeadersState?.call(headers, artotals);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusInsArHEaderModel>? headers,
            ArTotalCollectionModel? artotals)?
        getArHeadersState,
    TResult Function()? getArHeadersFailedState,
    required TResult orElse(),
  }) {
    if (getArHeadersState != null) {
      return getArHeadersState(headers, artotals);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArHeadersState value) getArHeadersState,
    required TResult Function(GetArHeadersFailedState value)
        getArHeadersFailedState,
  }) {
    return getArHeadersState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArHeadersState value)? getArHeadersState,
    TResult? Function(GetArHeadersFailedState value)? getArHeadersFailedState,
  }) {
    return getArHeadersState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArHeadersState value)? getArHeadersState,
    TResult Function(GetArHeadersFailedState value)? getArHeadersFailedState,
    required TResult orElse(),
  }) {
    if (getArHeadersState != null) {
      return getArHeadersState(this);
    }
    return orElse();
  }
}

abstract class GetArHeadersState implements CusInsArHeaderState {
  const factory GetArHeadersState(
          {required final List<CusInsArHEaderModel>? headers,
          required final ArTotalCollectionModel? artotals}) =
      _$GetArHeadersStateImpl;

  List<CusInsArHEaderModel>? get headers;
  ArTotalCollectionModel? get artotals;
  @JsonKey(ignore: true)
  _$$GetArHeadersStateImplCopyWith<_$GetArHeadersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetArHeadersFailedStateImplCopyWith<$Res> {
  factory _$$GetArHeadersFailedStateImplCopyWith(
          _$GetArHeadersFailedStateImpl value,
          $Res Function(_$GetArHeadersFailedStateImpl) then) =
      __$$GetArHeadersFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetArHeadersFailedStateImplCopyWithImpl<$Res>
    extends _$CusInsArHeaderStateCopyWithImpl<$Res,
        _$GetArHeadersFailedStateImpl>
    implements _$$GetArHeadersFailedStateImplCopyWith<$Res> {
  __$$GetArHeadersFailedStateImplCopyWithImpl(
      _$GetArHeadersFailedStateImpl _value,
      $Res Function(_$GetArHeadersFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetArHeadersFailedStateImpl implements GetArHeadersFailedState {
  const _$GetArHeadersFailedStateImpl();

  @override
  String toString() {
    return 'CusInsArHeaderState.getArHeadersFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetArHeadersFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusInsArHEaderModel>? headers,
            ArTotalCollectionModel? artotals)
        getArHeadersState,
    required TResult Function() getArHeadersFailedState,
  }) {
    return getArHeadersFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusInsArHEaderModel>? headers,
            ArTotalCollectionModel? artotals)?
        getArHeadersState,
    TResult? Function()? getArHeadersFailedState,
  }) {
    return getArHeadersFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusInsArHEaderModel>? headers,
            ArTotalCollectionModel? artotals)?
        getArHeadersState,
    TResult Function()? getArHeadersFailedState,
    required TResult orElse(),
  }) {
    if (getArHeadersFailedState != null) {
      return getArHeadersFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArHeadersState value) getArHeadersState,
    required TResult Function(GetArHeadersFailedState value)
        getArHeadersFailedState,
  }) {
    return getArHeadersFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArHeadersState value)? getArHeadersState,
    TResult? Function(GetArHeadersFailedState value)? getArHeadersFailedState,
  }) {
    return getArHeadersFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArHeadersState value)? getArHeadersState,
    TResult Function(GetArHeadersFailedState value)? getArHeadersFailedState,
    required TResult orElse(),
  }) {
    if (getArHeadersFailedState != null) {
      return getArHeadersFailedState(this);
    }
    return orElse();
  }
}

abstract class GetArHeadersFailedState implements CusInsArHeaderState {
  const factory GetArHeadersFailedState() = _$GetArHeadersFailedStateImpl;
}
