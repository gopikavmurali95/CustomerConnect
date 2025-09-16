// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partial_delivery_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PartialDeliveryHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String mode, String searchQuery)
        getPartialDeliveryEvent,
    required TResult Function() clearPartialDeliveryHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String mode, String searchQuery)?
        getPartialDeliveryEvent,
    TResult? Function()? clearPartialDeliveryHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String mode, String searchQuery)?
        getPartialDeliveryEvent,
    TResult Function()? clearPartialDeliveryHeaderEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPartialDeliveryHeaderEvent value)
        getPartialDeliveryEvent,
    required TResult Function(ClearPartialDeliveryHeaderEvent value)
        clearPartialDeliveryHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPartialDeliveryHeaderEvent value)?
        getPartialDeliveryEvent,
    TResult? Function(ClearPartialDeliveryHeaderEvent value)?
        clearPartialDeliveryHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPartialDeliveryHeaderEvent value)?
        getPartialDeliveryEvent,
    TResult Function(ClearPartialDeliveryHeaderEvent value)?
        clearPartialDeliveryHeaderEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartialDeliveryHeaderEventCopyWith<$Res> {
  factory $PartialDeliveryHeaderEventCopyWith(PartialDeliveryHeaderEvent value,
          $Res Function(PartialDeliveryHeaderEvent) then) =
      _$PartialDeliveryHeaderEventCopyWithImpl<$Res,
          PartialDeliveryHeaderEvent>;
}

/// @nodoc
class _$PartialDeliveryHeaderEventCopyWithImpl<$Res,
        $Val extends PartialDeliveryHeaderEvent>
    implements $PartialDeliveryHeaderEventCopyWith<$Res> {
  _$PartialDeliveryHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartialDeliveryHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetPartialDeliveryHeaderEventImplCopyWith<$Res> {
  factory _$$GetPartialDeliveryHeaderEventImplCopyWith(
          _$GetPartialDeliveryHeaderEventImpl value,
          $Res Function(_$GetPartialDeliveryHeaderEventImpl) then) =
      __$$GetPartialDeliveryHeaderEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userID, String mode, String searchQuery});
}

/// @nodoc
class __$$GetPartialDeliveryHeaderEventImplCopyWithImpl<$Res>
    extends _$PartialDeliveryHeaderEventCopyWithImpl<$Res,
        _$GetPartialDeliveryHeaderEventImpl>
    implements _$$GetPartialDeliveryHeaderEventImplCopyWith<$Res> {
  __$$GetPartialDeliveryHeaderEventImplCopyWithImpl(
      _$GetPartialDeliveryHeaderEventImpl _value,
      $Res Function(_$GetPartialDeliveryHeaderEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartialDeliveryHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? mode = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetPartialDeliveryHeaderEventImpl(
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

class _$GetPartialDeliveryHeaderEventImpl
    implements GetPartialDeliveryHeaderEvent {
  const _$GetPartialDeliveryHeaderEventImpl(
      {required this.userID, required this.mode, required this.searchQuery});

  @override
  final String userID;
  @override
  final String mode;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'PartialDeliveryHeaderEvent.getPartialDeliveryEvent(userID: $userID, mode: $mode, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPartialDeliveryHeaderEventImpl &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userID, mode, searchQuery);

  /// Create a copy of PartialDeliveryHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPartialDeliveryHeaderEventImplCopyWith<
          _$GetPartialDeliveryHeaderEventImpl>
      get copyWith => __$$GetPartialDeliveryHeaderEventImplCopyWithImpl<
          _$GetPartialDeliveryHeaderEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String mode, String searchQuery)
        getPartialDeliveryEvent,
    required TResult Function() clearPartialDeliveryHeaderEvent,
  }) {
    return getPartialDeliveryEvent(userID, mode, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String mode, String searchQuery)?
        getPartialDeliveryEvent,
    TResult? Function()? clearPartialDeliveryHeaderEvent,
  }) {
    return getPartialDeliveryEvent?.call(userID, mode, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String mode, String searchQuery)?
        getPartialDeliveryEvent,
    TResult Function()? clearPartialDeliveryHeaderEvent,
    required TResult orElse(),
  }) {
    if (getPartialDeliveryEvent != null) {
      return getPartialDeliveryEvent(userID, mode, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPartialDeliveryHeaderEvent value)
        getPartialDeliveryEvent,
    required TResult Function(ClearPartialDeliveryHeaderEvent value)
        clearPartialDeliveryHeaderEvent,
  }) {
    return getPartialDeliveryEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPartialDeliveryHeaderEvent value)?
        getPartialDeliveryEvent,
    TResult? Function(ClearPartialDeliveryHeaderEvent value)?
        clearPartialDeliveryHeaderEvent,
  }) {
    return getPartialDeliveryEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPartialDeliveryHeaderEvent value)?
        getPartialDeliveryEvent,
    TResult Function(ClearPartialDeliveryHeaderEvent value)?
        clearPartialDeliveryHeaderEvent,
    required TResult orElse(),
  }) {
    if (getPartialDeliveryEvent != null) {
      return getPartialDeliveryEvent(this);
    }
    return orElse();
  }
}

