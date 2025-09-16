// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asset_removel_request_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AssetRemovelRequestHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String searchQuery)
        getAllAssetRemovalHeadersEvent,
    required TResult Function() clearAssetRemovalHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String searchQuery)?
        getAllAssetRemovalHeadersEvent,
    TResult? Function()? clearAssetRemovalHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String searchQuery)?
        getAllAssetRemovalHeadersEvent,
    TResult Function()? clearAssetRemovalHeaderEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllAssetRemovalHeadersEvent value)
        getAllAssetRemovalHeadersEvent,
    required TResult Function(ClearAssetRemovalHeaderEvent value)
        clearAssetRemovalHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllAssetRemovalHeadersEvent value)?
        getAllAssetRemovalHeadersEvent,
    TResult? Function(ClearAssetRemovalHeaderEvent value)?
        clearAssetRemovalHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllAssetRemovalHeadersEvent value)?
        getAllAssetRemovalHeadersEvent,
    TResult Function(ClearAssetRemovalHeaderEvent value)?
        clearAssetRemovalHeaderEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetRemovelRequestHeaderEventCopyWith<$Res> {
  factory $AssetRemovelRequestHeaderEventCopyWith(
          AssetRemovelRequestHeaderEvent value,
          $Res Function(AssetRemovelRequestHeaderEvent) then) =
      _$AssetRemovelRequestHeaderEventCopyWithImpl<$Res,
          AssetRemovelRequestHeaderEvent>;
}

/// @nodoc
class _$AssetRemovelRequestHeaderEventCopyWithImpl<$Res,
        $Val extends AssetRemovelRequestHeaderEvent>
    implements $AssetRemovelRequestHeaderEventCopyWith<$Res> {
  _$AssetRemovelRequestHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssetRemovelRequestHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAllAssetRemovalHeadersEventImplCopyWith<$Res> {
  factory _$$GetAllAssetRemovalHeadersEventImplCopyWith(
          _$GetAllAssetRemovalHeadersEventImpl value,
          $Res Function(_$GetAllAssetRemovalHeadersEventImpl) then) =
      __$$GetAllAssetRemovalHeadersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userID, String searchQuery});
}

/// @nodoc
class __$$GetAllAssetRemovalHeadersEventImplCopyWithImpl<$Res>
    extends _$AssetRemovelRequestHeaderEventCopyWithImpl<$Res,
        _$GetAllAssetRemovalHeadersEventImpl>
    implements _$$GetAllAssetRemovalHeadersEventImplCopyWith<$Res> {
  __$$GetAllAssetRemovalHeadersEventImplCopyWithImpl(
      _$GetAllAssetRemovalHeadersEventImpl _value,
      $Res Function(_$GetAllAssetRemovalHeadersEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssetRemovelRequestHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetAllAssetRemovalHeadersEventImpl(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAllAssetRemovalHeadersEventImpl
    implements GetAllAssetRemovalHeadersEvent {
  const _$GetAllAssetRemovalHeadersEventImpl(
      {required this.userID, required this.searchQuery});

  @override
  final String userID;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'AssetRemovelRequestHeaderEvent.getAllAssetRemovalHeadersEvent(userID: $userID, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllAssetRemovalHeadersEventImpl &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userID, searchQuery);

  /// Create a copy of AssetRemovelRequestHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllAssetRemovalHeadersEventImplCopyWith<
          _$GetAllAssetRemovalHeadersEventImpl>
      get copyWith => __$$GetAllAssetRemovalHeadersEventImplCopyWithImpl<
          _$GetAllAssetRemovalHeadersEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String searchQuery)
        getAllAssetRemovalHeadersEvent,
    required TResult Function() clearAssetRemovalHeaderEvent,
  }) {
    return getAllAssetRemovalHeadersEvent(userID, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String searchQuery)?
        getAllAssetRemovalHeadersEvent,
    TResult? Function()? clearAssetRemovalHeaderEvent,
  }) {
    return getAllAssetRemovalHeadersEvent?.call(userID, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String searchQuery)?
        getAllAssetRemovalHeadersEvent,
    TResult Function()? clearAssetRemovalHeaderEvent,
    required TResult orElse(),
  }) {
    if (getAllAssetRemovalHeadersEvent != null) {
      return getAllAssetRemovalHeadersEvent(userID, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllAssetRemovalHeadersEvent value)
        getAllAssetRemovalHeadersEvent,
    required TResult Function(ClearAssetRemovalHeaderEvent value)
        clearAssetRemovalHeaderEvent,
  }) {
    return getAllAssetRemovalHeadersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllAssetRemovalHeadersEvent value)?
        getAllAssetRemovalHeadersEvent,
    TResult? Function(ClearAssetRemovalHeaderEvent value)?
        clearAssetRemovalHeaderEvent,
  }) {
    return getAllAssetRemovalHeadersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllAssetRemovalHeadersEvent value)?
        getAllAssetRemovalHeadersEvent,
    TResult Function(ClearAssetRemovalHeaderEvent value)?
        clearAssetRemovalHeaderEvent,
    required TResult orElse(),
  }) {
    if (getAllAssetRemovalHeadersEvent != null) {
      return getAllAssetRemovalHeadersEvent(this);
    }
    return orElse();
  }
}

