// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cus_sp_price_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CusSpPriceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CusSpPriceInModel cuIN, String searchQuery)
        getCusSpPriceHeadersEvent,
    required TResult Function() clearCusSpPriceHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CusSpPriceInModel cuIN, String searchQuery)?
        getCusSpPriceHeadersEvent,
    TResult? Function()? clearCusSpPriceHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CusSpPriceInModel cuIN, String searchQuery)?
        getCusSpPriceHeadersEvent,
    TResult Function()? clearCusSpPriceHeaderEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusSpPriceHeadersEvent value)
        getCusSpPriceHeadersEvent,
    required TResult Function(ClearCusSpPriceHeaderEvent value)
        clearCusSpPriceHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusSpPriceHeadersEvent value)?
        getCusSpPriceHeadersEvent,
    TResult? Function(ClearCusSpPriceHeaderEvent value)?
        clearCusSpPriceHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusSpPriceHeadersEvent value)?
        getCusSpPriceHeadersEvent,
    TResult Function(ClearCusSpPriceHeaderEvent value)?
        clearCusSpPriceHeaderEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusSpPriceEventCopyWith<$Res> {
  factory $CusSpPriceEventCopyWith(
          CusSpPriceEvent value, $Res Function(CusSpPriceEvent) then) =
      _$CusSpPriceEventCopyWithImpl<$Res, CusSpPriceEvent>;
}

/// @nodoc
class _$CusSpPriceEventCopyWithImpl<$Res, $Val extends CusSpPriceEvent>
    implements $CusSpPriceEventCopyWith<$Res> {
  _$CusSpPriceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCusSpPriceHeadersEventImplCopyWith<$Res> {
  factory _$$GetCusSpPriceHeadersEventImplCopyWith(
          _$GetCusSpPriceHeadersEventImpl value,
          $Res Function(_$GetCusSpPriceHeadersEventImpl) then) =
      __$$GetCusSpPriceHeadersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CusSpPriceInModel cuIN, String searchQuery});
}

/// @nodoc
class __$$GetCusSpPriceHeadersEventImplCopyWithImpl<$Res>
    extends _$CusSpPriceEventCopyWithImpl<$Res, _$GetCusSpPriceHeadersEventImpl>
    implements _$$GetCusSpPriceHeadersEventImplCopyWith<$Res> {
  __$$GetCusSpPriceHeadersEventImplCopyWithImpl(
      _$GetCusSpPriceHeadersEventImpl _value,
      $Res Function(_$GetCusSpPriceHeadersEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cuIN = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetCusSpPriceHeadersEventImpl(
      cuIN: null == cuIN
          ? _value.cuIN
          : cuIN // ignore: cast_nullable_to_non_nullable
              as CusSpPriceInModel,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCusSpPriceHeadersEventImpl implements GetCusSpPriceHeadersEvent {
  const _$GetCusSpPriceHeadersEventImpl(
      {required this.cuIN, required this.searchQuery});

  @override
  final CusSpPriceInModel cuIN;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'CusSpPriceEvent.getCusSpPriceHeadersEvent(cuIN: $cuIN, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCusSpPriceHeadersEventImpl &&
            (identical(other.cuIN, cuIN) || other.cuIN == cuIN) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cuIN, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCusSpPriceHeadersEventImplCopyWith<_$GetCusSpPriceHeadersEventImpl>
      get copyWith => __$$GetCusSpPriceHeadersEventImplCopyWithImpl<
          _$GetCusSpPriceHeadersEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CusSpPriceInModel cuIN, String searchQuery)
        getCusSpPriceHeadersEvent,
    required TResult Function() clearCusSpPriceHeaderEvent,
  }) {
    return getCusSpPriceHeadersEvent(cuIN, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CusSpPriceInModel cuIN, String searchQuery)?
        getCusSpPriceHeadersEvent,
    TResult? Function()? clearCusSpPriceHeaderEvent,
  }) {
    return getCusSpPriceHeadersEvent?.call(cuIN, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CusSpPriceInModel cuIN, String searchQuery)?
        getCusSpPriceHeadersEvent,
    TResult Function()? clearCusSpPriceHeaderEvent,
    required TResult orElse(),
  }) {
    if (getCusSpPriceHeadersEvent != null) {
      return getCusSpPriceHeadersEvent(cuIN, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusSpPriceHeadersEvent value)
        getCusSpPriceHeadersEvent,
    required TResult Function(ClearCusSpPriceHeaderEvent value)
        clearCusSpPriceHeaderEvent,
  }) {
    return getCusSpPriceHeadersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusSpPriceHeadersEvent value)?
        getCusSpPriceHeadersEvent,
    TResult? Function(ClearCusSpPriceHeaderEvent value)?
        clearCusSpPriceHeaderEvent,
  }) {
    return getCusSpPriceHeadersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusSpPriceHeadersEvent value)?
        getCusSpPriceHeadersEvent,
    TResult Function(ClearCusSpPriceHeaderEvent value)?
        clearCusSpPriceHeaderEvent,
    required TResult orElse(),
  }) {
    if (getCusSpPriceHeadersEvent != null) {
      return getCusSpPriceHeadersEvent(this);
    }
    return orElse();
  }
}

