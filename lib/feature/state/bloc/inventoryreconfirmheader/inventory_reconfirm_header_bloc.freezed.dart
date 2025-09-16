// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_reconfirm_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InventoryReconfirmHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mode, String searchQuery)
        getInventoryReconfirmHeadersEvent,
    required TResult Function() clearInventoryReconfirmHeaders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mode, String searchQuery)?
        getInventoryReconfirmHeadersEvent,
    TResult? Function()? clearInventoryReconfirmHeaders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mode, String searchQuery)?
        getInventoryReconfirmHeadersEvent,
    TResult Function()? clearInventoryReconfirmHeaders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInventoryReconfirmHeadersEvent value)
        getInventoryReconfirmHeadersEvent,
    required TResult Function(ClearInventoryReconfirmHeaders value)
        clearInventoryReconfirmHeaders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInventoryReconfirmHeadersEvent value)?
        getInventoryReconfirmHeadersEvent,
    TResult? Function(ClearInventoryReconfirmHeaders value)?
        clearInventoryReconfirmHeaders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInventoryReconfirmHeadersEvent value)?
        getInventoryReconfirmHeadersEvent,
    TResult Function(ClearInventoryReconfirmHeaders value)?
        clearInventoryReconfirmHeaders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryReconfirmHeaderEventCopyWith<$Res> {
  factory $InventoryReconfirmHeaderEventCopyWith(
          InventoryReconfirmHeaderEvent value,
          $Res Function(InventoryReconfirmHeaderEvent) then) =
      _$InventoryReconfirmHeaderEventCopyWithImpl<$Res,
          InventoryReconfirmHeaderEvent>;
}

/// @nodoc
class _$InventoryReconfirmHeaderEventCopyWithImpl<$Res,
        $Val extends InventoryReconfirmHeaderEvent>
    implements $InventoryReconfirmHeaderEventCopyWith<$Res> {
  _$InventoryReconfirmHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InventoryReconfirmHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetInventoryReconfirmHeadersEventImplCopyWith<$Res> {
  factory _$$GetInventoryReconfirmHeadersEventImplCopyWith(
          _$GetInventoryReconfirmHeadersEventImpl value,
          $Res Function(_$GetInventoryReconfirmHeadersEventImpl) then) =
      __$$GetInventoryReconfirmHeadersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mode, String searchQuery});
}

/// @nodoc
class __$$GetInventoryReconfirmHeadersEventImplCopyWithImpl<$Res>
    extends _$InventoryReconfirmHeaderEventCopyWithImpl<$Res,
        _$GetInventoryReconfirmHeadersEventImpl>
    implements _$$GetInventoryReconfirmHeadersEventImplCopyWith<$Res> {
  __$$GetInventoryReconfirmHeadersEventImplCopyWithImpl(
      _$GetInventoryReconfirmHeadersEventImpl _value,
      $Res Function(_$GetInventoryReconfirmHeadersEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of InventoryReconfirmHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetInventoryReconfirmHeadersEventImpl(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetInventoryReconfirmHeadersEventImpl
    implements GetInventoryReconfirmHeadersEvent {
  const _$GetInventoryReconfirmHeadersEventImpl(
      {required this.mode, required this.searchQuery});

  @override
  final String mode;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'InventoryReconfirmHeaderEvent.getInventoryReconfirmHeadersEvent(mode: $mode, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInventoryReconfirmHeadersEventImpl &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode, searchQuery);

  /// Create a copy of InventoryReconfirmHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInventoryReconfirmHeadersEventImplCopyWith<
          _$GetInventoryReconfirmHeadersEventImpl>
      get copyWith => __$$GetInventoryReconfirmHeadersEventImplCopyWithImpl<
          _$GetInventoryReconfirmHeadersEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mode, String searchQuery)
        getInventoryReconfirmHeadersEvent,
    required TResult Function() clearInventoryReconfirmHeaders,
  }) {
    return getInventoryReconfirmHeadersEvent(mode, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mode, String searchQuery)?
        getInventoryReconfirmHeadersEvent,
    TResult? Function()? clearInventoryReconfirmHeaders,
  }) {
    return getInventoryReconfirmHeadersEvent?.call(mode, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mode, String searchQuery)?
        getInventoryReconfirmHeadersEvent,
    TResult Function()? clearInventoryReconfirmHeaders,
    required TResult orElse(),
  }) {
    if (getInventoryReconfirmHeadersEvent != null) {
      return getInventoryReconfirmHeadersEvent(mode, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInventoryReconfirmHeadersEvent value)
        getInventoryReconfirmHeadersEvent,
    required TResult Function(ClearInventoryReconfirmHeaders value)
        clearInventoryReconfirmHeaders,
  }) {
    return getInventoryReconfirmHeadersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInventoryReconfirmHeadersEvent value)?
        getInventoryReconfirmHeadersEvent,
    TResult? Function(ClearInventoryReconfirmHeaders value)?
        clearInventoryReconfirmHeaders,
  }) {
    return getInventoryReconfirmHeadersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInventoryReconfirmHeadersEvent value)?
        getInventoryReconfirmHeadersEvent,
    TResult Function(ClearInventoryReconfirmHeaders value)?
        clearInventoryReconfirmHeaders,
    required TResult orElse(),
  }) {
    if (getInventoryReconfirmHeadersEvent != null) {
      return getInventoryReconfirmHeadersEvent(this);
    }
    return orElse();
  }
}

