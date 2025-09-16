// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_reconfirm_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InventoryReconfirmDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqID, String searchQuery)
        getInventoryReconfirmDetailEvent,
    required TResult Function() clearInventoryReconfirmDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqID, String searchQuery)?
        getInventoryReconfirmDetailEvent,
    TResult? Function()? clearInventoryReconfirmDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqID, String searchQuery)?
        getInventoryReconfirmDetailEvent,
    TResult Function()? clearInventoryReconfirmDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInventoryReconfirmDetailEvent value)
        getInventoryReconfirmDetailEvent,
    required TResult Function(ClearInventoryReconfirmDetailEvent value)
        clearInventoryReconfirmDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInventoryReconfirmDetailEvent value)?
        getInventoryReconfirmDetailEvent,
    TResult? Function(ClearInventoryReconfirmDetailEvent value)?
        clearInventoryReconfirmDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInventoryReconfirmDetailEvent value)?
        getInventoryReconfirmDetailEvent,
    TResult Function(ClearInventoryReconfirmDetailEvent value)?
        clearInventoryReconfirmDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryReconfirmDetailEventCopyWith<$Res> {
  factory $InventoryReconfirmDetailEventCopyWith(
          InventoryReconfirmDetailEvent value,
          $Res Function(InventoryReconfirmDetailEvent) then) =
      _$InventoryReconfirmDetailEventCopyWithImpl<$Res,
          InventoryReconfirmDetailEvent>;
}

/// @nodoc
class _$InventoryReconfirmDetailEventCopyWithImpl<$Res,
        $Val extends InventoryReconfirmDetailEvent>
    implements $InventoryReconfirmDetailEventCopyWith<$Res> {
  _$InventoryReconfirmDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InventoryReconfirmDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetInventoryReconfirmDetailEventImplCopyWith<$Res> {
  factory _$$GetInventoryReconfirmDetailEventImplCopyWith(
          _$GetInventoryReconfirmDetailEventImpl value,
          $Res Function(_$GetInventoryReconfirmDetailEventImpl) then) =
      __$$GetInventoryReconfirmDetailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reqID, String searchQuery});
}

/// @nodoc
class __$$GetInventoryReconfirmDetailEventImplCopyWithImpl<$Res>
    extends _$InventoryReconfirmDetailEventCopyWithImpl<$Res,
        _$GetInventoryReconfirmDetailEventImpl>
    implements _$$GetInventoryReconfirmDetailEventImplCopyWith<$Res> {
  __$$GetInventoryReconfirmDetailEventImplCopyWithImpl(
      _$GetInventoryReconfirmDetailEventImpl _value,
      $Res Function(_$GetInventoryReconfirmDetailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of InventoryReconfirmDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reqID = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetInventoryReconfirmDetailEventImpl(
      reqID: null == reqID
          ? _value.reqID
          : reqID // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetInventoryReconfirmDetailEventImpl
    implements GetInventoryReconfirmDetailEvent {
  const _$GetInventoryReconfirmDetailEventImpl(
      {required this.reqID, required this.searchQuery});

  @override
  final String reqID;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'InventoryReconfirmDetailEvent.getInventoryReconfirmDetailEvent(reqID: $reqID, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInventoryReconfirmDetailEventImpl &&
            (identical(other.reqID, reqID) || other.reqID == reqID) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reqID, searchQuery);

  /// Create a copy of InventoryReconfirmDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInventoryReconfirmDetailEventImplCopyWith<
          _$GetInventoryReconfirmDetailEventImpl>
      get copyWith => __$$GetInventoryReconfirmDetailEventImplCopyWithImpl<
          _$GetInventoryReconfirmDetailEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqID, String searchQuery)
        getInventoryReconfirmDetailEvent,
    required TResult Function() clearInventoryReconfirmDetailEvent,
  }) {
    return getInventoryReconfirmDetailEvent(reqID, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqID, String searchQuery)?
        getInventoryReconfirmDetailEvent,
    TResult? Function()? clearInventoryReconfirmDetailEvent,
  }) {
    return getInventoryReconfirmDetailEvent?.call(reqID, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqID, String searchQuery)?
        getInventoryReconfirmDetailEvent,
    TResult Function()? clearInventoryReconfirmDetailEvent,
    required TResult orElse(),
  }) {
    if (getInventoryReconfirmDetailEvent != null) {
      return getInventoryReconfirmDetailEvent(reqID, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInventoryReconfirmDetailEvent value)
        getInventoryReconfirmDetailEvent,
    required TResult Function(ClearInventoryReconfirmDetailEvent value)
        clearInventoryReconfirmDetailEvent,
  }) {
    return getInventoryReconfirmDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInventoryReconfirmDetailEvent value)?
        getInventoryReconfirmDetailEvent,
    TResult? Function(ClearInventoryReconfirmDetailEvent value)?
        clearInventoryReconfirmDetailEvent,
  }) {
    return getInventoryReconfirmDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInventoryReconfirmDetailEvent value)?
        getInventoryReconfirmDetailEvent,
    TResult Function(ClearInventoryReconfirmDetailEvent value)?
        clearInventoryReconfirmDetailEvent,
    required TResult orElse(),
  }) {
    if (getInventoryReconfirmDetailEvent != null) {
      return getInventoryReconfirmDetailEvent(this);
    }
    return orElse();
  }
}

