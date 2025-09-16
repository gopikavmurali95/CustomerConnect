// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'load_transfer_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoadTransferHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String mode, String searchQuery)
        getAllLoadTransferHeadersEvent,
    required TResult Function() clearLoadtransferHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String mode, String searchQuery)?
        getAllLoadTransferHeadersEvent,
    TResult? Function()? clearLoadtransferHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String mode, String searchQuery)?
        getAllLoadTransferHeadersEvent,
    TResult Function()? clearLoadtransferHeaderEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllLoadTransferHeadersEvent value)
        getAllLoadTransferHeadersEvent,
    required TResult Function(ClearLoadtransferHeaderEvent value)
        clearLoadtransferHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllLoadTransferHeadersEvent value)?
        getAllLoadTransferHeadersEvent,
    TResult? Function(ClearLoadtransferHeaderEvent value)?
        clearLoadtransferHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllLoadTransferHeadersEvent value)?
        getAllLoadTransferHeadersEvent,
    TResult Function(ClearLoadtransferHeaderEvent value)?
        clearLoadtransferHeaderEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadTransferHeaderEventCopyWith<$Res> {
  factory $LoadTransferHeaderEventCopyWith(LoadTransferHeaderEvent value,
          $Res Function(LoadTransferHeaderEvent) then) =
      _$LoadTransferHeaderEventCopyWithImpl<$Res, LoadTransferHeaderEvent>;
}

/// @nodoc
class _$LoadTransferHeaderEventCopyWithImpl<$Res,
        $Val extends LoadTransferHeaderEvent>
    implements $LoadTransferHeaderEventCopyWith<$Res> {
  _$LoadTransferHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadTransferHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAllLoadTransferHeadersEventImplCopyWith<$Res> {
  factory _$$GetAllLoadTransferHeadersEventImplCopyWith(
          _$GetAllLoadTransferHeadersEventImpl value,
          $Res Function(_$GetAllLoadTransferHeadersEventImpl) then) =
      __$$GetAllLoadTransferHeadersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userID, String mode, String searchQuery});
}

/// @nodoc
class __$$GetAllLoadTransferHeadersEventImplCopyWithImpl<$Res>
    extends _$LoadTransferHeaderEventCopyWithImpl<$Res,
        _$GetAllLoadTransferHeadersEventImpl>
    implements _$$GetAllLoadTransferHeadersEventImplCopyWith<$Res> {
  __$$GetAllLoadTransferHeadersEventImplCopyWithImpl(
      _$GetAllLoadTransferHeadersEventImpl _value,
      $Res Function(_$GetAllLoadTransferHeadersEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadTransferHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? mode = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetAllLoadTransferHeadersEventImpl(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$GetAllLoadTransferHeadersEventImpl
    implements GetAllLoadTransferHeadersEvent {
  const _$GetAllLoadTransferHeadersEventImpl(
      {required this.userID, required this.mode, required this.searchQuery});

  @override
  final String userID;
  @override
  final String mode;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'LoadTransferHeaderEvent.getAllLoadTransferHeadersEvent(userID: $userID, mode: $mode, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllLoadTransferHeadersEventImpl &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userID, mode, searchQuery);

  /// Create a copy of LoadTransferHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllLoadTransferHeadersEventImplCopyWith<
          _$GetAllLoadTransferHeadersEventImpl>
      get copyWith => __$$GetAllLoadTransferHeadersEventImplCopyWithImpl<
          _$GetAllLoadTransferHeadersEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String mode, String searchQuery)
        getAllLoadTransferHeadersEvent,
    required TResult Function() clearLoadtransferHeaderEvent,
  }) {
    return getAllLoadTransferHeadersEvent(userID, mode, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String mode, String searchQuery)?
        getAllLoadTransferHeadersEvent,
    TResult? Function()? clearLoadtransferHeaderEvent,
  }) {
    return getAllLoadTransferHeadersEvent?.call(userID, mode, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String mode, String searchQuery)?
        getAllLoadTransferHeadersEvent,
    TResult Function()? clearLoadtransferHeaderEvent,
    required TResult orElse(),
  }) {
    if (getAllLoadTransferHeadersEvent != null) {
      return getAllLoadTransferHeadersEvent(userID, mode, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllLoadTransferHeadersEvent value)
        getAllLoadTransferHeadersEvent,
    required TResult Function(ClearLoadtransferHeaderEvent value)
        clearLoadtransferHeaderEvent,
  }) {
    return getAllLoadTransferHeadersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllLoadTransferHeadersEvent value)?
        getAllLoadTransferHeadersEvent,
    TResult? Function(ClearLoadtransferHeaderEvent value)?
        clearLoadtransferHeaderEvent,
  }) {
    return getAllLoadTransferHeadersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllLoadTransferHeadersEvent value)?
        getAllLoadTransferHeadersEvent,
    TResult Function(ClearLoadtransferHeaderEvent value)?
        clearLoadtransferHeaderEvent,
    required TResult orElse(),
  }) {
    if (getAllLoadTransferHeadersEvent != null) {
      return getAllLoadTransferHeadersEvent(this);
    }
    return orElse();
  }
}

