// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asset_add_in_approval_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AssetAddInApprovalHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String searchQuery)
        getallAssetAddingRequestHeadersEvent,
    required TResult Function() clearAllAssetAddRequestHeadersState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String searchQuery)?
        getallAssetAddingRequestHeadersEvent,
    TResult? Function()? clearAllAssetAddRequestHeadersState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String searchQuery)?
        getallAssetAddingRequestHeadersEvent,
    TResult Function()? clearAllAssetAddRequestHeadersState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetallAssetAddingRequestHeadersEvent value)
        getallAssetAddingRequestHeadersEvent,
    required TResult Function(ClearAllRequestHeadersState value)
        clearAllAssetAddRequestHeadersState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetallAssetAddingRequestHeadersEvent value)?
        getallAssetAddingRequestHeadersEvent,
    TResult? Function(ClearAllRequestHeadersState value)?
        clearAllAssetAddRequestHeadersState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetallAssetAddingRequestHeadersEvent value)?
        getallAssetAddingRequestHeadersEvent,
    TResult Function(ClearAllRequestHeadersState value)?
        clearAllAssetAddRequestHeadersState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetAddInApprovalHeaderEventCopyWith<$Res> {
  factory $AssetAddInApprovalHeaderEventCopyWith(
          AssetAddInApprovalHeaderEvent value,
          $Res Function(AssetAddInApprovalHeaderEvent) then) =
      _$AssetAddInApprovalHeaderEventCopyWithImpl<$Res,
          AssetAddInApprovalHeaderEvent>;
}

/// @nodoc
class _$AssetAddInApprovalHeaderEventCopyWithImpl<$Res,
        $Val extends AssetAddInApprovalHeaderEvent>
    implements $AssetAddInApprovalHeaderEventCopyWith<$Res> {
  _$AssetAddInApprovalHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetallAssetAddingRequestHeadersEventImplCopyWith<$Res> {
  factory _$$GetallAssetAddingRequestHeadersEventImplCopyWith(
          _$GetallAssetAddingRequestHeadersEventImpl value,
          $Res Function(_$GetallAssetAddingRequestHeadersEventImpl) then) =
      __$$GetallAssetAddingRequestHeadersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String searchQuery});
}

/// @nodoc
class __$$GetallAssetAddingRequestHeadersEventImplCopyWithImpl<$Res>
    extends _$AssetAddInApprovalHeaderEventCopyWithImpl<$Res,
        _$GetallAssetAddingRequestHeadersEventImpl>
    implements _$$GetallAssetAddingRequestHeadersEventImplCopyWith<$Res> {
  __$$GetallAssetAddingRequestHeadersEventImplCopyWithImpl(
      _$GetallAssetAddingRequestHeadersEventImpl _value,
      $Res Function(_$GetallAssetAddingRequestHeadersEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetallAssetAddingRequestHeadersEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetallAssetAddingRequestHeadersEventImpl
    implements GetallAssetAddingRequestHeadersEvent {
  const _$GetallAssetAddingRequestHeadersEventImpl(
      {required this.userId, required this.searchQuery});

  @override
  final String userId;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'AssetAddInApprovalHeaderEvent.getallAssetAddingRequestHeadersEvent(userId: $userId, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetallAssetAddingRequestHeadersEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetallAssetAddingRequestHeadersEventImplCopyWith<
          _$GetallAssetAddingRequestHeadersEventImpl>
      get copyWith => __$$GetallAssetAddingRequestHeadersEventImplCopyWithImpl<
          _$GetallAssetAddingRequestHeadersEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String searchQuery)
        getallAssetAddingRequestHeadersEvent,
    required TResult Function() clearAllAssetAddRequestHeadersState,
  }) {
    return getallAssetAddingRequestHeadersEvent(userId, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String searchQuery)?
        getallAssetAddingRequestHeadersEvent,
    TResult? Function()? clearAllAssetAddRequestHeadersState,
  }) {
    return getallAssetAddingRequestHeadersEvent?.call(userId, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String searchQuery)?
        getallAssetAddingRequestHeadersEvent,
    TResult Function()? clearAllAssetAddRequestHeadersState,
    required TResult orElse(),
  }) {
    if (getallAssetAddingRequestHeadersEvent != null) {
      return getallAssetAddingRequestHeadersEvent(userId, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetallAssetAddingRequestHeadersEvent value)
        getallAssetAddingRequestHeadersEvent,
    required TResult Function(ClearAllRequestHeadersState value)
        clearAllAssetAddRequestHeadersState,
  }) {
    return getallAssetAddingRequestHeadersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetallAssetAddingRequestHeadersEvent value)?
        getallAssetAddingRequestHeadersEvent,
    TResult? Function(ClearAllRequestHeadersState value)?
        clearAllAssetAddRequestHeadersState,
  }) {
    return getallAssetAddingRequestHeadersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetallAssetAddingRequestHeadersEvent value)?
        getallAssetAddingRequestHeadersEvent,
    TResult Function(ClearAllRequestHeadersState value)?
        clearAllAssetAddRequestHeadersState,
    required TResult orElse(),
  }) {
    if (getallAssetAddingRequestHeadersEvent != null) {
      return getallAssetAddingRequestHeadersEvent(this);
    }
    return orElse();
  }
}

