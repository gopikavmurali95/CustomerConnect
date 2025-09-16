// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cus_promotions_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CusPromotionsHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CusPromoInModel cusIn, String searchQuery)
        getCusPromoHeaderEvent,
    required TResult Function() clearCusPromoEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CusPromoInModel cusIn, String searchQuery)?
        getCusPromoHeaderEvent,
    TResult? Function()? clearCusPromoEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CusPromoInModel cusIn, String searchQuery)?
        getCusPromoHeaderEvent,
    TResult Function()? clearCusPromoEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusPromoHeaderEvent value)
        getCusPromoHeaderEvent,
    required TResult Function(ClearCusPromoEvent value) clearCusPromoEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusPromoHeaderEvent value)? getCusPromoHeaderEvent,
    TResult? Function(ClearCusPromoEvent value)? clearCusPromoEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusPromoHeaderEvent value)? getCusPromoHeaderEvent,
    TResult Function(ClearCusPromoEvent value)? clearCusPromoEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusPromotionsHeaderEventCopyWith<$Res> {
  factory $CusPromotionsHeaderEventCopyWith(CusPromotionsHeaderEvent value,
          $Res Function(CusPromotionsHeaderEvent) then) =
      _$CusPromotionsHeaderEventCopyWithImpl<$Res, CusPromotionsHeaderEvent>;
}

/// @nodoc
class _$CusPromotionsHeaderEventCopyWithImpl<$Res,
        $Val extends CusPromotionsHeaderEvent>
    implements $CusPromotionsHeaderEventCopyWith<$Res> {
  _$CusPromotionsHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CusPromotionsHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetCusPromoHeaderEventImplCopyWith<$Res> {
  factory _$$GetCusPromoHeaderEventImplCopyWith(
          _$GetCusPromoHeaderEventImpl value,
          $Res Function(_$GetCusPromoHeaderEventImpl) then) =
      __$$GetCusPromoHeaderEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CusPromoInModel cusIn, String searchQuery});
}

/// @nodoc
class __$$GetCusPromoHeaderEventImplCopyWithImpl<$Res>
    extends _$CusPromotionsHeaderEventCopyWithImpl<$Res,
        _$GetCusPromoHeaderEventImpl>
    implements _$$GetCusPromoHeaderEventImplCopyWith<$Res> {
  __$$GetCusPromoHeaderEventImplCopyWithImpl(
      _$GetCusPromoHeaderEventImpl _value,
      $Res Function(_$GetCusPromoHeaderEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CusPromotionsHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cusIn = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetCusPromoHeaderEventImpl(
      cusIn: null == cusIn
          ? _value.cusIn
          : cusIn // ignore: cast_nullable_to_non_nullable
              as CusPromoInModel,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCusPromoHeaderEventImpl implements GetCusPromoHeaderEvent {
  const _$GetCusPromoHeaderEventImpl(
      {required this.cusIn, required this.searchQuery});

  @override
  final CusPromoInModel cusIn;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'CusPromotionsHeaderEvent.getCusPromoHeaderEvent(cusIn: $cusIn, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCusPromoHeaderEventImpl &&
            (identical(other.cusIn, cusIn) || other.cusIn == cusIn) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cusIn, searchQuery);

  /// Create a copy of CusPromotionsHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCusPromoHeaderEventImplCopyWith<_$GetCusPromoHeaderEventImpl>
      get copyWith => __$$GetCusPromoHeaderEventImplCopyWithImpl<
          _$GetCusPromoHeaderEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CusPromoInModel cusIn, String searchQuery)
        getCusPromoHeaderEvent,
    required TResult Function() clearCusPromoEvent,
  }) {
    return getCusPromoHeaderEvent(cusIn, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CusPromoInModel cusIn, String searchQuery)?
        getCusPromoHeaderEvent,
    TResult? Function()? clearCusPromoEvent,
  }) {
    return getCusPromoHeaderEvent?.call(cusIn, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CusPromoInModel cusIn, String searchQuery)?
        getCusPromoHeaderEvent,
    TResult Function()? clearCusPromoEvent,
    required TResult orElse(),
  }) {
    if (getCusPromoHeaderEvent != null) {
      return getCusPromoHeaderEvent(cusIn, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusPromoHeaderEvent value)
        getCusPromoHeaderEvent,
    required TResult Function(ClearCusPromoEvent value) clearCusPromoEvent,
  }) {
    return getCusPromoHeaderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusPromoHeaderEvent value)? getCusPromoHeaderEvent,
    TResult? Function(ClearCusPromoEvent value)? clearCusPromoEvent,
  }) {
    return getCusPromoHeaderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusPromoHeaderEvent value)? getCusPromoHeaderEvent,
    TResult Function(ClearCusPromoEvent value)? clearCusPromoEvent,
    required TResult orElse(),
  }) {
    if (getCusPromoHeaderEvent != null) {
      return getCusPromoHeaderEvent(this);
    }
    return orElse();
  }
}