abstract class GetInventoryReconfirmHeadersEvent
    implements InventoryReconfirmHeaderEvent {
  const factory GetInventoryReconfirmHeadersEvent(
          {required final String mode, required final String searchQuery}) =
      _$GetInventoryReconfirmHeadersEventImpl;

  String get mode;
  String get searchQuery;

  /// Create a copy of InventoryReconfirmHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetInventoryReconfirmHeadersEventImplCopyWith<
          _$GetInventoryReconfirmHeadersEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearInventoryReconfirmHeadersImplCopyWith<$Res> {
  factory _$$ClearInventoryReconfirmHeadersImplCopyWith(
          _$ClearInventoryReconfirmHeadersImpl value,
          $Res Function(_$ClearInventoryReconfirmHeadersImpl) then) =
      __$$ClearInventoryReconfirmHeadersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearInventoryReconfirmHeadersImplCopyWithImpl<$Res>
    extends _$InventoryReconfirmHeaderEventCopyWithImpl<$Res,
        _$ClearInventoryReconfirmHeadersImpl>
    implements _$$ClearInventoryReconfirmHeadersImplCopyWith<$Res> {
  __$$ClearInventoryReconfirmHeadersImplCopyWithImpl(
      _$ClearInventoryReconfirmHeadersImpl _value,
      $Res Function(_$ClearInventoryReconfirmHeadersImpl) _then)
      : super(_value, _then);

  /// Create a copy of InventoryReconfirmHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearInventoryReconfirmHeadersImpl
    implements ClearInventoryReconfirmHeaders {
  const _$ClearInventoryReconfirmHeadersImpl();

  @override
  String toString() {
    return 'InventoryReconfirmHeaderEvent.clearInventoryReconfirmHeaders()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearInventoryReconfirmHeadersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mode, String searchQuery)
        getInventoryReconfirmHeadersEvent,
    required TResult Function() clearInventoryReconfirmHeaders,
  }) {
    return clearInventoryReconfirmHeaders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mode, String searchQuery)?
        getInventoryReconfirmHeadersEvent,
    TResult? Function()? clearInventoryReconfirmHeaders,
  }) {
    return clearInventoryReconfirmHeaders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mode, String searchQuery)?
        getInventoryReconfirmHeadersEvent,
    TResult Function()? clearInventoryReconfirmHeaders,
    required TResult orElse(),
  }) {
    if (clearInventoryReconfirmHeaders != null) {
      return clearInventoryReconfirmHeaders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInventoryReconfirmHeadersEvent value)
        getInventoryReconfirmHeadersEvent,
    required TResult Function(ClearInventoryReconfirmHeaders value)
        clearInventoryReconfirmHeaders,
  }) {
    return clearInventoryReconfirmHeaders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInventoryReconfirmHeadersEvent value)?
        getInventoryReconfirmHeadersEvent,
    TResult? Function(ClearInventoryReconfirmHeaders value)?
        clearInventoryReconfirmHeaders,
  }) {
    return clearInventoryReconfirmHeaders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInventoryReconfirmHeadersEvent value)?
        getInventoryReconfirmHeadersEvent,
    TResult Function(ClearInventoryReconfirmHeaders value)?
        clearInventoryReconfirmHeaders,
    required TResult orElse(),
  }) {
    if (clearInventoryReconfirmHeaders != null) {
      return clearInventoryReconfirmHeaders(this);
    }
    return orElse();
  }
}

abstract class ClearInventoryReconfirmHeaders
    implements InventoryReconfirmHeaderEvent {
  const factory ClearInventoryReconfirmHeaders() =
      _$ClearInventoryReconfirmHeadersImpl;
}