abstract class GetallAssetAddingRequestHeadersEvent
    implements AssetAddInApprovalHeaderEvent {
  const factory GetallAssetAddingRequestHeadersEvent(
          {required final String userId, required final String searchQuery}) =
      _$GetallAssetAddingRequestHeadersEventImpl;

  String get userId;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetallAssetAddingRequestHeadersEventImplCopyWith<
          _$GetallAssetAddingRequestHeadersEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearAllRequestHeadersStateImplCopyWith<$Res> {
  factory _$$ClearAllRequestHeadersStateImplCopyWith(
          _$ClearAllRequestHeadersStateImpl value,
          $Res Function(_$ClearAllRequestHeadersStateImpl) then) =
      __$$ClearAllRequestHeadersStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearAllRequestHeadersStateImplCopyWithImpl<$Res>
    extends _$AssetAddInApprovalHeaderEventCopyWithImpl<$Res,
        _$ClearAllRequestHeadersStateImpl>
    implements _$$ClearAllRequestHeadersStateImplCopyWith<$Res> {
  __$$ClearAllRequestHeadersStateImplCopyWithImpl(
      _$ClearAllRequestHeadersStateImpl _value,
      $Res Function(_$ClearAllRequestHeadersStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearAllRequestHeadersStateImpl implements ClearAllRequestHeadersState {
  const _$ClearAllRequestHeadersStateImpl();

  @override
  String toString() {
    return 'AssetAddInApprovalHeaderEvent.clearAllAssetAddRequestHeadersState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearAllRequestHeadersStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String searchQuery)
        getallAssetAddingRequestHeadersEvent,
    required TResult Function() clearAllAssetAddRequestHeadersState,
  }) {
    return clearAllAssetAddRequestHeadersState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String searchQuery)?
        getallAssetAddingRequestHeadersEvent,
    TResult? Function()? clearAllAssetAddRequestHeadersState,
  }) {
    return clearAllAssetAddRequestHeadersState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String searchQuery)?
        getallAssetAddingRequestHeadersEvent,
    TResult Function()? clearAllAssetAddRequestHeadersState,
    required TResult orElse(),
  }) {
    if (clearAllAssetAddRequestHeadersState != null) {
      return clearAllAssetAddRequestHeadersState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetallAssetAddingRequestHeadersEvent value)
        getallAssetAddingRequestHeadersEvent,
    required TResult Function(ClearAllRequestHeadersState value)
        clearAllAssetAddRequestHeadersState,
  }) {
    return clearAllAssetAddRequestHeadersState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetallAssetAddingRequestHeadersEvent value)?
        getallAssetAddingRequestHeadersEvent,
    TResult? Function(ClearAllRequestHeadersState value)?
        clearAllAssetAddRequestHeadersState,
  }) {
    return clearAllAssetAddRequestHeadersState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetallAssetAddingRequestHeadersEvent value)?
        getallAssetAddingRequestHeadersEvent,
    TResult Function(ClearAllRequestHeadersState value)?
        clearAllAssetAddRequestHeadersState,
    required TResult orElse(),
  }) {
    if (clearAllAssetAddRequestHeadersState != null) {
      return clearAllAssetAddRequestHeadersState(this);
    }
    return orElse();
  }
}