abstract class GetCusPromoHeaderEvent implements CusPromotionsHeaderEvent {
  const factory GetCusPromoHeaderEvent(
      {required final CusPromoInModel cusIn,
      required final String searchQuery}) = _$GetCusPromoHeaderEventImpl;

  CusPromoInModel get cusIn;
  String get searchQuery;

  /// Create a copy of CusPromotionsHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCusPromoHeaderEventImplCopyWith<_$GetCusPromoHeaderEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCusPromoEventImplCopyWith<$Res> {
  factory _$$ClearCusPromoEventImplCopyWith(_$ClearCusPromoEventImpl value,
          $Res Function(_$ClearCusPromoEventImpl) then) =
      __$$ClearCusPromoEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCusPromoEventImplCopyWithImpl<$Res>
    extends _$CusPromotionsHeaderEventCopyWithImpl<$Res,
        _$ClearCusPromoEventImpl>
    implements _$$ClearCusPromoEventImplCopyWith<$Res> {
  __$$ClearCusPromoEventImplCopyWithImpl(_$ClearCusPromoEventImpl _value,
      $Res Function(_$ClearCusPromoEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CusPromotionsHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearCusPromoEventImpl implements ClearCusPromoEvent {
  const _$ClearCusPromoEventImpl();

  @override
  String toString() {
    return 'CusPromotionsHeaderEvent.clearCusPromoEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearCusPromoEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CusPromoInModel cusIn, String searchQuery)
        getCusPromoHeaderEvent,
    required TResult Function() clearCusPromoEvent,
  }) {
    return clearCusPromoEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CusPromoInModel cusIn, String searchQuery)?
        getCusPromoHeaderEvent,
    TResult? Function()? clearCusPromoEvent,
  }) {
    return clearCusPromoEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CusPromoInModel cusIn, String searchQuery)?
        getCusPromoHeaderEvent,
    TResult Function()? clearCusPromoEvent,
    required TResult orElse(),
  }) {
    if (clearCusPromoEvent != null) {
      return clearCusPromoEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusPromoHeaderEvent value)
        getCusPromoHeaderEvent,
    required TResult Function(ClearCusPromoEvent value) clearCusPromoEvent,
  }) {
    return clearCusPromoEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusPromoHeaderEvent value)? getCusPromoHeaderEvent,
    TResult? Function(ClearCusPromoEvent value)? clearCusPromoEvent,
  }) {
    return clearCusPromoEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusPromoHeaderEvent value)? getCusPromoHeaderEvent,
    TResult Function(ClearCusPromoEvent value)? clearCusPromoEvent,
    required TResult orElse(),
  }) {
    if (clearCusPromoEvent != null) {
      return clearCusPromoEvent(this);
    }
    return orElse();
  }
}

abstract class ClearCusPromoEvent implements CusPromotionsHeaderEvent {
  const factory ClearCusPromoEvent() = _$ClearCusPromoEventImpl;
}