abstract class GetAllLoadTransferHeadersEvent
    implements LoadTransferHeaderEvent {
  const factory GetAllLoadTransferHeadersEvent(
          {required final String userID,
          required final String mode,
          required final String searchQuery}) =
      _$GetAllLoadTransferHeadersEventImpl;

  String get userID;
  String get mode;
  String get searchQuery;

  /// Create a copy of LoadTransferHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllLoadTransferHeadersEventImplCopyWith<
          _$GetAllLoadTransferHeadersEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearLoadtransferHeaderEventImplCopyWith<$Res> {
  factory _$$ClearLoadtransferHeaderEventImplCopyWith(
          _$ClearLoadtransferHeaderEventImpl value,
          $Res Function(_$ClearLoadtransferHeaderEventImpl) then) =
      __$$ClearLoadtransferHeaderEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearLoadtransferHeaderEventImplCopyWithImpl<$Res>
    extends _$LoadTransferHeaderEventCopyWithImpl<$Res,
        _$ClearLoadtransferHeaderEventImpl>
    implements _$$ClearLoadtransferHeaderEventImplCopyWith<$Res> {
  __$$ClearLoadtransferHeaderEventImplCopyWithImpl(
      _$ClearLoadtransferHeaderEventImpl _value,
      $Res Function(_$ClearLoadtransferHeaderEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadTransferHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearLoadtransferHeaderEventImpl
    implements ClearLoadtransferHeaderEvent {
  const _$ClearLoadtransferHeaderEventImpl();

  @override
  String toString() {
    return 'LoadTransferHeaderEvent.clearLoadtransferHeaderEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearLoadtransferHeaderEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String mode, String searchQuery)
        getAllLoadTransferHeadersEvent,
    required TResult Function() clearLoadtransferHeaderEvent,
  }) {
    return clearLoadtransferHeaderEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String mode, String searchQuery)?
        getAllLoadTransferHeadersEvent,
    TResult? Function()? clearLoadtransferHeaderEvent,
  }) {
    return clearLoadtransferHeaderEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String mode, String searchQuery)?
        getAllLoadTransferHeadersEvent,
    TResult Function()? clearLoadtransferHeaderEvent,
    required TResult orElse(),
  }) {
    if (clearLoadtransferHeaderEvent != null) {
      return clearLoadtransferHeaderEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllLoadTransferHeadersEvent value)
        getAllLoadTransferHeadersEvent,
    required TResult Function(ClearLoadtransferHeaderEvent value)
        clearLoadtransferHeaderEvent,
  }) {
    return clearLoadtransferHeaderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllLoadTransferHeadersEvent value)?
        getAllLoadTransferHeadersEvent,
    TResult? Function(ClearLoadtransferHeaderEvent value)?
        clearLoadtransferHeaderEvent,
  }) {
    return clearLoadtransferHeaderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllLoadTransferHeadersEvent value)?
        getAllLoadTransferHeadersEvent,
    TResult Function(ClearLoadtransferHeaderEvent value)?
        clearLoadtransferHeaderEvent,
    required TResult orElse(),
  }) {
    if (clearLoadtransferHeaderEvent != null) {
      return clearLoadtransferHeaderEvent(this);
    }
    return orElse();
  }
}