abstract class ClearAllRequestHeadersState
    implements AssetAddInApprovalHeaderEvent {
  const factory ClearAllRequestHeadersState() =
      _$ClearAllRequestHeadersStateImpl;
}

/// @nodoc
mixin _$AssetAddInApprovalHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AssetAddRequestHeaderModel>? headers)
        getAllAssetAddingHeadersState,
    required TResult Function() assetAddingHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AssetAddRequestHeaderModel>? headers)?
        getAllAssetAddingHeadersState,
    TResult? Function()? assetAddingHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AssetAddRequestHeaderModel>? headers)?
        getAllAssetAddingHeadersState,
    TResult Function()? assetAddingHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllAssetAddingHeadersState value)
        getAllAssetAddingHeadersState,
    required TResult Function(AssetAddingHeaderFailedState value)
        assetAddingHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllAssetAddingHeadersState value)?
        getAllAssetAddingHeadersState,
    TResult? Function(AssetAddingHeaderFailedState value)?
        assetAddingHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllAssetAddingHeadersState value)?
        getAllAssetAddingHeadersState,
    TResult Function(AssetAddingHeaderFailedState value)?
        assetAddingHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetAddInApprovalHeaderStateCopyWith<$Res> {
  factory $AssetAddInApprovalHeaderStateCopyWith(
          AssetAddInApprovalHeaderState value,
          $Res Function(AssetAddInApprovalHeaderState) then) =
      _$AssetAddInApprovalHeaderStateCopyWithImpl<$Res,
          AssetAddInApprovalHeaderState>;
}

/// @nodoc
class _$AssetAddInApprovalHeaderStateCopyWithImpl<$Res,
        $Val extends AssetAddInApprovalHeaderState>
    implements $AssetAddInApprovalHeaderStateCopyWith<$Res> {
  _$AssetAddInApprovalHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllAssetAddingHeadersStateImplCopyWith<$Res> {
  factory _$$GetAllAssetAddingHeadersStateImplCopyWith(
          _$GetAllAssetAddingHeadersStateImpl value,
          $Res Function(_$GetAllAssetAddingHeadersStateImpl) then) =
      __$$GetAllAssetAddingHeadersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AssetAddRequestHeaderModel>? headers});
}

/// @nodoc
class __$$GetAllAssetAddingHeadersStateImplCopyWithImpl<$Res>
    extends _$AssetAddInApprovalHeaderStateCopyWithImpl<$Res,
        _$GetAllAssetAddingHeadersStateImpl>
    implements _$$GetAllAssetAddingHeadersStateImplCopyWith<$Res> {
  __$$GetAllAssetAddingHeadersStateImplCopyWithImpl(
      _$GetAllAssetAddingHeadersStateImpl _value,
      $Res Function(_$GetAllAssetAddingHeadersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_$GetAllAssetAddingHeadersStateImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<AssetAddRequestHeaderModel>?,
    ));
  }
}

/// @nodoc

class _$GetAllAssetAddingHeadersStateImpl
    implements GetAllAssetAddingHeadersState {
  const _$GetAllAssetAddingHeadersStateImpl(
      {required final List<AssetAddRequestHeaderModel>? headers})
      : _headers = headers;

  final List<AssetAddRequestHeaderModel>? _headers;
  @override
  List<AssetAddRequestHeaderModel>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AssetAddInApprovalHeaderState.getAllAssetAddingHeadersState(headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllAssetAddingHeadersStateImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllAssetAddingHeadersStateImplCopyWith<
          _$GetAllAssetAddingHeadersStateImpl>
      get copyWith => __$$GetAllAssetAddingHeadersStateImplCopyWithImpl<
          _$GetAllAssetAddingHeadersStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AssetAddRequestHeaderModel>? headers)
        getAllAssetAddingHeadersState,
    required TResult Function() assetAddingHeaderFailedState,
  }) {
    return getAllAssetAddingHeadersState(headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AssetAddRequestHeaderModel>? headers)?
        getAllAssetAddingHeadersState,
    TResult? Function()? assetAddingHeaderFailedState,
  }) {
    return getAllAssetAddingHeadersState?.call(headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AssetAddRequestHeaderModel>? headers)?
        getAllAssetAddingHeadersState,
    TResult Function()? assetAddingHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getAllAssetAddingHeadersState != null) {
      return getAllAssetAddingHeadersState(headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllAssetAddingHeadersState value)
        getAllAssetAddingHeadersState,
    required TResult Function(AssetAddingHeaderFailedState value)
        assetAddingHeaderFailedState,
  }) {
    return getAllAssetAddingHeadersState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllAssetAddingHeadersState value)?
        getAllAssetAddingHeadersState,
    TResult? Function(AssetAddingHeaderFailedState value)?
        assetAddingHeaderFailedState,
  }) {
    return getAllAssetAddingHeadersState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllAssetAddingHeadersState value)?
        getAllAssetAddingHeadersState,
    TResult Function(AssetAddingHeaderFailedState value)?
        assetAddingHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getAllAssetAddingHeadersState != null) {
      return getAllAssetAddingHeadersState(this);
    }
    return orElse();
  }
}

