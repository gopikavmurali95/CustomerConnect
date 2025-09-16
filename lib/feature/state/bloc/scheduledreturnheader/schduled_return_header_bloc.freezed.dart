// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schduled_return_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SchduledReturnHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String mode, String searchQuery)
        getAllScheduledReturnHeadersEvent,
    required TResult Function() clearScheduledReturnHeadersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String mode, String searchQuery)?
        getAllScheduledReturnHeadersEvent,
    TResult? Function()? clearScheduledReturnHeadersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String mode, String searchQuery)?
        getAllScheduledReturnHeadersEvent,
    TResult Function()? clearScheduledReturnHeadersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllScheduledReturnHeadersEvent value)
        getAllScheduledReturnHeadersEvent,
    required TResult Function(ClearScheduledReturnHeadersEvent value)
        clearScheduledReturnHeadersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllScheduledReturnHeadersEvent value)?
        getAllScheduledReturnHeadersEvent,
    TResult? Function(ClearScheduledReturnHeadersEvent value)?
        clearScheduledReturnHeadersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllScheduledReturnHeadersEvent value)?
        getAllScheduledReturnHeadersEvent,
    TResult Function(ClearScheduledReturnHeadersEvent value)?
        clearScheduledReturnHeadersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchduledReturnHeaderEventCopyWith<$Res> {
  factory $SchduledReturnHeaderEventCopyWith(SchduledReturnHeaderEvent value,
          $Res Function(SchduledReturnHeaderEvent) then) =
      _$SchduledReturnHeaderEventCopyWithImpl<$Res, SchduledReturnHeaderEvent>;
}

/// @nodoc
class _$SchduledReturnHeaderEventCopyWithImpl<$Res,
        $Val extends SchduledReturnHeaderEvent>
    implements $SchduledReturnHeaderEventCopyWith<$Res> {
  _$SchduledReturnHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SchduledReturnHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAllScheduledReturnHeadersEventImplCopyWith<$Res> {
  factory _$$GetAllScheduledReturnHeadersEventImplCopyWith(
          _$GetAllScheduledReturnHeadersEventImpl value,
          $Res Function(_$GetAllScheduledReturnHeadersEventImpl) then) =
      __$$GetAllScheduledReturnHeadersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userID, String mode, String searchQuery});
}

/// @nodoc
class __$$GetAllScheduledReturnHeadersEventImplCopyWithImpl<$Res>
    extends _$SchduledReturnHeaderEventCopyWithImpl<$Res,
        _$GetAllScheduledReturnHeadersEventImpl>
    implements _$$GetAllScheduledReturnHeadersEventImplCopyWith<$Res> {
  __$$GetAllScheduledReturnHeadersEventImplCopyWithImpl(
      _$GetAllScheduledReturnHeadersEventImpl _value,
      $Res Function(_$GetAllScheduledReturnHeadersEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchduledReturnHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? mode = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetAllScheduledReturnHeadersEventImpl(
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

class _$GetAllScheduledReturnHeadersEventImpl
    implements GetAllScheduledReturnHeadersEvent {
  const _$GetAllScheduledReturnHeadersEventImpl(
      {required this.userID, required this.mode, required this.searchQuery});

  @override
  final String userID;
  @override
  final String mode;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'SchduledReturnHeaderEvent.getAllScheduledReturnHeadersEvent(userID: $userID, mode: $mode, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllScheduledReturnHeadersEventImpl &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userID, mode, searchQuery);

  /// Create a copy of SchduledReturnHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllScheduledReturnHeadersEventImplCopyWith<
          _$GetAllScheduledReturnHeadersEventImpl>
      get copyWith => __$$GetAllScheduledReturnHeadersEventImplCopyWithImpl<
          _$GetAllScheduledReturnHeadersEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String mode, String searchQuery)
        getAllScheduledReturnHeadersEvent,
    required TResult Function() clearScheduledReturnHeadersEvent,
  }) {
    return getAllScheduledReturnHeadersEvent(userID, mode, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String mode, String searchQuery)?
        getAllScheduledReturnHeadersEvent,
    TResult? Function()? clearScheduledReturnHeadersEvent,
  }) {
    return getAllScheduledReturnHeadersEvent?.call(userID, mode, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String mode, String searchQuery)?
        getAllScheduledReturnHeadersEvent,
    TResult Function()? clearScheduledReturnHeadersEvent,
    required TResult orElse(),
  }) {
    if (getAllScheduledReturnHeadersEvent != null) {
      return getAllScheduledReturnHeadersEvent(userID, mode, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllScheduledReturnHeadersEvent value)
        getAllScheduledReturnHeadersEvent,
    required TResult Function(ClearScheduledReturnHeadersEvent value)
        clearScheduledReturnHeadersEvent,
  }) {
    return getAllScheduledReturnHeadersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllScheduledReturnHeadersEvent value)?
        getAllScheduledReturnHeadersEvent,
    TResult? Function(ClearScheduledReturnHeadersEvent value)?
        clearScheduledReturnHeadersEvent,
  }) {
    return getAllScheduledReturnHeadersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllScheduledReturnHeadersEvent value)?
        getAllScheduledReturnHeadersEvent,
    TResult Function(ClearScheduledReturnHeadersEvent value)?
        clearScheduledReturnHeadersEvent,
    required TResult orElse(),
  }) {
    if (getAllScheduledReturnHeadersEvent != null) {
      return getAllScheduledReturnHeadersEvent(this);
    }
    return orElse();
  }
}