/// @nodoc
mixin _$CusPromotionsHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusPromotionHeader>? headers)
        getCusPromotionsHeaderState,
    required TResult Function() cusPromotionHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusPromotionHeader>? headers)?
        getCusPromotionsHeaderState,
    TResult? Function()? cusPromotionHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusPromotionHeader>? headers)?
        getCusPromotionsHeaderState,
    TResult Function()? cusPromotionHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusPromotionsHeaderState value)
        getCusPromotionsHeaderState,
    required TResult Function(CusPromotionHeaderFailedState value)
        cusPromotionHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusPromotionsHeaderState value)?
        getCusPromotionsHeaderState,
    TResult? Function(CusPromotionHeaderFailedState value)?
        cusPromotionHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusPromotionsHeaderState value)?
        getCusPromotionsHeaderState,
    TResult Function(CusPromotionHeaderFailedState value)?
        cusPromotionHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusPromotionsHeaderStateCopyWith<$Res> {
  factory $CusPromotionsHeaderStateCopyWith(CusPromotionsHeaderState value,
          $Res Function(CusPromotionsHeaderState) then) =
      _$CusPromotionsHeaderStateCopyWithImpl<$Res, CusPromotionsHeaderState>;
}

/// @nodoc
class _$CusPromotionsHeaderStateCopyWithImpl<$Res,
        $Val extends CusPromotionsHeaderState>
    implements $CusPromotionsHeaderStateCopyWith<$Res> {
  _$CusPromotionsHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CusPromotionsHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetCusPromotionsHeaderStateImplCopyWith<$Res> {
  factory _$$GetCusPromotionsHeaderStateImplCopyWith(
          _$GetCusPromotionsHeaderStateImpl value,
          $Res Function(_$GetCusPromotionsHeaderStateImpl) then) =
      __$$GetCusPromotionsHeaderStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CusPromotionHeader>? headers});
}

/// @nodoc
class __$$GetCusPromotionsHeaderStateImplCopyWithImpl<$Res>
    extends _$CusPromotionsHeaderStateCopyWithImpl<$Res,
        _$GetCusPromotionsHeaderStateImpl>
    implements _$$GetCusPromotionsHeaderStateImplCopyWith<$Res> {
  __$$GetCusPromotionsHeaderStateImplCopyWithImpl(
      _$GetCusPromotionsHeaderStateImpl _value,
      $Res Function(_$GetCusPromotionsHeaderStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CusPromotionsHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_$GetCusPromotionsHeaderStateImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<CusPromotionHeader>?,
    ));
  }
}

/// @nodoc

class _$GetCusPromotionsHeaderStateImpl implements GetCusPromotionsHeaderState {
  const _$GetCusPromotionsHeaderStateImpl(
      {required final List<CusPromotionHeader>? headers})
      : _headers = headers;

  final List<CusPromotionHeader>? _headers;
  @override
  List<CusPromotionHeader>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CusPromotionsHeaderState.getCusPromotionsHeaderState(headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCusPromotionsHeaderStateImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headers));

  /// Create a copy of CusPromotionsHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCusPromotionsHeaderStateImplCopyWith<_$GetCusPromotionsHeaderStateImpl>
      get copyWith => __$$GetCusPromotionsHeaderStateImplCopyWithImpl<
          _$GetCusPromotionsHeaderStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusPromotionHeader>? headers)
        getCusPromotionsHeaderState,
    required TResult Function() cusPromotionHeaderFailedState,
  }) {
    return getCusPromotionsHeaderState(headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusPromotionHeader>? headers)?
        getCusPromotionsHeaderState,
    TResult? Function()? cusPromotionHeaderFailedState,
  }) {
    return getCusPromotionsHeaderState?.call(headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusPromotionHeader>? headers)?
        getCusPromotionsHeaderState,
    TResult Function()? cusPromotionHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getCusPromotionsHeaderState != null) {
      return getCusPromotionsHeaderState(headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusPromotionsHeaderState value)
        getCusPromotionsHeaderState,
    required TResult Function(CusPromotionHeaderFailedState value)
        cusPromotionHeaderFailedState,
  }) {
    return getCusPromotionsHeaderState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusPromotionsHeaderState value)?
        getCusPromotionsHeaderState,
    TResult? Function(CusPromotionHeaderFailedState value)?
        cusPromotionHeaderFailedState,
  }) {
    return getCusPromotionsHeaderState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusPromotionsHeaderState value)?
        getCusPromotionsHeaderState,
    TResult Function(CusPromotionHeaderFailedState value)?
        cusPromotionHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getCusPromotionsHeaderState != null) {
      return getCusPromotionsHeaderState(this);
    }
    return orElse();
  }
}