abstract class GetAllAssetRemovalHeadersEvent
    implements AssetRemovelRequestHeaderEvent {
  const factory GetAllAssetRemovalHeadersEvent(
          {required final String userID, required final String searchQuery}) =
      _$GetAllAssetRemovalHeadersEventImpl;

  String get userID;
  String get searchQuery;

  /// Create a copy of AssetRemovelRequestHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllAssetRemovalHeadersEventImplCopyWith<
          _$GetAllAssetRemovalHeadersEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearAssetRemovalHeaderEventImplCopyWith<$Res> {
  factory _$$ClearAssetRemovalHeaderEventImplCopyWith(
          _$ClearAssetRemovalHeaderEventImpl value,
          $Res Function(_$ClearAssetRemovalHeaderEventImpl) then) =
      __$$ClearAssetRemovalHeaderEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearAssetRemovalHeaderEventImplCopyWithImpl<$Res>
    extends _$AssetRemovelRequestHeaderEventCopyWithImpl<$Res,
        _$ClearAssetRemovalHeaderEventImpl>
    implements _$$ClearAssetRemovalHeaderEventImplCopyWith<$Res> {
  __$$ClearAssetRemovalHeaderEventImplCopyWithImpl(
      _$ClearAssetRemovalHeaderEventImpl _value,
      $Res Function(_$ClearAssetRemovalHeaderEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssetRemovelRequestHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearAssetRemovalHeaderEventImpl
    implements ClearAssetRemovalHeaderEvent {
  const _$ClearAssetRemovalHeaderEventImpl();

  @override
  String toString() {
    return 'AssetRemovelRequestHeaderEvent.clearAssetRemovalHeaderEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearAssetRemovalHeaderEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String searchQuery)
        getAllAssetRemovalHeadersEvent,
    required TResult Function() clearAssetRemovalHeaderEvent,
  }) {
    return clearAssetRemovalHeaderEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String searchQuery)?
        getAllAssetRemovalHeadersEvent,
    TResult? Function()? clearAssetRemovalHeaderEvent,
  }) {
    return clearAssetRemovalHeaderEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String searchQuery)?
        getAllAssetRemovalHeadersEvent,
    TResult Function()? clearAssetRemovalHeaderEvent,
    required TResult orElse(),
  }) {
    if (clearAssetRemovalHeaderEvent != null) {
      return clearAssetRemovalHeaderEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllAssetRemovalHeadersEvent value)
        getAllAssetRemovalHeadersEvent,
    required TResult Function(ClearAssetRemovalHeaderEvent value)
        clearAssetRemovalHeaderEvent,
  }) {
    return clearAssetRemovalHeaderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllAssetRemovalHeadersEvent value)?
        getAllAssetRemovalHeadersEvent,
    TResult? Function(ClearAssetRemovalHeaderEvent value)?
        clearAssetRemovalHeaderEvent,
  }) {
    return clearAssetRemovalHeaderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllAssetRemovalHeadersEvent value)?
        getAllAssetRemovalHeadersEvent,
    TResult Function(ClearAssetRemovalHeaderEvent value)?
        clearAssetRemovalHeaderEvent,
    required TResult orElse(),
  }) {
    if (clearAssetRemovalHeaderEvent != null) {
      return clearAssetRemovalHeaderEvent(this);
    }
    return orElse();
  }
}

abstract class ClearAssetRemovalHeaderEvent
    implements AssetRemovelRequestHeaderEvent {
  const factory ClearAssetRemovalHeaderEvent() =
      _$ClearAssetRemovalHeaderEventImpl;
}