abstract class GetAllAssetAddingHeadersState
    implements AssetAddInApprovalHeaderState {
  const factory GetAllAssetAddingHeadersState(
          {required final List<AssetAddRequestHeaderModel>? headers}) =
      _$GetAllAssetAddingHeadersStateImpl;

  List<AssetAddRequestHeaderModel>? get headers;
  @JsonKey(ignore: true)
  _$$GetAllAssetAddingHeadersStateImplCopyWith<
          _$GetAllAssetAddingHeadersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssetAddingHeaderFailedStateImplCopyWith<$Res> {
  factory _$$AssetAddingHeaderFailedStateImplCopyWith(
          _$AssetAddingHeaderFailedStateImpl value,
          $Res Function(_$AssetAddingHeaderFailedStateImpl) then) =
      __$$AssetAddingHeaderFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssetAddingHeaderFailedStateImplCopyWithImpl<$Res>
    extends _$AssetAddInApprovalHeaderStateCopyWithImpl<$Res,
        _$AssetAddingHeaderFailedStateImpl>
    implements _$$AssetAddingHeaderFailedStateImplCopyWith<$Res> {
  __$$AssetAddingHeaderFailedStateImplCopyWithImpl(
      _$AssetAddingHeaderFailedStateImpl _value,
      $Res Function(_$AssetAddingHeaderFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AssetAddingHeaderFailedStateImpl
    implements AssetAddingHeaderFailedState {
  const _$AssetAddingHeaderFailedStateImpl();

  @override
  String toString() {
    return 'AssetAddInApprovalHeaderState.assetAddingHeaderFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetAddingHeaderFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AssetAddRequestHeaderModel>? headers)
        getAllAssetAddingHeadersState,
    required TResult Function() assetAddingHeaderFailedState,
  }) {
    return assetAddingHeaderFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AssetAddRequestHeaderModel>? headers)?
        getAllAssetAddingHeadersState,
    TResult? Function()? assetAddingHeaderFailedState,
  }) {
    return assetAddingHeaderFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AssetAddRequestHeaderModel>? headers)?
        getAllAssetAddingHeadersState,
    TResult Function()? assetAddingHeaderFailedState,
    required TResult orElse(),
  }) {
    if (assetAddingHeaderFailedState != null) {
      return assetAddingHeaderFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllAssetAddingHeadersState value)
        getAllAssetAddingHeadersState,
    required TResult Function(AssetAddingHeaderFailedState value)
        assetAddingHeaderFailedState,
  }) {
    return assetAddingHeaderFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllAssetAddingHeadersState value)?
        getAllAssetAddingHeadersState,
    TResult? Function(AssetAddingHeaderFailedState value)?
        assetAddingHeaderFailedState,
  }) {
    return assetAddingHeaderFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllAssetAddingHeadersState value)?
        getAllAssetAddingHeadersState,
    TResult Function(AssetAddingHeaderFailedState value)?
        assetAddingHeaderFailedState,
    required TResult orElse(),
  }) {
    if (assetAddingHeaderFailedState != null) {
      return assetAddingHeaderFailedState(this);
    }
    return orElse();
  }
}

abstract class AssetAddingHeaderFailedState
    implements AssetAddInApprovalHeaderState {
  const factory AssetAddingHeaderFailedState() =
      _$AssetAddingHeaderFailedStateImpl;
}