abstract class ClearLoadtransferHeaderEvent implements LoadTransferHeaderEvent {
  const factory ClearLoadtransferHeaderEvent() =
      _$ClearLoadtransferHeaderEventImpl;
}

/// @nodoc
mixin _$LoadTransferHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LoadTransferApprovalHeaderModel>? headers)
        getAllLoadTransferHeadersState,
    required TResult Function() loadTransferHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LoadTransferApprovalHeaderModel>? headers)?
        getAllLoadTransferHeadersState,
    TResult? Function()? loadTransferHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LoadTransferApprovalHeaderModel>? headers)?
        getAllLoadTransferHeadersState,
    TResult Function()? loadTransferHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllLoadTransferHeadersState value)
        getAllLoadTransferHeadersState,
    required TResult Function(LoadTransferHeaderFailedState value)
        loadTransferHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllLoadTransferHeadersState value)?
        getAllLoadTransferHeadersState,
    TResult? Function(LoadTransferHeaderFailedState value)?
        loadTransferHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllLoadTransferHeadersState value)?
        getAllLoadTransferHeadersState,
    TResult Function(LoadTransferHeaderFailedState value)?
        loadTransferHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadTransferHeaderStateCopyWith<$Res> {
  factory $LoadTransferHeaderStateCopyWith(LoadTransferHeaderState value,
          $Res Function(LoadTransferHeaderState) then) =
      _$LoadTransferHeaderStateCopyWithImpl<$Res, LoadTransferHeaderState>;
}

/// @nodoc
class _$LoadTransferHeaderStateCopyWithImpl<$Res,
        $Val extends LoadTransferHeaderState>
    implements $LoadTransferHeaderStateCopyWith<$Res> {
  _$LoadTransferHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadTransferHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAllLoadTransferHeadersStateImplCopyWith<$Res> {
  factory _$$GetAllLoadTransferHeadersStateImplCopyWith(
          _$GetAllLoadTransferHeadersStateImpl value,
          $Res Function(_$GetAllLoadTransferHeadersStateImpl) then) =
      __$$GetAllLoadTransferHeadersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LoadTransferApprovalHeaderModel>? headers});
}

/// @nodoc
class __$$GetAllLoadTransferHeadersStateImplCopyWithImpl<$Res>
    extends _$LoadTransferHeaderStateCopyWithImpl<$Res,
        _$GetAllLoadTransferHeadersStateImpl>
    implements _$$GetAllLoadTransferHeadersStateImplCopyWith<$Res> {
  __$$GetAllLoadTransferHeadersStateImplCopyWithImpl(
      _$GetAllLoadTransferHeadersStateImpl _value,
      $Res Function(_$GetAllLoadTransferHeadersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadTransferHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_$GetAllLoadTransferHeadersStateImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<LoadTransferApprovalHeaderModel>?,
    ));
  }
}

/// @nodoc

class _$GetAllLoadTransferHeadersStateImpl
    implements GetAllLoadTransferHeadersState {
  const _$GetAllLoadTransferHeadersStateImpl(
      {required final List<LoadTransferApprovalHeaderModel>? headers})
      : _headers = headers;

  final List<LoadTransferApprovalHeaderModel>? _headers;
  @override
  List<LoadTransferApprovalHeaderModel>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LoadTransferHeaderState.getAllLoadTransferHeadersState(headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllLoadTransferHeadersStateImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headers));

  /// Create a copy of LoadTransferHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllLoadTransferHeadersStateImplCopyWith<
          _$GetAllLoadTransferHeadersStateImpl>
      get copyWith => __$$GetAllLoadTransferHeadersStateImplCopyWithImpl<
          _$GetAllLoadTransferHeadersStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LoadTransferApprovalHeaderModel>? headers)
        getAllLoadTransferHeadersState,
    required TResult Function() loadTransferHeaderFailedState,
  }) {
    return getAllLoadTransferHeadersState(headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LoadTransferApprovalHeaderModel>? headers)?
        getAllLoadTransferHeadersState,
    TResult? Function()? loadTransferHeaderFailedState,
  }) {
    return getAllLoadTransferHeadersState?.call(headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LoadTransferApprovalHeaderModel>? headers)?
        getAllLoadTransferHeadersState,
    TResult Function()? loadTransferHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getAllLoadTransferHeadersState != null) {
      return getAllLoadTransferHeadersState(headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllLoadTransferHeadersState value)
        getAllLoadTransferHeadersState,
    required TResult Function(LoadTransferHeaderFailedState value)
        loadTransferHeaderFailedState,
  }) {
    return getAllLoadTransferHeadersState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllLoadTransferHeadersState value)?
        getAllLoadTransferHeadersState,
    TResult? Function(LoadTransferHeaderFailedState value)?
        loadTransferHeaderFailedState,
  }) {
    return getAllLoadTransferHeadersState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllLoadTransferHeadersState value)?
        getAllLoadTransferHeadersState,
    TResult Function(LoadTransferHeaderFailedState value)?
        loadTransferHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getAllLoadTransferHeadersState != null) {
      return getAllLoadTransferHeadersState(this);
    }
    return orElse();
  }
}