/// @nodoc
mixin _$AssetRemovelRequestHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AssetRemovalRequestHeaderModel>? headers)
        getAssetRemovalRequestHEadersState,
    required TResult Function() assetRemovalRequestHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AssetRemovalRequestHeaderModel>? headers)?
        getAssetRemovalRequestHEadersState,
    TResult? Function()? assetRemovalRequestHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AssetRemovalRequestHeaderModel>? headers)?
        getAssetRemovalRequestHEadersState,
    TResult Function()? assetRemovalRequestHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAssetRemovalRequestHEadersState value)
        getAssetRemovalRequestHEadersState,
    required TResult Function(AssetRemovalRequestHeaderFailedState value)
        assetRemovalRequestHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAssetRemovalRequestHEadersState value)?
        getAssetRemovalRequestHEadersState,
    TResult? Function(AssetRemovalRequestHeaderFailedState value)?
        assetRemovalRequestHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAssetRemovalRequestHEadersState value)?
        getAssetRemovalRequestHEadersState,
    TResult Function(AssetRemovalRequestHeaderFailedState value)?
        assetRemovalRequestHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetRemovelRequestHeaderStateCopyWith<$Res> {
  factory $AssetRemovelRequestHeaderStateCopyWith(
          AssetRemovelRequestHeaderState value,
          $Res Function(AssetRemovelRequestHeaderState) then) =
      _$AssetRemovelRequestHeaderStateCopyWithImpl<$Res,
          AssetRemovelRequestHeaderState>;
}

/// @nodoc
class _$AssetRemovelRequestHeaderStateCopyWithImpl<$Res,
        $Val extends AssetRemovelRequestHeaderState>
    implements $AssetRemovelRequestHeaderStateCopyWith<$Res> {
  _$AssetRemovelRequestHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssetRemovelRequestHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAssetRemovalRequestHEadersStateImplCopyWith<$Res> {
  factory _$$GetAssetRemovalRequestHEadersStateImplCopyWith(
          _$GetAssetRemovalRequestHEadersStateImpl value,
          $Res Function(_$GetAssetRemovalRequestHEadersStateImpl) then) =
      __$$GetAssetRemovalRequestHEadersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AssetRemovalRequestHeaderModel>? headers});
}

/// @nodoc
class __$$GetAssetRemovalRequestHEadersStateImplCopyWithImpl<$Res>
    extends _$AssetRemovelRequestHeaderStateCopyWithImpl<$Res,
        _$GetAssetRemovalRequestHEadersStateImpl>
    implements _$$GetAssetRemovalRequestHEadersStateImplCopyWith<$Res> {
  __$$GetAssetRemovalRequestHEadersStateImplCopyWithImpl(
      _$GetAssetRemovalRequestHEadersStateImpl _value,
      $Res Function(_$GetAssetRemovalRequestHEadersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssetRemovelRequestHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_$GetAssetRemovalRequestHEadersStateImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<AssetRemovalRequestHeaderModel>?,
    ));
  }
}

/// @nodoc

class _$GetAssetRemovalRequestHEadersStateImpl
    implements GetAssetRemovalRequestHEadersState {
  const _$GetAssetRemovalRequestHEadersStateImpl(
      {required final List<AssetRemovalRequestHeaderModel>? headers})
      : _headers = headers;

  final List<AssetRemovalRequestHeaderModel>? _headers;
  @override
  List<AssetRemovalRequestHeaderModel>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AssetRemovelRequestHeaderState.getAssetRemovalRequestHEadersState(headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAssetRemovalRequestHEadersStateImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headers));

  /// Create a copy of AssetRemovelRequestHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAssetRemovalRequestHEadersStateImplCopyWith<
          _$GetAssetRemovalRequestHEadersStateImpl>
      get copyWith => __$$GetAssetRemovalRequestHEadersStateImplCopyWithImpl<
          _$GetAssetRemovalRequestHEadersStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AssetRemovalRequestHeaderModel>? headers)
        getAssetRemovalRequestHEadersState,
    required TResult Function() assetRemovalRequestHeaderFailedState,
  }) {
    return getAssetRemovalRequestHEadersState(headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AssetRemovalRequestHeaderModel>? headers)?
        getAssetRemovalRequestHEadersState,
    TResult? Function()? assetRemovalRequestHeaderFailedState,
  }) {
    return getAssetRemovalRequestHEadersState?.call(headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AssetRemovalRequestHeaderModel>? headers)?
        getAssetRemovalRequestHEadersState,
    TResult Function()? assetRemovalRequestHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getAssetRemovalRequestHEadersState != null) {
      return getAssetRemovalRequestHEadersState(headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAssetRemovalRequestHEadersState value)
        getAssetRemovalRequestHEadersState,
    required TResult Function(AssetRemovalRequestHeaderFailedState value)
        assetRemovalRequestHeaderFailedState,
  }) {
    return getAssetRemovalRequestHEadersState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAssetRemovalRequestHEadersState value)?
        getAssetRemovalRequestHEadersState,
    TResult? Function(AssetRemovalRequestHeaderFailedState value)?
        assetRemovalRequestHeaderFailedState,
  }) {
    return getAssetRemovalRequestHEadersState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAssetRemovalRequestHEadersState value)?
        getAssetRemovalRequestHEadersState,
    TResult Function(AssetRemovalRequestHeaderFailedState value)?
        assetRemovalRequestHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getAssetRemovalRequestHEadersState != null) {
      return getAssetRemovalRequestHEadersState(this);
    }
    return orElse();
  }
}