abstract class GetPartialDeliveryHeaderEvent
    implements PartialDeliveryHeaderEvent {
  const factory GetPartialDeliveryHeaderEvent(
      {required final String userID,
      required final String mode,
      required final String searchQuery}) = _$GetPartialDeliveryHeaderEventImpl;

  String get userID;
  String get mode;
  String get searchQuery;

  /// Create a copy of PartialDeliveryHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPartialDeliveryHeaderEventImplCopyWith<
          _$GetPartialDeliveryHeaderEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearPartialDeliveryHeaderEventImplCopyWith<$Res> {
  factory _$$ClearPartialDeliveryHeaderEventImplCopyWith(
          _$ClearPartialDeliveryHeaderEventImpl value,
          $Res Function(_$ClearPartialDeliveryHeaderEventImpl) then) =
      __$$ClearPartialDeliveryHeaderEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPartialDeliveryHeaderEventImplCopyWithImpl<$Res>
    extends _$PartialDeliveryHeaderEventCopyWithImpl<$Res,
        _$ClearPartialDeliveryHeaderEventImpl>
    implements _$$ClearPartialDeliveryHeaderEventImplCopyWith<$Res> {
  __$$ClearPartialDeliveryHeaderEventImplCopyWithImpl(
      _$ClearPartialDeliveryHeaderEventImpl _value,
      $Res Function(_$ClearPartialDeliveryHeaderEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartialDeliveryHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearPartialDeliveryHeaderEventImpl
    implements ClearPartialDeliveryHeaderEvent {
  const _$ClearPartialDeliveryHeaderEventImpl();

  @override
  String toString() {
    return 'PartialDeliveryHeaderEvent.clearPartialDeliveryHeaderEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearPartialDeliveryHeaderEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String mode, String searchQuery)
        getPartialDeliveryEvent,
    required TResult Function() clearPartialDeliveryHeaderEvent,
  }) {
    return clearPartialDeliveryHeaderEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String mode, String searchQuery)?
        getPartialDeliveryEvent,
    TResult? Function()? clearPartialDeliveryHeaderEvent,
  }) {
    return clearPartialDeliveryHeaderEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String mode, String searchQuery)?
        getPartialDeliveryEvent,
    TResult Function()? clearPartialDeliveryHeaderEvent,
    required TResult orElse(),
  }) {
    if (clearPartialDeliveryHeaderEvent != null) {
      return clearPartialDeliveryHeaderEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPartialDeliveryHeaderEvent value)
        getPartialDeliveryEvent,
    required TResult Function(ClearPartialDeliveryHeaderEvent value)
        clearPartialDeliveryHeaderEvent,
  }) {
    return clearPartialDeliveryHeaderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPartialDeliveryHeaderEvent value)?
        getPartialDeliveryEvent,
    TResult? Function(ClearPartialDeliveryHeaderEvent value)?
        clearPartialDeliveryHeaderEvent,
  }) {
    return clearPartialDeliveryHeaderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPartialDeliveryHeaderEvent value)?
        getPartialDeliveryEvent,
    TResult Function(ClearPartialDeliveryHeaderEvent value)?
        clearPartialDeliveryHeaderEvent,
    required TResult orElse(),
  }) {
    if (clearPartialDeliveryHeaderEvent != null) {
      return clearPartialDeliveryHeaderEvent(this);
    }
    return orElse();
  }
}