abstract class GetAllScheduledReturnHeadersEvent
    implements SchduledReturnHeaderEvent {
  const factory GetAllScheduledReturnHeadersEvent(
          {required final String userID,
          required final String mode,
          required final String searchQuery}) =
      _$GetAllScheduledReturnHeadersEventImpl;

  String get userID;
  String get mode;
  String get searchQuery;

  /// Create a copy of SchduledReturnHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllScheduledReturnHeadersEventImplCopyWith<
          _$GetAllScheduledReturnHeadersEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearScheduledReturnHeadersEventImplCopyWith<$Res> {
  factory _$$ClearScheduledReturnHeadersEventImplCopyWith(
          _$ClearScheduledReturnHeadersEventImpl value,
          $Res Function(_$ClearScheduledReturnHeadersEventImpl) then) =
      __$$ClearScheduledReturnHeadersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearScheduledReturnHeadersEventImplCopyWithImpl<$Res>
    extends _$SchduledReturnHeaderEventCopyWithImpl<$Res,
        _$ClearScheduledReturnHeadersEventImpl>
    implements _$$ClearScheduledReturnHeadersEventImplCopyWith<$Res> {
  __$$ClearScheduledReturnHeadersEventImplCopyWithImpl(
      _$ClearScheduledReturnHeadersEventImpl _value,
      $Res Function(_$ClearScheduledReturnHeadersEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchduledReturnHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearScheduledReturnHeadersEventImpl
    implements ClearScheduledReturnHeadersEvent {
  const _$ClearScheduledReturnHeadersEventImpl();

  @override
  String toString() {
    return 'SchduledReturnHeaderEvent.clearScheduledReturnHeadersEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearScheduledReturnHeadersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String mode, String searchQuery)
        getAllScheduledReturnHeadersEvent,
    required TResult Function() clearScheduledReturnHeadersEvent,
  }) {
    return clearScheduledReturnHeadersEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String mode, String searchQuery)?
        getAllScheduledReturnHeadersEvent,
    TResult? Function()? clearScheduledReturnHeadersEvent,
  }) {
    return clearScheduledReturnHeadersEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String mode, String searchQuery)?
        getAllScheduledReturnHeadersEvent,
    TResult Function()? clearScheduledReturnHeadersEvent,
    required TResult orElse(),
  }) {
    if (clearScheduledReturnHeadersEvent != null) {
      return clearScheduledReturnHeadersEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllScheduledReturnHeadersEvent value)
        getAllScheduledReturnHeadersEvent,
    required TResult Function(ClearScheduledReturnHeadersEvent value)
        clearScheduledReturnHeadersEvent,
  }) {
    return clearScheduledReturnHeadersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllScheduledReturnHeadersEvent value)?
        getAllScheduledReturnHeadersEvent,
    TResult? Function(ClearScheduledReturnHeadersEvent value)?
        clearScheduledReturnHeadersEvent,
  }) {
    return clearScheduledReturnHeadersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllScheduledReturnHeadersEvent value)?
        getAllScheduledReturnHeadersEvent,
    TResult Function(ClearScheduledReturnHeadersEvent value)?
        clearScheduledReturnHeadersEvent,
    required TResult orElse(),
  }) {
    if (clearScheduledReturnHeadersEvent != null) {
      return clearScheduledReturnHeadersEvent(this);
    }
    return orElse();
  }
}