abstract class GetCusSpPriceHeadersEvent implements CusSpPriceEvent {
  const factory GetCusSpPriceHeadersEvent(
      {required final CusSpPriceInModel cuIN,
      required final String searchQuery}) = _$GetCusSpPriceHeadersEventImpl;

  CusSpPriceInModel get cuIN;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetCusSpPriceHeadersEventImplCopyWith<_$GetCusSpPriceHeadersEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCusSpPriceHeaderEventImplCopyWith<$Res> {
  factory _$$ClearCusSpPriceHeaderEventImplCopyWith(
          _$ClearCusSpPriceHeaderEventImpl value,
          $Res Function(_$ClearCusSpPriceHeaderEventImpl) then) =
      __$$ClearCusSpPriceHeaderEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCusSpPriceHeaderEventImplCopyWithImpl<$Res>
    extends _$CusSpPriceEventCopyWithImpl<$Res,
        _$ClearCusSpPriceHeaderEventImpl>
    implements _$$ClearCusSpPriceHeaderEventImplCopyWith<$Res> {
  __$$ClearCusSpPriceHeaderEventImplCopyWithImpl(
      _$ClearCusSpPriceHeaderEventImpl _value,
      $Res Function(_$ClearCusSpPriceHeaderEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearCusSpPriceHeaderEventImpl implements ClearCusSpPriceHeaderEvent {
  const _$ClearCusSpPriceHeaderEventImpl();

  @override
  String toString() {
    return 'CusSpPriceEvent.clearCusSpPriceHeaderEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearCusSpPriceHeaderEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CusSpPriceInModel cuIN, String searchQuery)
        getCusSpPriceHeadersEvent,
    required TResult Function() clearCusSpPriceHeaderEvent,
  }) {
    return clearCusSpPriceHeaderEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CusSpPriceInModel cuIN, String searchQuery)?
        getCusSpPriceHeadersEvent,
    TResult? Function()? clearCusSpPriceHeaderEvent,
  }) {
    return clearCusSpPriceHeaderEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CusSpPriceInModel cuIN, String searchQuery)?
        getCusSpPriceHeadersEvent,
    TResult Function()? clearCusSpPriceHeaderEvent,
    required TResult orElse(),
  }) {
    if (clearCusSpPriceHeaderEvent != null) {
      return clearCusSpPriceHeaderEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusSpPriceHeadersEvent value)
        getCusSpPriceHeadersEvent,
    required TResult Function(ClearCusSpPriceHeaderEvent value)
        clearCusSpPriceHeaderEvent,
  }) {
    return clearCusSpPriceHeaderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusSpPriceHeadersEvent value)?
        getCusSpPriceHeadersEvent,
    TResult? Function(ClearCusSpPriceHeaderEvent value)?
        clearCusSpPriceHeaderEvent,
  }) {
    return clearCusSpPriceHeaderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusSpPriceHeadersEvent value)?
        getCusSpPriceHeadersEvent,
    TResult Function(ClearCusSpPriceHeaderEvent value)?
        clearCusSpPriceHeaderEvent,
    required TResult orElse(),
  }) {
    if (clearCusSpPriceHeaderEvent != null) {
      return clearCusSpPriceHeaderEvent(this);
    }
    return orElse();
  }
}