abstract class ClearPartialDeliveryHeaderEvent
    implements PartialDeliveryHeaderEvent {
  const factory ClearPartialDeliveryHeaderEvent() =
      _$ClearPartialDeliveryHeaderEventImpl;
}

/// @nodoc
mixin _$PartialDeliveryHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PartialDeliveryHeaderModel>? pDelivey)
        getPartialDeliveryState,
    required TResult Function() getPartialDeliveryFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PartialDeliveryHeaderModel>? pDelivey)?
        getPartialDeliveryState,
    TResult? Function()? getPartialDeliveryFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PartialDeliveryHeaderModel>? pDelivey)?
        getPartialDeliveryState,
    TResult Function()? getPartialDeliveryFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPartialDeliveryState value)
        getPartialDeliveryState,
    required TResult Function(GetPartialDeliveryFailed value)
        getPartialDeliveryFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPartialDeliveryState value)? getPartialDeliveryState,
    TResult? Function(GetPartialDeliveryFailed value)? getPartialDeliveryFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPartialDeliveryState value)? getPartialDeliveryState,
    TResult Function(GetPartialDeliveryFailed value)? getPartialDeliveryFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartialDeliveryHeaderStateCopyWith<$Res> {
  factory $PartialDeliveryHeaderStateCopyWith(PartialDeliveryHeaderState value,
          $Res Function(PartialDeliveryHeaderState) then) =
      _$PartialDeliveryHeaderStateCopyWithImpl<$Res,
          PartialDeliveryHeaderState>;
}

/// @nodoc
class _$PartialDeliveryHeaderStateCopyWithImpl<$Res,
        $Val extends PartialDeliveryHeaderState>
    implements $PartialDeliveryHeaderStateCopyWith<$Res> {
  _$PartialDeliveryHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartialDeliveryHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetPartialDeliveryStateImplCopyWith<$Res> {
  factory _$$GetPartialDeliveryStateImplCopyWith(
          _$GetPartialDeliveryStateImpl value,
          $Res Function(_$GetPartialDeliveryStateImpl) then) =
      __$$GetPartialDeliveryStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PartialDeliveryHeaderModel>? pDelivey});
}

/// @nodoc
class __$$GetPartialDeliveryStateImplCopyWithImpl<$Res>
    extends _$PartialDeliveryHeaderStateCopyWithImpl<$Res,
        _$GetPartialDeliveryStateImpl>
    implements _$$GetPartialDeliveryStateImplCopyWith<$Res> {
  __$$GetPartialDeliveryStateImplCopyWithImpl(
      _$GetPartialDeliveryStateImpl _value,
      $Res Function(_$GetPartialDeliveryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartialDeliveryHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pDelivey = freezed,
  }) {
    return _then(_$GetPartialDeliveryStateImpl(
      pDelivey: freezed == pDelivey
          ? _value._pDelivey
          : pDelivey // ignore: cast_nullable_to_non_nullable
              as List<PartialDeliveryHeaderModel>?,
    ));
  }
}

/// @nodoc

class _$GetPartialDeliveryStateImpl implements GetPartialDeliveryState {
  const _$GetPartialDeliveryStateImpl(
      {required final List<PartialDeliveryHeaderModel>? pDelivey})
      : _pDelivey = pDelivey;