abstract class ClearScheduledReturnHeadersEvent
    implements SchduledReturnHeaderEvent {
  const factory ClearScheduledReturnHeadersEvent() =
      _$ClearScheduledReturnHeadersEventImpl;
}

/// @nodoc
mixin _$SchduledReturnHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SheduledReturnHeaderModel>? headers)
        getScheduledReturnHeadersState,
    required TResult Function() scheduledRetunrHEadersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SheduledReturnHeaderModel>? headers)?
        getScheduledReturnHeadersState,
    TResult? Function()? scheduledRetunrHEadersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SheduledReturnHeaderModel>? headers)?
        getScheduledReturnHeadersState,
    TResult Function()? scheduledRetunrHEadersFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetScheduledReturnHeadersState value)
        getScheduledReturnHeadersState,
    required TResult Function(ScheduledRetunrHEadersFailedState value)
        scheduledRetunrHEadersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetScheduledReturnHeadersState value)?
        getScheduledReturnHeadersState,
    TResult? Function(ScheduledRetunrHEadersFailedState value)?
        scheduledRetunrHEadersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetScheduledReturnHeadersState value)?
        getScheduledReturnHeadersState,
    TResult Function(ScheduledRetunrHEadersFailedState value)?
        scheduledRetunrHEadersFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchduledReturnHeaderStateCopyWith<$Res> {
  factory $SchduledReturnHeaderStateCopyWith(SchduledReturnHeaderState value,
          $Res Function(SchduledReturnHeaderState) then) =
      _$SchduledReturnHeaderStateCopyWithImpl<$Res, SchduledReturnHeaderState>;
}

/// @nodoc
class _$SchduledReturnHeaderStateCopyWithImpl<$Res,
        $Val extends SchduledReturnHeaderState>
    implements $SchduledReturnHeaderStateCopyWith<$Res> {
  _$SchduledReturnHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SchduledReturnHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetScheduledReturnHeadersStateImplCopyWith<$Res> {
  factory _$$GetScheduledReturnHeadersStateImplCopyWith(
          _$GetScheduledReturnHeadersStateImpl value,
          $Res Function(_$GetScheduledReturnHeadersStateImpl) then) =
      __$$GetScheduledReturnHeadersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SheduledReturnHeaderModel>? headers});
}

/// @nodoc
class __$$GetScheduledReturnHeadersStateImplCopyWithImpl<$Res>
    extends _$SchduledReturnHeaderStateCopyWithImpl<$Res,
        _$GetScheduledReturnHeadersStateImpl>
    implements _$$GetScheduledReturnHeadersStateImplCopyWith<$Res> {
  __$$GetScheduledReturnHeadersStateImplCopyWithImpl(
      _$GetScheduledReturnHeadersStateImpl _value,
      $Res Function(_$GetScheduledReturnHeadersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchduledReturnHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_$GetScheduledReturnHeadersStateImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<SheduledReturnHeaderModel>?,
    ));
  }
}

/// @nodoc

class _$GetScheduledReturnHeadersStateImpl
    implements GetScheduledReturnHeadersState {
  const _$GetScheduledReturnHeadersStateImpl(
      {required final List<SheduledReturnHeaderModel>? headers})
      : _headers = headers;

  final List<SheduledReturnHeaderModel>? _headers;
  @override
  List<SheduledReturnHeaderModel>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SchduledReturnHeaderState.getScheduledReturnHeadersState(headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetScheduledReturnHeadersStateImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headers));

  /// Create a copy of SchduledReturnHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetScheduledReturnHeadersStateImplCopyWith<
          _$GetScheduledReturnHeadersStateImpl>
      get copyWith => __$$GetScheduledReturnHeadersStateImplCopyWithImpl<
          _$GetScheduledReturnHeadersStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SheduledReturnHeaderModel>? headers)
        getScheduledReturnHeadersState,
    required TResult Function() scheduledRetunrHEadersFailedState,
  }) {
    return getScheduledReturnHeadersState(headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SheduledReturnHeaderModel>? headers)?
        getScheduledReturnHeadersState,
    TResult? Function()? scheduledRetunrHEadersFailedState,
  }) {
    return getScheduledReturnHeadersState?.call(headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SheduledReturnHeaderModel>? headers)?
        getScheduledReturnHeadersState,
    TResult Function()? scheduledRetunrHEadersFailedState,
    required TResult orElse(),
  }) {
    if (getScheduledReturnHeadersState != null) {
      return getScheduledReturnHeadersState(headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetScheduledReturnHeadersState value)
        getScheduledReturnHeadersState,
    required TResult Function(ScheduledRetunrHEadersFailedState value)
        scheduledRetunrHEadersFailedState,
  }) {
    return getScheduledReturnHeadersState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetScheduledReturnHeadersState value)?
        getScheduledReturnHeadersState,
    TResult? Function(ScheduledRetunrHEadersFailedState value)?
        scheduledRetunrHEadersFailedState,
  }) {
    return getScheduledReturnHeadersState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetScheduledReturnHeadersState value)?
        getScheduledReturnHeadersState,
    TResult Function(ScheduledRetunrHEadersFailedState value)?
        scheduledRetunrHEadersFailedState,
    required TResult orElse(),
  }) {
    if (getScheduledReturnHeadersState != null) {
      return getScheduledReturnHeadersState(this);
    }
    return orElse();
  }
}