abstract class GetInventoryReconfirmDetailEvent
    implements InventoryReconfirmDetailEvent {
  const factory GetInventoryReconfirmDetailEvent(
          {required final String reqID, required final String searchQuery}) =
      _$GetInventoryReconfirmDetailEventImpl;

  String get reqID;
  String get searchQuery;

  /// Create a copy of InventoryReconfirmDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetInventoryReconfirmDetailEventImplCopyWith<
          _$GetInventoryReconfirmDetailEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearInventoryReconfirmDetailEventImplCopyWith<$Res> {
  factory _$$ClearInventoryReconfirmDetailEventImplCopyWith(
          _$ClearInventoryReconfirmDetailEventImpl value,
          $Res Function(_$ClearInventoryReconfirmDetailEventImpl) then) =
      __$$ClearInventoryReconfirmDetailEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearInventoryReconfirmDetailEventImplCopyWithImpl<$Res>
    extends _$InventoryReconfirmDetailEventCopyWithImpl<$Res,
        _$ClearInventoryReconfirmDetailEventImpl>
    implements _$$ClearInventoryReconfirmDetailEventImplCopyWith<$Res> {
  __$$ClearInventoryReconfirmDetailEventImplCopyWithImpl(
      _$ClearInventoryReconfirmDetailEventImpl _value,
      $Res Function(_$ClearInventoryReconfirmDetailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of InventoryReconfirmDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearInventoryReconfirmDetailEventImpl
    implements ClearInventoryReconfirmDetailEvent {
  const _$ClearInventoryReconfirmDetailEventImpl();

  @override
  String toString() {
    return 'InventoryReconfirmDetailEvent.clearInventoryReconfirmDetailEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearInventoryReconfirmDetailEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqID, String searchQuery)
        getInventoryReconfirmDetailEvent,
    required TResult Function() clearInventoryReconfirmDetailEvent,
  }) {
    return clearInventoryReconfirmDetailEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqID, String searchQuery)?
        getInventoryReconfirmDetailEvent,
    TResult? Function()? clearInventoryReconfirmDetailEvent,
  }) {
    return clearInventoryReconfirmDetailEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqID, String searchQuery)?
        getInventoryReconfirmDetailEvent,
    TResult Function()? clearInventoryReconfirmDetailEvent,
    required TResult orElse(),
  }) {
    if (clearInventoryReconfirmDetailEvent != null) {
      return clearInventoryReconfirmDetailEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInventoryReconfirmDetailEvent value)
        getInventoryReconfirmDetailEvent,
    required TResult Function(ClearInventoryReconfirmDetailEvent value)
        clearInventoryReconfirmDetailEvent,
  }) {
    return clearInventoryReconfirmDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInventoryReconfirmDetailEvent value)?
        getInventoryReconfirmDetailEvent,
    TResult? Function(ClearInventoryReconfirmDetailEvent value)?
        clearInventoryReconfirmDetailEvent,
  }) {
    return clearInventoryReconfirmDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInventoryReconfirmDetailEvent value)?
        getInventoryReconfirmDetailEvent,
    TResult Function(ClearInventoryReconfirmDetailEvent value)?
        clearInventoryReconfirmDetailEvent,
    required TResult orElse(),
  }) {
    if (clearInventoryReconfirmDetailEvent != null) {
      return clearInventoryReconfirmDetailEvent(this);
    }
    return orElse();
  }
}

abstract class ClearInventoryReconfirmDetailEvent
    implements InventoryReconfirmDetailEvent {
  const factory ClearInventoryReconfirmDetailEvent() =
      _$ClearInventoryReconfirmDetailEventImpl;
}

