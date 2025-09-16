// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ar_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ArHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ArTotalInModel arIn, String searchQuery)
        getArHeaderData,
    required TResult Function() clearArHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ArTotalInModel arIn, String searchQuery)? getArHeaderData,
    TResult? Function()? clearArHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ArTotalInModel arIn, String searchQuery)? getArHeaderData,
    TResult Function()? clearArHeaderEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArHeaderData value) getArHeaderData,
    required TResult Function(ClearArHeaderEvent value) clearArHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArHeaderData value)? getArHeaderData,
    TResult? Function(ClearArHeaderEvent value)? clearArHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArHeaderData value)? getArHeaderData,
    TResult Function(ClearArHeaderEvent value)? clearArHeaderEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArHeaderEventCopyWith<$Res> {
  factory $ArHeaderEventCopyWith(
          ArHeaderEvent value, $Res Function(ArHeaderEvent) then) =
      _$ArHeaderEventCopyWithImpl<$Res, ArHeaderEvent>;
}

/// @nodoc
class _$ArHeaderEventCopyWithImpl<$Res, $Val extends ArHeaderEvent>
    implements $ArHeaderEventCopyWith<$Res> {
  _$ArHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetArHeaderDataImplCopyWith<$Res> {
  factory _$$GetArHeaderDataImplCopyWith(_$GetArHeaderDataImpl value,
          $Res Function(_$GetArHeaderDataImpl) then) =
      __$$GetArHeaderDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ArTotalInModel arIn, String searchQuery});
}

/// @nodoc
class __$$GetArHeaderDataImplCopyWithImpl<$Res>
    extends _$ArHeaderEventCopyWithImpl<$Res, _$GetArHeaderDataImpl>
    implements _$$GetArHeaderDataImplCopyWith<$Res> {
  __$$GetArHeaderDataImplCopyWithImpl(
      _$GetArHeaderDataImpl _value, $Res Function(_$GetArHeaderDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arIn = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetArHeaderDataImpl(
      arIn: null == arIn
          ? _value.arIn
          : arIn // ignore: cast_nullable_to_non_nullable
              as ArTotalInModel,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetArHeaderDataImpl implements GetArHeaderData {
  const _$GetArHeaderDataImpl({required this.arIn, required this.searchQuery});

  @override
  final ArTotalInModel arIn;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'ArHeaderEvent.getArHeaderData(arIn: $arIn, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetArHeaderDataImpl &&
            (identical(other.arIn, arIn) || other.arIn == arIn) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, arIn, searchQuery);

  /// Create a copy of ArHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetArHeaderDataImplCopyWith<_$GetArHeaderDataImpl> get copyWith =>
      __$$GetArHeaderDataImplCopyWithImpl<_$GetArHeaderDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ArTotalInModel arIn, String searchQuery)
        getArHeaderData,
    required TResult Function() clearArHeaderEvent,
  }) {
    return getArHeaderData(arIn, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ArTotalInModel arIn, String searchQuery)? getArHeaderData,
    TResult? Function()? clearArHeaderEvent,
  }) {
    return getArHeaderData?.call(arIn, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ArTotalInModel arIn, String searchQuery)? getArHeaderData,
    TResult Function()? clearArHeaderEvent,
    required TResult orElse(),
  }) {
    if (getArHeaderData != null) {
      return getArHeaderData(arIn, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArHeaderData value) getArHeaderData,
    required TResult Function(ClearArHeaderEvent value) clearArHeaderEvent,
  }) {
    return getArHeaderData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArHeaderData value)? getArHeaderData,
    TResult? Function(ClearArHeaderEvent value)? clearArHeaderEvent,
  }) {
    return getArHeaderData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArHeaderData value)? getArHeaderData,
    TResult Function(ClearArHeaderEvent value)? clearArHeaderEvent,
    required TResult orElse(),
  }) {
    if (getArHeaderData != null) {
      return getArHeaderData(this);
    }
    return orElse();
  }
}

abstract class GetArHeaderData implements ArHeaderEvent {
  const factory GetArHeaderData(
      {required final ArTotalInModel arIn,
      required final String searchQuery}) = _$GetArHeaderDataImpl;

  ArTotalInModel get arIn;
  String get searchQuery;