/// @nodoc
mixin _$InventoryReconfirmHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<InventoryReconfirmHeaderModel>? headers)
        getInventoryReconfirmHeaderState,
    required TResult Function() inventoryReconfirmheaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<InventoryReconfirmHeaderModel>? headers)?
        getInventoryReconfirmHeaderState,
    TResult? Function()? inventoryReconfirmheaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InventoryReconfirmHeaderModel>? headers)?
        getInventoryReconfirmHeaderState,
    TResult Function()? inventoryReconfirmheaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInventoryReconfirmHeaderState value)
        getInventoryReconfirmHeaderState,
    required TResult Function(InventoryReconfirmheaderFailedState value)
        inventoryReconfirmheaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInventoryReconfirmHeaderState value)?
        getInventoryReconfirmHeaderState,
    TResult? Function(InventoryReconfirmheaderFailedState value)?
        inventoryReconfirmheaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInventoryReconfirmHeaderState value)?
        getInventoryReconfirmHeaderState,
    TResult Function(InventoryReconfirmheaderFailedState value)?
        inventoryReconfirmheaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryReconfirmHeaderStateCopyWith<$Res> {
  factory $InventoryReconfirmHeaderStateCopyWith(
          InventoryReconfirmHeaderState value,
          $Res Function(InventoryReconfirmHeaderState) then) =
      _$InventoryReconfirmHeaderStateCopyWithImpl<$Res,
          InventoryReconfirmHeaderState>;
}

/// @nodoc
class _$InventoryReconfirmHeaderStateCopyWithImpl<$Res,
        $Val extends InventoryReconfirmHeaderState>
    implements $InventoryReconfirmHeaderStateCopyWith<$Res> {
  _$InventoryReconfirmHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InventoryReconfirmHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetInventoryReconfirmHeaderStateImplCopyWith<$Res> {
  factory _$$GetInventoryReconfirmHeaderStateImplCopyWith(
          _$GetInventoryReconfirmHeaderStateImpl value,
          $Res Function(_$GetInventoryReconfirmHeaderStateImpl) then) =
      __$$GetInventoryReconfirmHeaderStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<InventoryReconfirmHeaderModel>? headers});
}

/// @nodoc
class __$$GetInventoryReconfirmHeaderStateImplCopyWithImpl<$Res>
    extends _$InventoryReconfirmHeaderStateCopyWithImpl<$Res,
        _$GetInventoryReconfirmHeaderStateImpl>
    implements _$$GetInventoryReconfirmHeaderStateImplCopyWith<$Res> {
  __$$GetInventoryReconfirmHeaderStateImplCopyWithImpl(
      _$GetInventoryReconfirmHeaderStateImpl _value,
      $Res Function(_$GetInventoryReconfirmHeaderStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InventoryReconfirmHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_$GetInventoryReconfirmHeaderStateImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<InventoryReconfirmHeaderModel>?,
    ));
  }
}

/// @nodoc

class _$GetInventoryReconfirmHeaderStateImpl
    implements GetInventoryReconfirmHeaderState {
  const _$GetInventoryReconfirmHeaderStateImpl(
      {required final List<InventoryReconfirmHeaderModel>? headers})
      : _headers = headers;

  final List<InventoryReconfirmHeaderModel>? _headers;
  @override
  List<InventoryReconfirmHeaderModel>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InventoryReconfirmHeaderState.getInventoryReconfirmHeaderState(headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInventoryReconfirmHeaderStateImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headers));

  /// Create a copy of InventoryReconfirmHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInventoryReconfirmHeaderStateImplCopyWith<
          _$GetInventoryReconfirmHeaderStateImpl>
      get copyWith => __$$GetInventoryReconfirmHeaderStateImplCopyWithImpl<
          _$GetInventoryReconfirmHeaderStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<InventoryReconfirmHeaderModel>? headers)
        getInventoryReconfirmHeaderState,
    required TResult Function() inventoryReconfirmheaderFailedState,
  }) {
    return getInventoryReconfirmHeaderState(headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<InventoryReconfirmHeaderModel>? headers)?
        getInventoryReconfirmHeaderState,
    TResult? Function()? inventoryReconfirmheaderFailedState,
  }) {
    return getInventoryReconfirmHeaderState?.call(headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InventoryReconfirmHeaderModel>? headers)?
        getInventoryReconfirmHeaderState,
    TResult Function()? inventoryReconfirmheaderFailedState,
    required TResult orElse(),
  }) {
    if (getInventoryReconfirmHeaderState != null) {
      return getInventoryReconfirmHeaderState(headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInventoryReconfirmHeaderState value)
        getInventoryReconfirmHeaderState,
    required TResult Function(InventoryReconfirmheaderFailedState value)
        inventoryReconfirmheaderFailedState,
  }) {
    return getInventoryReconfirmHeaderState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInventoryReconfirmHeaderState value)?
        getInventoryReconfirmHeaderState,
    TResult? Function(InventoryReconfirmheaderFailedState value)?
        inventoryReconfirmheaderFailedState,
  }) {
    return getInventoryReconfirmHeaderState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInventoryReconfirmHeaderState value)?
        getInventoryReconfirmHeaderState,
    TResult Function(InventoryReconfirmheaderFailedState value)?
        inventoryReconfirmheaderFailedState,
    required TResult orElse(),
  }) {
    if (getInventoryReconfirmHeaderState != null) {
      return getInventoryReconfirmHeaderState(this);
    }
    return orElse();
  }
}