/// @nodoc
mixin _$InventoryReconfirmDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<InventoryReconfirmDetailModel>? details)
        getInventoryReconfirmDetailState,
    required TResult Function() inventoryReconfirmDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<InventoryReconfirmDetailModel>? details)?
        getInventoryReconfirmDetailState,
    TResult? Function()? inventoryReconfirmDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InventoryReconfirmDetailModel>? details)?
        getInventoryReconfirmDetailState,
    TResult Function()? inventoryReconfirmDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GsetInventoryReconfirmDetailState value)
        getInventoryReconfirmDetailState,
    required TResult Function(InventoryReconfirmDetailFailedState value)
        inventoryReconfirmDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GsetInventoryReconfirmDetailState value)?
        getInventoryReconfirmDetailState,
    TResult? Function(InventoryReconfirmDetailFailedState value)?
        inventoryReconfirmDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GsetInventoryReconfirmDetailState value)?
        getInventoryReconfirmDetailState,
    TResult Function(InventoryReconfirmDetailFailedState value)?
        inventoryReconfirmDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryReconfirmDetailStateCopyWith<$Res> {
  factory $InventoryReconfirmDetailStateCopyWith(
          InventoryReconfirmDetailState value,
          $Res Function(InventoryReconfirmDetailState) then) =
      _$InventoryReconfirmDetailStateCopyWithImpl<$Res,
          InventoryReconfirmDetailState>;
}

/// @nodoc
class _$InventoryReconfirmDetailStateCopyWithImpl<$Res,
        $Val extends InventoryReconfirmDetailState>
    implements $InventoryReconfirmDetailStateCopyWith<$Res> {
  _$InventoryReconfirmDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InventoryReconfirmDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GsetInventoryReconfirmDetailStateImplCopyWith<$Res> {
  factory _$$GsetInventoryReconfirmDetailStateImplCopyWith(
          _$GsetInventoryReconfirmDetailStateImpl value,
          $Res Function(_$GsetInventoryReconfirmDetailStateImpl) then) =
      __$$GsetInventoryReconfirmDetailStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<InventoryReconfirmDetailModel>? details});
}

/// @nodoc
class __$$GsetInventoryReconfirmDetailStateImplCopyWithImpl<$Res>
    extends _$InventoryReconfirmDetailStateCopyWithImpl<$Res,
        _$GsetInventoryReconfirmDetailStateImpl>
    implements _$$GsetInventoryReconfirmDetailStateImplCopyWith<$Res> {
  __$$GsetInventoryReconfirmDetailStateImplCopyWithImpl(
      _$GsetInventoryReconfirmDetailStateImpl _value,
      $Res Function(_$GsetInventoryReconfirmDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InventoryReconfirmDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_$GsetInventoryReconfirmDetailStateImpl(
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<InventoryReconfirmDetailModel>?,
    ));
  }
}

/// @nodoc

class _$GsetInventoryReconfirmDetailStateImpl
    implements GsetInventoryReconfirmDetailState {
  const _$GsetInventoryReconfirmDetailStateImpl(
      {required final List<InventoryReconfirmDetailModel>? details})
      : _details = details;

  final List<InventoryReconfirmDetailModel>? _details;
  @override
  List<InventoryReconfirmDetailModel>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InventoryReconfirmDetailState.getInventoryReconfirmDetailState(details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GsetInventoryReconfirmDetailStateImpl &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_details));

  /// Create a copy of InventoryReconfirmDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GsetInventoryReconfirmDetailStateImplCopyWith<
          _$GsetInventoryReconfirmDetailStateImpl>
      get copyWith => __$$GsetInventoryReconfirmDetailStateImplCopyWithImpl<
          _$GsetInventoryReconfirmDetailStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<InventoryReconfirmDetailModel>? details)
        getInventoryReconfirmDetailState,
    required TResult Function() inventoryReconfirmDetailFailedState,
  }) {
    return getInventoryReconfirmDetailState(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<InventoryReconfirmDetailModel>? details)?
        getInventoryReconfirmDetailState,
    TResult? Function()? inventoryReconfirmDetailFailedState,
  }) {
    return getInventoryReconfirmDetailState?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InventoryReconfirmDetailModel>? details)?
        getInventoryReconfirmDetailState,
    TResult Function()? inventoryReconfirmDetailFailedState,
    required TResult orElse(),
  }) {
    if (getInventoryReconfirmDetailState != null) {
      return getInventoryReconfirmDetailState(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GsetInventoryReconfirmDetailState value)
        getInventoryReconfirmDetailState,
    required TResult Function(InventoryReconfirmDetailFailedState value)
        inventoryReconfirmDetailFailedState,
  }) {
    return getInventoryReconfirmDetailState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GsetInventoryReconfirmDetailState value)?
        getInventoryReconfirmDetailState,
    TResult? Function(InventoryReconfirmDetailFailedState value)?
        inventoryReconfirmDetailFailedState,
  }) {
    return getInventoryReconfirmDetailState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GsetInventoryReconfirmDetailState value)?
        getInventoryReconfirmDetailState,
    TResult Function(InventoryReconfirmDetailFailedState value)?
        inventoryReconfirmDetailFailedState,
    required TResult orElse(),
  }) {
    if (getInventoryReconfirmDetailState != null) {
      return getInventoryReconfirmDetailState(this);
    }
    return orElse();
  }
}