  /// Create a copy of ArHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetArHeaderDataImplCopyWith<_$GetArHeaderDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearArHeaderEventImplCopyWith<$Res> {
  factory _$$ClearArHeaderEventImplCopyWith(_$ClearArHeaderEventImpl value,
          $Res Function(_$ClearArHeaderEventImpl) then) =
      __$$ClearArHeaderEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearArHeaderEventImplCopyWithImpl<$Res>
    extends _$ArHeaderEventCopyWithImpl<$Res, _$ClearArHeaderEventImpl>
    implements _$$ClearArHeaderEventImplCopyWith<$Res> {
  __$$ClearArHeaderEventImplCopyWithImpl(_$ClearArHeaderEventImpl _value,
      $Res Function(_$ClearArHeaderEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearArHeaderEventImpl implements ClearArHeaderEvent {
  const _$ClearArHeaderEventImpl();

  @override
  String toString() {
    return 'ArHeaderEvent.clearArHeaderEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearArHeaderEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ArTotalInModel arIn, String searchQuery)
        getArHeaderData,
    required TResult Function() clearArHeaderEvent,
  }) {
    return clearArHeaderEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ArTotalInModel arIn, String searchQuery)? getArHeaderData,
    TResult? Function()? clearArHeaderEvent,
  }) {
    return clearArHeaderEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ArTotalInModel arIn, String searchQuery)? getArHeaderData,
    TResult Function()? clearArHeaderEvent,
    required TResult orElse(),
  }) {
    if (clearArHeaderEvent != null) {
      return clearArHeaderEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArHeaderData value) getArHeaderData,
    required TResult Function(ClearArHeaderEvent value) clearArHeaderEvent,
  }) {
    return clearArHeaderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArHeaderData value)? getArHeaderData,
    TResult? Function(ClearArHeaderEvent value)? clearArHeaderEvent,
  }) {
    return clearArHeaderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArHeaderData value)? getArHeaderData,
    TResult Function(ClearArHeaderEvent value)? clearArHeaderEvent,
    required TResult orElse(),
  }) {
    if (clearArHeaderEvent != null) {
      return clearArHeaderEvent(this);
    }
    return orElse();
  }
}

abstract class ClearArHeaderEvent implements ArHeaderEvent {
  const factory ClearArHeaderEvent() = _$ClearArHeaderEventImpl;
}

/// @nodoc
mixin _$ArHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ArTotalCollectionModel? artotal, List<ArHeaderModel>? arHeaders)
        arHeaderSuccessState,
    required TResult Function() arHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ArTotalCollectionModel? artotal, List<ArHeaderModel>? arHeaders)?
        arHeaderSuccessState,
    TResult? Function()? arHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ArTotalCollectionModel? artotal, List<ArHeaderModel>? arHeaders)?
        arHeaderSuccessState,
    TResult Function()? arHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArHeaderSuccessState value) arHeaderSuccessState,
    required TResult Function(ArHeaderFailedState value) arHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArHeaderSuccessState value)? arHeaderSuccessState,
    TResult? Function(ArHeaderFailedState value)? arHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArHeaderSuccessState value)? arHeaderSuccessState,
    TResult Function(ArHeaderFailedState value)? arHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArHeaderStateCopyWith<$Res> {
  factory $ArHeaderStateCopyWith(
          ArHeaderState value, $Res Function(ArHeaderState) then) =
      _$ArHeaderStateCopyWithImpl<$Res, ArHeaderState>;
}

/// @nodoc
class _$ArHeaderStateCopyWithImpl<$Res, $Val extends ArHeaderState>
    implements $ArHeaderStateCopyWith<$Res> {
  _$ArHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ArHeaderSuccessStateImplCopyWith<$Res> {
  factory _$$ArHeaderSuccessStateImplCopyWith(_$ArHeaderSuccessStateImpl value,
          $Res Function(_$ArHeaderSuccessStateImpl) then) =
      __$$ArHeaderSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ArTotalCollectionModel? artotal, List<ArHeaderModel>? arHeaders});
}

/// @nodoc
class __$$ArHeaderSuccessStateImplCopyWithImpl<$Res>
    extends _$ArHeaderStateCopyWithImpl<$Res, _$ArHeaderSuccessStateImpl>
    implements _$$ArHeaderSuccessStateImplCopyWith<$Res> {
  __$$ArHeaderSuccessStateImplCopyWithImpl(_$ArHeaderSuccessStateImpl _value,
      $Res Function(_$ArHeaderSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artotal = freezed,
    Object? arHeaders = freezed,
  }) {
    return _then(_$ArHeaderSuccessStateImpl(
      artotal: freezed == artotal
          ? _value.artotal
          : artotal // ignore: cast_nullable_to_non_nullable
              as ArTotalCollectionModel?,
      arHeaders: freezed == arHeaders
          ? _value._arHeaders
          : arHeaders // ignore: cast_nullable_to_non_nullable
              as List<ArHeaderModel>?,
    ));
  }
}

/// @nodoc

class _$ArHeaderSuccessStateImpl implements ArHeaderSuccessState {
  const _$ArHeaderSuccessStateImpl(
      {required this.artotal, required final List<ArHeaderModel>? arHeaders})
      : _arHeaders = arHeaders;

  @override
  final ArTotalCollectionModel? artotal;
  final List<ArHeaderModel>? _arHeaders;
  @override
  List<ArHeaderModel>? get arHeaders {
    final value = _arHeaders;
    if (value == null) return null;
    if (_arHeaders is EqualUnmodifiableListView) return _arHeaders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ArHeaderState.arHeaderSuccessState(artotal: $artotal, arHeaders: $arHeaders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArHeaderSuccessStateImpl &&
            (identical(other.artotal, artotal) || other.artotal == artotal) &&
            const DeepCollectionEquality()
                .equals(other._arHeaders, _arHeaders));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, artotal, const DeepCollectionEquality().hash(_arHeaders));