abstract class GetCusPromotionsHeaderState implements CusPromotionsHeaderState {
  const factory GetCusPromotionsHeaderState(
          {required final List<CusPromotionHeader>? headers}) =
      _$GetCusPromotionsHeaderStateImpl;

  List<CusPromotionHeader>? get headers;

  /// Create a copy of CusPromotionsHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCusPromotionsHeaderStateImplCopyWith<_$GetCusPromotionsHeaderStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CusPromotionHeaderFailedStateImplCopyWith<$Res> {
  factory _$$CusPromotionHeaderFailedStateImplCopyWith(
          _$CusPromotionHeaderFailedStateImpl value,
          $Res Function(_$CusPromotionHeaderFailedStateImpl) then) =
      __$$CusPromotionHeaderFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CusPromotionHeaderFailedStateImplCopyWithImpl<$Res>
    extends _$CusPromotionsHeaderStateCopyWithImpl<$Res,
        _$CusPromotionHeaderFailedStateImpl>
    implements _$$CusPromotionHeaderFailedStateImplCopyWith<$Res> {
  __$$CusPromotionHeaderFailedStateImplCopyWithImpl(
      _$CusPromotionHeaderFailedStateImpl _value,
      $Res Function(_$CusPromotionHeaderFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CusPromotionsHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CusPromotionHeaderFailedStateImpl
    implements CusPromotionHeaderFailedState {
  const _$CusPromotionHeaderFailedStateImpl();

  @override
  String toString() {
    return 'CusPromotionsHeaderState.cusPromotionHeaderFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CusPromotionHeaderFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusPromotionHeader>? headers)
        getCusPromotionsHeaderState,
    required TResult Function() cusPromotionHeaderFailedState,
  }) {
    return cusPromotionHeaderFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusPromotionHeader>? headers)?
        getCusPromotionsHeaderState,
    TResult? Function()? cusPromotionHeaderFailedState,
  }) {
    return cusPromotionHeaderFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusPromotionHeader>? headers)?
        getCusPromotionsHeaderState,
    TResult Function()? cusPromotionHeaderFailedState,
    required TResult orElse(),
  }) {
    if (cusPromotionHeaderFailedState != null) {
      return cusPromotionHeaderFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusPromotionsHeaderState value)
        getCusPromotionsHeaderState,
    required TResult Function(CusPromotionHeaderFailedState value)
        cusPromotionHeaderFailedState,
  }) {
    return cusPromotionHeaderFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusPromotionsHeaderState value)?
        getCusPromotionsHeaderState,
    TResult? Function(CusPromotionHeaderFailedState value)?
        cusPromotionHeaderFailedState,
  }) {
    return cusPromotionHeaderFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusPromotionsHeaderState value)?
        getCusPromotionsHeaderState,
    TResult Function(CusPromotionHeaderFailedState value)?
        cusPromotionHeaderFailedState,
    required TResult orElse(),
  }) {
    if (cusPromotionHeaderFailedState != null) {
      return cusPromotionHeaderFailedState(this);
    }
    return orElse();
  }
}

abstract class CusPromotionHeaderFailedState
    implements CusPromotionsHeaderState {
  const factory CusPromotionHeaderFailedState() =
      _$CusPromotionHeaderFailedStateImpl;
}