abstract class GetInventoryReconfirmHeaderState
    implements InventoryReconfirmHeaderState {
  const factory GetInventoryReconfirmHeaderState(
          {required final List<InventoryReconfirmHeaderModel>? headers}) =
      _$GetInventoryReconfirmHeaderStateImpl;

  List<InventoryReconfirmHeaderModel>? get headers;

  /// Create a copy of InventoryReconfirmHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetInventoryReconfirmHeaderStateImplCopyWith<
          _$GetInventoryReconfirmHeaderStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InventoryReconfirmheaderFailedStateImplCopyWith<$Res> {
  factory _$$InventoryReconfirmheaderFailedStateImplCopyWith(
          _$InventoryReconfirmheaderFailedStateImpl value,
          $Res Function(_$InventoryReconfirmheaderFailedStateImpl) then) =
      __$$InventoryReconfirmheaderFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InventoryReconfirmheaderFailedStateImplCopyWithImpl<$Res>
    extends _$InventoryReconfirmHeaderStateCopyWithImpl<$Res,
        _$InventoryReconfirmheaderFailedStateImpl>
    implements _$$InventoryReconfirmheaderFailedStateImplCopyWith<$Res> {
  __$$InventoryReconfirmheaderFailedStateImplCopyWithImpl(
      _$InventoryReconfirmheaderFailedStateImpl _value,
      $Res Function(_$InventoryReconfirmheaderFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InventoryReconfirmHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InventoryReconfirmheaderFailedStateImpl
    implements InventoryReconfirmheaderFailedState {
  const _$InventoryReconfirmheaderFailedStateImpl();

  @override
  String toString() {
    return 'InventoryReconfirmHeaderState.inventoryReconfirmheaderFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryReconfirmheaderFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<InventoryReconfirmHeaderModel>? headers)
        getInventoryReconfirmHeaderState,
    required TResult Function() inventoryReconfirmheaderFailedState,
  }) {
    return inventoryReconfirmheaderFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<InventoryReconfirmHeaderModel>? headers)?
        getInventoryReconfirmHeaderState,
    TResult? Function()? inventoryReconfirmheaderFailedState,
  }) {
    return inventoryReconfirmheaderFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InventoryReconfirmHeaderModel>? headers)?
        getInventoryReconfirmHeaderState,
    TResult Function()? inventoryReconfirmheaderFailedState,
    required TResult orElse(),
  }) {
    if (inventoryReconfirmheaderFailedState != null) {
      return inventoryReconfirmheaderFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInventoryReconfirmHeaderState value)
        getInventoryReconfirmHeaderState,
    required TResult Function(InventoryReconfirmheaderFailedState value)
        inventoryReconfirmheaderFailedState,
  }) {
    return inventoryReconfirmheaderFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInventoryReconfirmHeaderState value)?
        getInventoryReconfirmHeaderState,
    TResult? Function(InventoryReconfirmheaderFailedState value)?
        inventoryReconfirmheaderFailedState,
  }) {
    return inventoryReconfirmheaderFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInventoryReconfirmHeaderState value)?
        getInventoryReconfirmHeaderState,
    TResult Function(InventoryReconfirmheaderFailedState value)?
        inventoryReconfirmheaderFailedState,
    required TResult orElse(),
  }) {
    if (inventoryReconfirmheaderFailedState != null) {
      return inventoryReconfirmheaderFailedState(this);
    }
    return orElse();
  }
}

abstract class InventoryReconfirmheaderFailedState
    implements InventoryReconfirmHeaderState {
  const factory InventoryReconfirmheaderFailedState() =
      _$InventoryReconfirmheaderFailedStateImpl;
}