abstract class GetAssetRemovalRequestHEadersState
    implements AssetRemovelRequestHeaderState {
  const factory GetAssetRemovalRequestHEadersState(
          {required final List<AssetRemovalRequestHeaderModel>? headers}) =
      _$GetAssetRemovalRequestHEadersStateImpl;

  List<AssetRemovalRequestHeaderModel>? get headers;

  /// Create a copy of AssetRemovelRequestHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAssetRemovalRequestHEadersStateImplCopyWith<
          _$GetAssetRemovalRequestHEadersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssetRemovalRequestHeaderFailedStateImplCopyWith<$Res> {
  factory _$$AssetRemovalRequestHeaderFailedStateImplCopyWith(
          _$AssetRemovalRequestHeaderFailedStateImpl value,
          $Res Function(_$AssetRemovalRequestHeaderFailedStateImpl) then) =
      __$$AssetRemovalRequestHeaderFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssetRemovalRequestHeaderFailedStateImplCopyWithImpl<$Res>
    extends _$AssetRemovelRequestHeaderStateCopyWithImpl<$Res,
        _$AssetRemovalRequestHeaderFailedStateImpl>
    implements _$$AssetRemovalRequestHeaderFailedStateImplCopyWith<$Res> {
  __$$AssetRemovalRequestHeaderFailedStateImplCopyWithImpl(
      _$AssetRemovalRequestHeaderFailedStateImpl _value,
      $Res Function(_$AssetRemovalRequestHeaderFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssetRemovelRequestHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AssetRemovalRequestHeaderFailedStateImpl
    implements AssetRemovalRequestHeaderFailedState {
  const _$AssetRemovalRequestHeaderFailedStateImpl();

  @override
  String toString() {
    return 'AssetRemovelRequestHeaderState.assetRemovalRequestHeaderFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetRemovalRequestHeaderFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AssetRemovalRequestHeaderModel>? headers)
        getAssetRemovalRequestHEadersState,
    required TResult Function() assetRemovalRequestHeaderFailedState,
  }) {
    return assetRemovalRequestHeaderFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AssetRemovalRequestHeaderModel>? headers)?
        getAssetRemovalRequestHEadersState,
    TResult? Function()? assetRemovalRequestHeaderFailedState,
  }) {
    return assetRemovalRequestHeaderFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AssetRemovalRequestHeaderModel>? headers)?
        getAssetRemovalRequestHEadersState,
    TResult Function()? assetRemovalRequestHeaderFailedState,
    required TResult orElse(),
  }) {
    if (assetRemovalRequestHeaderFailedState != null) {
      return assetRemovalRequestHeaderFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAssetRemovalRequestHEadersState value)
        getAssetRemovalRequestHEadersState,
    required TResult Function(AssetRemovalRequestHeaderFailedState value)
        assetRemovalRequestHeaderFailedState,
  }) {
    return assetRemovalRequestHeaderFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAssetRemovalRequestHEadersState value)?
        getAssetRemovalRequestHEadersState,
    TResult? Function(AssetRemovalRequestHeaderFailedState value)?
        assetRemovalRequestHeaderFailedState,
  }) {
    return assetRemovalRequestHeaderFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAssetRemovalRequestHEadersState value)?
        getAssetRemovalRequestHEadersState,
    TResult Function(AssetRemovalRequestHeaderFailedState value)?
        assetRemovalRequestHeaderFailedState,
    required TResult orElse(),
  }) {
    if (assetRemovalRequestHeaderFailedState != null) {
      return assetRemovalRequestHeaderFailedState(this);
    }
    return orElse();
  }
}

abstract class AssetRemovalRequestHeaderFailedState
    implements AssetRemovelRequestHeaderState {
  const factory AssetRemovalRequestHeaderFailedState() =
      _$AssetRemovalRequestHeaderFailedStateImpl;
}