abstract class ClearCusSpPriceHeaderEvent implements CusSpPriceEvent {
  const factory ClearCusSpPriceHeaderEvent() = _$ClearCusSpPriceHeaderEventImpl;
}

/// @nodoc
mixin _$CusSpPriceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusSpPriceModel>? headers)
        getCusSpPriceHeadersState,
    required TResult Function() cusSpPriceHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusSpPriceModel>? headers)?
        getCusSpPriceHeadersState,
    TResult? Function()? cusSpPriceHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusSpPriceModel>? headers)? getCusSpPriceHeadersState,
    TResult Function()? cusSpPriceHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusSpPriceHeadersState value)
        getCusSpPriceHeadersState,
    required TResult Function(CusSpPriceHeaderFailedState value)
        cusSpPriceHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusSpPriceHeadersState value)?
        getCusSpPriceHeadersState,
    TResult? Function(CusSpPriceHeaderFailedState value)?
        cusSpPriceHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusSpPriceHeadersState value)?
        getCusSpPriceHeadersState,
    TResult Function(CusSpPriceHeaderFailedState value)?
        cusSpPriceHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusSpPriceStateCopyWith<$Res> {
  factory $CusSpPriceStateCopyWith(
          CusSpPriceState value, $Res Function(CusSpPriceState) then) =
      _$CusSpPriceStateCopyWithImpl<$Res, CusSpPriceState>;
}

/// @nodoc
class _$CusSpPriceStateCopyWithImpl<$Res, $Val extends CusSpPriceState>
    implements $CusSpPriceStateCopyWith<$Res> {
  _$CusSpPriceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCusSpPriceHeadersStateImplCopyWith<$Res> {
  factory _$$GetCusSpPriceHeadersStateImplCopyWith(
          _$GetCusSpPriceHeadersStateImpl value,
          $Res Function(_$GetCusSpPriceHeadersStateImpl) then) =
      __$$GetCusSpPriceHeadersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CusSpPriceModel>? headers});
}

/// @nodoc
class __$$GetCusSpPriceHeadersStateImplCopyWithImpl<$Res>
    extends _$CusSpPriceStateCopyWithImpl<$Res, _$GetCusSpPriceHeadersStateImpl>
    implements _$$GetCusSpPriceHeadersStateImplCopyWith<$Res> {
  __$$GetCusSpPriceHeadersStateImplCopyWithImpl(
      _$GetCusSpPriceHeadersStateImpl _value,
      $Res Function(_$GetCusSpPriceHeadersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_$GetCusSpPriceHeadersStateImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<CusSpPriceModel>?,
    ));
  }
}

/// @nodoc

class _$GetCusSpPriceHeadersStateImpl implements GetCusSpPriceHeadersState {
  const _$GetCusSpPriceHeadersStateImpl(
      {required final List<CusSpPriceModel>? headers})
      : _headers = headers;

  final List<CusSpPriceModel>? _headers;
  @override
  List<CusSpPriceModel>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CusSpPriceState.getCusSpPriceHeadersState(headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCusSpPriceHeadersStateImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCusSpPriceHeadersStateImplCopyWith<_$GetCusSpPriceHeadersStateImpl>
      get copyWith => __$$GetCusSpPriceHeadersStateImplCopyWithImpl<
          _$GetCusSpPriceHeadersStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusSpPriceModel>? headers)
        getCusSpPriceHeadersState,
    required TResult Function() cusSpPriceHeaderFailedState,
  }) {
    return getCusSpPriceHeadersState(headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusSpPriceModel>? headers)?
        getCusSpPriceHeadersState,
    TResult? Function()? cusSpPriceHeaderFailedState,
  }) {
    return getCusSpPriceHeadersState?.call(headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusSpPriceModel>? headers)? getCusSpPriceHeadersState,
    TResult Function()? cusSpPriceHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getCusSpPriceHeadersState != null) {
      return getCusSpPriceHeadersState(headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusSpPriceHeadersState value)
        getCusSpPriceHeadersState,
    required TResult Function(CusSpPriceHeaderFailedState value)
        cusSpPriceHeaderFailedState,
  }) {
    return getCusSpPriceHeadersState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusSpPriceHeadersState value)?
        getCusSpPriceHeadersState,
    TResult? Function(CusSpPriceHeaderFailedState value)?
        cusSpPriceHeaderFailedState,
  }) {
    return getCusSpPriceHeadersState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusSpPriceHeadersState value)?
        getCusSpPriceHeadersState,
    TResult Function(CusSpPriceHeaderFailedState value)?
        cusSpPriceHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getCusSpPriceHeadersState != null) {
      return getCusSpPriceHeadersState(this);
    }
    return orElse();
  }
}