abstract class GetAllLoadTransferHeadersState
    implements LoadTransferHeaderState {
  const factory GetAllLoadTransferHeadersState(
          {required final List<LoadTransferApprovalHeaderModel>? headers}) =
      _$GetAllLoadTransferHeadersStateImpl;

  List<LoadTransferApprovalHeaderModel>? get headers;

  /// Create a copy of LoadTransferHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllLoadTransferHeadersStateImplCopyWith<
          _$GetAllLoadTransferHeadersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadTransferHeaderFailedStateImplCopyWith<$Res> {
  factory _$$LoadTransferHeaderFailedStateImplCopyWith(
          _$LoadTransferHeaderFailedStateImpl value,
          $Res Function(_$LoadTransferHeaderFailedStateImpl) then) =
      __$$LoadTransferHeaderFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadTransferHeaderFailedStateImplCopyWithImpl<$Res>
    extends _$LoadTransferHeaderStateCopyWithImpl<$Res,
        _$LoadTransferHeaderFailedStateImpl>
    implements _$$LoadTransferHeaderFailedStateImplCopyWith<$Res> {
  __$$LoadTransferHeaderFailedStateImplCopyWithImpl(
      _$LoadTransferHeaderFailedStateImpl _value,
      $Res Function(_$LoadTransferHeaderFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadTransferHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadTransferHeaderFailedStateImpl
    implements LoadTransferHeaderFailedState {
  const _$LoadTransferHeaderFailedStateImpl();

  @override
  String toString() {
    return 'LoadTransferHeaderState.loadTransferHeaderFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTransferHeaderFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LoadTransferApprovalHeaderModel>? headers)
        getAllLoadTransferHeadersState,
    required TResult Function() loadTransferHeaderFailedState,
  }) {
    return loadTransferHeaderFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LoadTransferApprovalHeaderModel>? headers)?
        getAllLoadTransferHeadersState,
    TResult? Function()? loadTransferHeaderFailedState,
  }) {
    return loadTransferHeaderFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LoadTransferApprovalHeaderModel>? headers)?
        getAllLoadTransferHeadersState,
    TResult Function()? loadTransferHeaderFailedState,
    required TResult orElse(),
  }) {
    if (loadTransferHeaderFailedState != null) {
      return loadTransferHeaderFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllLoadTransferHeadersState value)
        getAllLoadTransferHeadersState,
    required TResult Function(LoadTransferHeaderFailedState value)
        loadTransferHeaderFailedState,
  }) {
    return loadTransferHeaderFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllLoadTransferHeadersState value)?
        getAllLoadTransferHeadersState,
    TResult? Function(LoadTransferHeaderFailedState value)?
        loadTransferHeaderFailedState,
  }) {
    return loadTransferHeaderFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllLoadTransferHeadersState value)?
        getAllLoadTransferHeadersState,
    TResult Function(LoadTransferHeaderFailedState value)?
        loadTransferHeaderFailedState,
    required TResult orElse(),
  }) {
    if (loadTransferHeaderFailedState != null) {
      return loadTransferHeaderFailedState(this);
    }
    return orElse();
  }
}

abstract class LoadTransferHeaderFailedState
    implements LoadTransferHeaderState {
  const factory LoadTransferHeaderFailedState() =
      _$LoadTransferHeaderFailedStateImpl;
}