  /// Create a copy of ArHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArHeaderSuccessStateImplCopyWith<_$ArHeaderSuccessStateImpl>
      get copyWith =>
          __$$ArHeaderSuccessStateImplCopyWithImpl<_$ArHeaderSuccessStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ArTotalCollectionModel? artotal, List<ArHeaderModel>? arHeaders)
        arHeaderSuccessState,
    required TResult Function() arHeaderFailedState,
  }) {
    return arHeaderSuccessState(artotal, arHeaders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ArTotalCollectionModel? artotal, List<ArHeaderModel>? arHeaders)?
        arHeaderSuccessState,
    TResult? Function()? arHeaderFailedState,
  }) {
    return arHeaderSuccessState?.call(artotal, arHeaders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ArTotalCollectionModel? artotal, List<ArHeaderModel>? arHeaders)?
        arHeaderSuccessState,
    TResult Function()? arHeaderFailedState,
    required TResult orElse(),
  }) {
    if (arHeaderSuccessState != null) {
      return arHeaderSuccessState(artotal, arHeaders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArHeaderSuccessState value) arHeaderSuccessState,
    required TResult Function(ArHeaderFailedState value) arHeaderFailedState,
  }) {
    return arHeaderSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArHeaderSuccessState value)? arHeaderSuccessState,
    TResult? Function(ArHeaderFailedState value)? arHeaderFailedState,
  }) {
    return arHeaderSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArHeaderSuccessState value)? arHeaderSuccessState,
    TResult Function(ArHeaderFailedState value)? arHeaderFailedState,
    required TResult orElse(),
  }) {
    if (arHeaderSuccessState != null) {
      return arHeaderSuccessState(this);
    }
    return orElse();
  }
}

abstract class ArHeaderSuccessState implements ArHeaderState {
  const factory ArHeaderSuccessState(
          {required final ArTotalCollectionModel? artotal,
          required final List<ArHeaderModel>? arHeaders}) =
      _$ArHeaderSuccessStateImpl;

  ArTotalCollectionModel? get artotal;
  List<ArHeaderModel>? get arHeaders;

  /// Create a copy of ArHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArHeaderSuccessStateImplCopyWith<_$ArHeaderSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArHeaderFailedStateImplCopyWith<$Res> {
  factory _$$ArHeaderFailedStateImplCopyWith(_$ArHeaderFailedStateImpl value,
          $Res Function(_$ArHeaderFailedStateImpl) then) =
      __$$ArHeaderFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ArHeaderFailedStateImplCopyWithImpl<$Res>
    extends _$ArHeaderStateCopyWithImpl<$Res, _$ArHeaderFailedStateImpl>
    implements _$$ArHeaderFailedStateImplCopyWith<$Res> {
  __$$ArHeaderFailedStateImplCopyWithImpl(_$ArHeaderFailedStateImpl _value,
      $Res Function(_$ArHeaderFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ArHeaderFailedStateImpl implements ArHeaderFailedState {
  const _$ArHeaderFailedStateImpl();

  @override
  String toString() {
    return 'ArHeaderState.arHeaderFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArHeaderFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ArTotalCollectionModel? artotal, List<ArHeaderModel>? arHeaders)
        arHeaderSuccessState,
    required TResult Function() arHeaderFailedState,
  }) {
    return arHeaderFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ArTotalCollectionModel? artotal, List<ArHeaderModel>? arHeaders)?
        arHeaderSuccessState,
    TResult? Function()? arHeaderFailedState,
  }) {
    return arHeaderFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ArTotalCollectionModel? artotal, List<ArHeaderModel>? arHeaders)?
        arHeaderSuccessState,
    TResult Function()? arHeaderFailedState,
    required TResult orElse(),
  }) {
    if (arHeaderFailedState != null) {
      return arHeaderFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArHeaderSuccessState value) arHeaderSuccessState,
    required TResult Function(ArHeaderFailedState value) arHeaderFailedState,
  }) {
    return arHeaderFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArHeaderSuccessState value)? arHeaderSuccessState,
    TResult? Function(ArHeaderFailedState value)? arHeaderFailedState,
  }) {
    return arHeaderFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArHeaderSuccessState value)? arHeaderSuccessState,
    TResult Function(ArHeaderFailedState value)? arHeaderFailedState,
    required TResult orElse(),
  }) {
    if (arHeaderFailedState != null) {
      return arHeaderFailedState(this);
    }
    return orElse();
  }
}

abstract class ArHeaderFailedState implements ArHeaderState {
  const factory ArHeaderFailedState() = _$ArHeaderFailedStateImpl;
}