abstract class GetCusSpPriceHeadersState implements CusSpPriceState {
  const factory GetCusSpPriceHeadersState(
          {required final List<CusSpPriceModel>? headers}) =
      _$GetCusSpPriceHeadersStateImpl;

  List<CusSpPriceModel>? get headers;
  @JsonKey(ignore: true)
  _$$GetCusSpPriceHeadersStateImplCopyWith<_$GetCusSpPriceHeadersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CusSpPriceHeaderFailedStateImplCopyWith<$Res> {
  factory _$$CusSpPriceHeaderFailedStateImplCopyWith(
          _$CusSpPriceHeaderFailedStateImpl value,
          $Res Function(_$CusSpPriceHeaderFailedStateImpl) then) =
      __$$CusSpPriceHeaderFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CusSpPriceHeaderFailedStateImplCopyWithImpl<$Res>
    extends _$CusSpPriceStateCopyWithImpl<$Res,
        _$CusSpPriceHeaderFailedStateImpl>
    implements _$$CusSpPriceHeaderFailedStateImplCopyWith<$Res> {
  __$$CusSpPriceHeaderFailedStateImplCopyWithImpl(
      _$CusSpPriceHeaderFailedStateImpl _value,
      $Res Function(_$CusSpPriceHeaderFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CusSpPriceHeaderFailedStateImpl implements CusSpPriceHeaderFailedState {
  const _$CusSpPriceHeaderFailedStateImpl();

  @override
  String toString() {
    return 'CusSpPriceState.cusSpPriceHeaderFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CusSpPriceHeaderFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusSpPriceModel>? headers)
        getCusSpPriceHeadersState,
    required TResult Function() cusSpPriceHeaderFailedState,
  }) {
    return cusSpPriceHeaderFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusSpPriceModel>? headers)?
        getCusSpPriceHeadersState,
    TResult? Function()? cusSpPriceHeaderFailedState,
  }) {
    return cusSpPriceHeaderFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusSpPriceModel>? headers)? getCusSpPriceHeadersState,
    TResult Function()? cusSpPriceHeaderFailedState,
    required TResult orElse(),
  }) {
    if (cusSpPriceHeaderFailedState != null) {
      return cusSpPriceHeaderFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusSpPriceHeadersState value)
        getCusSpPriceHeadersState,
    required TResult Function(CusSpPriceHeaderFailedState value)
        cusSpPriceHeaderFailedState,
  }) {
    return cusSpPriceHeaderFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusSpPriceHeadersState value)?
        getCusSpPriceHeadersState,
    TResult? Function(CusSpPriceHeaderFailedState value)?
        cusSpPriceHeaderFailedState,
  }) {
    return cusSpPriceHeaderFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusSpPriceHeadersState value)?
        getCusSpPriceHeadersState,
    TResult Function(CusSpPriceHeaderFailedState value)?
        cusSpPriceHeaderFailedState,
    required TResult orElse(),
  }) {
    if (cusSpPriceHeaderFailedState != null) {
      return cusSpPriceHeaderFailedState(this);
    }
    return orElse();
  }
}

abstract class CusSpPriceHeaderFailedState implements CusSpPriceState {
  const factory CusSpPriceHeaderFailedState() =
      _$CusSpPriceHeaderFailedStateImpl;
}