abstract class GsetInventoryReconfirmDetailState
    implements InventoryReconfirmDetailState {
  const factory GsetInventoryReconfirmDetailState(
          {required final List<InventoryReconfirmDetailModel>? details}) =
      _$GsetInventoryReconfirmDetailStateImpl;

  List<InventoryReconfirmDetailModel>? get details;

  /// Create a copy of InventoryReconfirmDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GsetInventoryReconfirmDetailStateImplCopyWith<
          _$GsetInventoryReconfirmDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InventoryReconfirmDetailFailedStateImplCopyWith<$Res> {
  factory _$$InventoryReconfirmDetailFailedStateImplCopyWith(
          _$InventoryReconfirmDetailFailedStateImpl value,
          $Res Function(_$InventoryReconfirmDetailFailedStateImpl) then) =
      __$$InventoryReconfirmDetailFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InventoryReconfirmDetailFailedStateImplCopyWithImpl<$Res>
    extends _$InventoryReconfirmDetailStateCopyWithImpl<$Res,
        _$InventoryReconfirmDetailFailedStateImpl>
    implements _$$InventoryReconfirmDetailFailedStateImplCopyWith<$Res> {
  __$$InventoryReconfirmDetailFailedStateImplCopyWithImpl(
      _$InventoryReconfirmDetailFailedStateImpl _value,
      $Res Function(_$InventoryReconfirmDetailFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InventoryReconfirmDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InventoryReconfirmDetailFailedStateImpl
    implements InventoryReconfirmDetailFailedState {
  const _$InventoryReconfirmDetailFailedStateImpl();

  @override
  String toString() {
    return 'InventoryReconfirmDetailState.inventoryReconfirmDetailFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryReconfirmDetailFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<InventoryReconfirmDetailModel>? details)
        getInventoryReconfirmDetailState,
    required TResult Function() inventoryReconfirmDetailFailedState,
  }) {
    return inventoryReconfirmDetailFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<InventoryReconfirmDetailModel>? details)?
        getInventoryReconfirmDetailState,
    TResult? Function()? inventoryReconfirmDetailFailedState,
  }) {
    return inventoryReconfirmDetailFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InventoryReconfirmDetailModel>? details)?
        getInventoryReconfirmDetailState,
    TResult Function()? inventoryReconfirmDetailFailedState,
    required TResult orElse(),
  }) {
    if (inventoryReconfirmDetailFailedState != null) {
      return inventoryReconfirmDetailFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GsetInventoryReconfirmDetailState value)
        getInventoryReconfirmDetailState,
    required TResult Function(InventoryReconfirmDetailFailedState value)
        inventoryReconfirmDetailFailedState,
  }) {
    return inventoryReconfirmDetailFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GsetInventoryReconfirmDetailState value)?
        getInventoryReconfirmDetailState,
    TResult? Function(InventoryReconfirmDetailFailedState value)?
        inventoryReconfirmDetailFailedState,
  }) {
    return inventoryReconfirmDetailFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GsetInventoryReconfirmDetailState value)?
        getInventoryReconfirmDetailState,
    TResult Function(InventoryReconfirmDetailFailedState value)?
        inventoryReconfirmDetailFailedState,
    required TResult orElse(),
  }) {
    if (inventoryReconfirmDetailFailedState != null) {
      return inventoryReconfirmDetailFailedState(this);
    }
    return orElse();
  }
}

abstract class InventoryReconfirmDetailFailedState
    implements InventoryReconfirmDetailState {
  const factory InventoryReconfirmDetailFailedState() =
      _$InventoryReconfirmDetailFailedStateImpl;
}