abstract class GetScheduledReturnHeadersState
    implements SchduledReturnHeaderState {
  const factory GetScheduledReturnHeadersState(
          {required final List<SheduledReturnHeaderModel>? headers}) =
      _$GetScheduledReturnHeadersStateImpl;

  List<SheduledReturnHeaderModel>? get headers;

  /// Create a copy of SchduledReturnHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetScheduledReturnHeadersStateImplCopyWith<
          _$GetScheduledReturnHeadersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduledRetunrHEadersFailedStateImplCopyWith<$Res> {
  factory _$$ScheduledRetunrHEadersFailedStateImplCopyWith(
          _$ScheduledRetunrHEadersFailedStateImpl value,
          $Res Function(_$ScheduledRetunrHEadersFailedStateImpl) then) =
      __$$ScheduledRetunrHEadersFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScheduledRetunrHEadersFailedStateImplCopyWithImpl<$Res>
    extends _$SchduledReturnHeaderStateCopyWithImpl<$Res,
        _$ScheduledRetunrHEadersFailedStateImpl>
    implements _$$ScheduledRetunrHEadersFailedStateImplCopyWith<$Res> {
  __$$ScheduledRetunrHEadersFailedStateImplCopyWithImpl(
      _$ScheduledRetunrHEadersFailedStateImpl _value,
      $Res Function(_$ScheduledRetunrHEadersFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchduledReturnHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ScheduledRetunrHEadersFailedStateImpl
    implements ScheduledRetunrHEadersFailedState {
  const _$ScheduledRetunrHEadersFailedStateImpl();

  @override
  String toString() {
    return 'SchduledReturnHeaderState.scheduledRetunrHEadersFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduledRetunrHEadersFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SheduledReturnHeaderModel>? headers)
        getScheduledReturnHeadersState,
    required TResult Function() scheduledRetunrHEadersFailedState,
  }) {
    return scheduledRetunrHEadersFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SheduledReturnHeaderModel>? headers)?
        getScheduledReturnHeadersState,
    TResult? Function()? scheduledRetunrHEadersFailedState,
  }) {
    return scheduledRetunrHEadersFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SheduledReturnHeaderModel>? headers)?
        getScheduledReturnHeadersState,
    TResult Function()? scheduledRetunrHEadersFailedState,
    required TResult orElse(),
  }) {
    if (scheduledRetunrHEadersFailedState != null) {
      return scheduledRetunrHEadersFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetScheduledReturnHeadersState value)
        getScheduledReturnHeadersState,
    required TResult Function(ScheduledRetunrHEadersFailedState value)
        scheduledRetunrHEadersFailedState,
  }) {
    return scheduledRetunrHEadersFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetScheduledReturnHeadersState value)?
        getScheduledReturnHeadersState,
    TResult? Function(ScheduledRetunrHEadersFailedState value)?
        scheduledRetunrHEadersFailedState,
  }) {
    return scheduledRetunrHEadersFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetScheduledReturnHeadersState value)?
        getScheduledReturnHeadersState,
    TResult Function(ScheduledRetunrHEadersFailedState value)?
        scheduledRetunrHEadersFailedState,
    required TResult orElse(),
  }) {
    if (scheduledRetunrHEadersFailedState != null) {
      return scheduledRetunrHEadersFailedState(this);
    }
    return orElse();
  }
}

abstract class ScheduledRetunrHEadersFailedState
    implements SchduledReturnHeaderState {
  const factory ScheduledRetunrHEadersFailedState() =
      _$ScheduledRetunrHEadersFailedStateImpl;
}