  final List<PartialDeliveryHeaderModel>? _pDelivey;
  @override
  List<PartialDeliveryHeaderModel>? get pDelivey {
    final value = _pDelivey;
    if (value == null) return null;
    if (_pDelivey is EqualUnmodifiableListView) return _pDelivey;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PartialDeliveryHeaderState.getPartialDeliveryState(pDelivey: $pDelivey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPartialDeliveryStateImpl &&
            const DeepCollectionEquality().equals(other._pDelivey, _pDelivey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pDelivey));

  /// Create a copy of PartialDeliveryHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPartialDeliveryStateImplCopyWith<_$GetPartialDeliveryStateImpl>
      get copyWith => __$$GetPartialDeliveryStateImplCopyWithImpl<
          _$GetPartialDeliveryStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PartialDeliveryHeaderModel>? pDelivey)
        getPartialDeliveryState,
    required TResult Function() getPartialDeliveryFailed,
  }) {
    return getPartialDeliveryState(pDelivey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PartialDeliveryHeaderModel>? pDelivey)?
        getPartialDeliveryState,
    TResult? Function()? getPartialDeliveryFailed,
  }) {
    return getPartialDeliveryState?.call(pDelivey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PartialDeliveryHeaderModel>? pDelivey)?
        getPartialDeliveryState,
    TResult Function()? getPartialDeliveryFailed,
    required TResult orElse(),
  }) {
    if (getPartialDeliveryState != null) {
      return getPartialDeliveryState(pDelivey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPartialDeliveryState value)
        getPartialDeliveryState,
    required TResult Function(GetPartialDeliveryFailed value)
        getPartialDeliveryFailed,
  }) {
    return getPartialDeliveryState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPartialDeliveryState value)? getPartialDeliveryState,
    TResult? Function(GetPartialDeliveryFailed value)? getPartialDeliveryFailed,
  }) {
    return getPartialDeliveryState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPartialDeliveryState value)? getPartialDeliveryState,
    TResult Function(GetPartialDeliveryFailed value)? getPartialDeliveryFailed,
    required TResult orElse(),
  }) {
    if (getPartialDeliveryState != null) {
      return getPartialDeliveryState(this);
    }
    return orElse();
  }
}

abstract class GetPartialDeliveryState implements PartialDeliveryHeaderState {
  const factory GetPartialDeliveryState(
          {required final List<PartialDeliveryHeaderModel>? pDelivey}) =
      _$GetPartialDeliveryStateImpl;

  List<PartialDeliveryHeaderModel>? get pDelivey;

  /// Create a copy of PartialDeliveryHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPartialDeliveryStateImplCopyWith<_$GetPartialDeliveryStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPartialDeliveryFailedImplCopyWith<$Res> {
  factory _$$GetPartialDeliveryFailedImplCopyWith(
          _$GetPartialDeliveryFailedImpl value,
          $Res Function(_$GetPartialDeliveryFailedImpl) then) =
      __$$GetPartialDeliveryFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPartialDeliveryFailedImplCopyWithImpl<$Res>
    extends _$PartialDeliveryHeaderStateCopyWithImpl<$Res,
        _$GetPartialDeliveryFailedImpl>
    implements _$$GetPartialDeliveryFailedImplCopyWith<$Res> {
  __$$GetPartialDeliveryFailedImplCopyWithImpl(
      _$GetPartialDeliveryFailedImpl _value,
      $Res Function(_$GetPartialDeliveryFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartialDeliveryHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetPartialDeliveryFailedImpl implements GetPartialDeliveryFailed {
  const _$GetPartialDeliveryFailedImpl();

  @override
  String toString() {
    return 'PartialDeliveryHeaderState.getPartialDeliveryFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPartialDeliveryFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PartialDeliveryHeaderModel>? pDelivey)
        getPartialDeliveryState,
    required TResult Function() getPartialDeliveryFailed,
  }) {
    return getPartialDeliveryFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PartialDeliveryHeaderModel>? pDelivey)?
        getPartialDeliveryState,
    TResult? Function()? getPartialDeliveryFailed,
  }) {
    return getPartialDeliveryFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PartialDeliveryHeaderModel>? pDelivey)?
        getPartialDeliveryState,
    TResult Function()? getPartialDeliveryFailed,
    required TResult orElse(),
  }) {
    if (getPartialDeliveryFailed != null) {
      return getPartialDeliveryFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPartialDeliveryState value)
        getPartialDeliveryState,
    required TResult Function(GetPartialDeliveryFailed value)
        getPartialDeliveryFailed,
  }) {
    return getPartialDeliveryFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPartialDeliveryState value)? getPartialDeliveryState,
    TResult? Function(GetPartialDeliveryFailed value)? getPartialDeliveryFailed,
  }) {
    return getPartialDeliveryFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPartialDeliveryState value)? getPartialDeliveryState,
    TResult Function(GetPartialDeliveryFailed value)? getPartialDeliveryFailed,
    required TResult orElse(),
  }) {
    if (getPartialDeliveryFailed != null) {
      return getPartialDeliveryFailed(this);
    }
    return orElse();
  }
}

abstract class GetPartialDeliveryFailed implements PartialDeliveryHeaderState {
  const factory GetPartialDeliveryFailed() = _$GetPartialDeliveryFailedImpl;
}
