// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'journey_plan_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$JourneyPlanHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String mode, String searchQuery)
        getAllJourneyPlanHeadersEvent,
    required TResult Function() clearJourneyPlanHeadersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String mode, String searchQuery)?
        getAllJourneyPlanHeadersEvent,
    TResult? Function()? clearJourneyPlanHeadersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String mode, String searchQuery)?
        getAllJourneyPlanHeadersEvent,
    TResult Function()? clearJourneyPlanHeadersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllJourneyPlanHeadersEvent value)
        getAllJourneyPlanHeadersEvent,
    required TResult Function(ClearJourneyPlanHeadersEvent value)
        clearJourneyPlanHeadersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllJourneyPlanHeadersEvent value)?
        getAllJourneyPlanHeadersEvent,
    TResult? Function(ClearJourneyPlanHeadersEvent value)?
        clearJourneyPlanHeadersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllJourneyPlanHeadersEvent value)?
        getAllJourneyPlanHeadersEvent,
    TResult Function(ClearJourneyPlanHeadersEvent value)?
        clearJourneyPlanHeadersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JourneyPlanHeaderEventCopyWith<$Res> {
  factory $JourneyPlanHeaderEventCopyWith(JourneyPlanHeaderEvent value,
          $Res Function(JourneyPlanHeaderEvent) then) =
      _$JourneyPlanHeaderEventCopyWithImpl<$Res, JourneyPlanHeaderEvent>;
}

/// @nodoc
class _$JourneyPlanHeaderEventCopyWithImpl<$Res,
        $Val extends JourneyPlanHeaderEvent>
    implements $JourneyPlanHeaderEventCopyWith<$Res> {
  _$JourneyPlanHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JourneyPlanHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAllJourneyPlanHeadersEventImplCopyWith<$Res> {
  factory _$$GetAllJourneyPlanHeadersEventImplCopyWith(
          _$GetAllJourneyPlanHeadersEventImpl value,
          $Res Function(_$GetAllJourneyPlanHeadersEventImpl) then) =
      __$$GetAllJourneyPlanHeadersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userID, String mode, String searchQuery});
}

/// @nodoc
class __$$GetAllJourneyPlanHeadersEventImplCopyWithImpl<$Res>
    extends _$JourneyPlanHeaderEventCopyWithImpl<$Res,
        _$GetAllJourneyPlanHeadersEventImpl>
    implements _$$GetAllJourneyPlanHeadersEventImplCopyWith<$Res> {
  __$$GetAllJourneyPlanHeadersEventImplCopyWithImpl(
      _$GetAllJourneyPlanHeadersEventImpl _value,
      $Res Function(_$GetAllJourneyPlanHeadersEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of JourneyPlanHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? mode = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetAllJourneyPlanHeadersEventImpl(
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

class _$GetAllJourneyPlanHeadersEventImpl
    implements GetAllJourneyPlanHeadersEvent {
  const _$GetAllJourneyPlanHeadersEventImpl(
      {required this.userID, required this.mode, required this.searchQuery});

  @override
  final String userID;
  @override
  final String mode;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'JourneyPlanHeaderEvent.getAllJourneyPlanHeadersEvent(userID: $userID, mode: $mode, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllJourneyPlanHeadersEventImpl &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userID, mode, searchQuery);

  /// Create a copy of JourneyPlanHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllJourneyPlanHeadersEventImplCopyWith<
          _$GetAllJourneyPlanHeadersEventImpl>
      get copyWith => __$$GetAllJourneyPlanHeadersEventImplCopyWithImpl<
          _$GetAllJourneyPlanHeadersEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String mode, String searchQuery)
        getAllJourneyPlanHeadersEvent,
    required TResult Function() clearJourneyPlanHeadersEvent,
  }) {
    return getAllJourneyPlanHeadersEvent(userID, mode, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String mode, String searchQuery)?
        getAllJourneyPlanHeadersEvent,
    TResult? Function()? clearJourneyPlanHeadersEvent,
  }) {
    return getAllJourneyPlanHeadersEvent?.call(userID, mode, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String mode, String searchQuery)?
        getAllJourneyPlanHeadersEvent,
    TResult Function()? clearJourneyPlanHeadersEvent,
    required TResult orElse(),
  }) {
    if (getAllJourneyPlanHeadersEvent != null) {
      return getAllJourneyPlanHeadersEvent(userID, mode, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllJourneyPlanHeadersEvent value)
        getAllJourneyPlanHeadersEvent,
    required TResult Function(ClearJourneyPlanHeadersEvent value)
        clearJourneyPlanHeadersEvent,
  }) {
    return getAllJourneyPlanHeadersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllJourneyPlanHeadersEvent value)?
        getAllJourneyPlanHeadersEvent,
    TResult? Function(ClearJourneyPlanHeadersEvent value)?
        clearJourneyPlanHeadersEvent,
  }) {
    return getAllJourneyPlanHeadersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllJourneyPlanHeadersEvent value)?
        getAllJourneyPlanHeadersEvent,
    TResult Function(ClearJourneyPlanHeadersEvent value)?
        clearJourneyPlanHeadersEvent,
    required TResult orElse(),
  }) {
    if (getAllJourneyPlanHeadersEvent != null) {
      return getAllJourneyPlanHeadersEvent(this);
    }
    return orElse();
  }
}

abstract class GetAllJourneyPlanHeadersEvent implements JourneyPlanHeaderEvent {
  const factory GetAllJourneyPlanHeadersEvent(
      {required final String userID,
      required final String mode,
      required final String searchQuery}) = _$GetAllJourneyPlanHeadersEventImpl;

  String get userID;
  String get mode;
  String get searchQuery;

  /// Create a copy of JourneyPlanHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllJourneyPlanHeadersEventImplCopyWith<
          _$GetAllJourneyPlanHeadersEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearJourneyPlanHeadersEventImplCopyWith<$Res> {
  factory _$$ClearJourneyPlanHeadersEventImplCopyWith(
          _$ClearJourneyPlanHeadersEventImpl value,
          $Res Function(_$ClearJourneyPlanHeadersEventImpl) then) =
      __$$ClearJourneyPlanHeadersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearJourneyPlanHeadersEventImplCopyWithImpl<$Res>
    extends _$JourneyPlanHeaderEventCopyWithImpl<$Res,
        _$ClearJourneyPlanHeadersEventImpl>
    implements _$$ClearJourneyPlanHeadersEventImplCopyWith<$Res> {
  __$$ClearJourneyPlanHeadersEventImplCopyWithImpl(
      _$ClearJourneyPlanHeadersEventImpl _value,
      $Res Function(_$ClearJourneyPlanHeadersEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of JourneyPlanHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearJourneyPlanHeadersEventImpl
    implements ClearJourneyPlanHeadersEvent {
  const _$ClearJourneyPlanHeadersEventImpl();

  @override
  String toString() {
    return 'JourneyPlanHeaderEvent.clearJourneyPlanHeadersEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearJourneyPlanHeadersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String mode, String searchQuery)
        getAllJourneyPlanHeadersEvent,
    required TResult Function() clearJourneyPlanHeadersEvent,
  }) {
    return clearJourneyPlanHeadersEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String mode, String searchQuery)?
        getAllJourneyPlanHeadersEvent,
    TResult? Function()? clearJourneyPlanHeadersEvent,
  }) {
    return clearJourneyPlanHeadersEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String mode, String searchQuery)?
        getAllJourneyPlanHeadersEvent,
    TResult Function()? clearJourneyPlanHeadersEvent,
    required TResult orElse(),
  }) {
    if (clearJourneyPlanHeadersEvent != null) {
      return clearJourneyPlanHeadersEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllJourneyPlanHeadersEvent value)
        getAllJourneyPlanHeadersEvent,
    required TResult Function(ClearJourneyPlanHeadersEvent value)
        clearJourneyPlanHeadersEvent,
  }) {
    return clearJourneyPlanHeadersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllJourneyPlanHeadersEvent value)?
        getAllJourneyPlanHeadersEvent,
    TResult? Function(ClearJourneyPlanHeadersEvent value)?
        clearJourneyPlanHeadersEvent,
  }) {
    return clearJourneyPlanHeadersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllJourneyPlanHeadersEvent value)?
        getAllJourneyPlanHeadersEvent,
    TResult Function(ClearJourneyPlanHeadersEvent value)?
        clearJourneyPlanHeadersEvent,
    required TResult orElse(),
  }) {
    if (clearJourneyPlanHeadersEvent != null) {
      return clearJourneyPlanHeadersEvent(this);
    }
    return orElse();
  }
}

abstract class ClearJourneyPlanHeadersEvent implements JourneyPlanHeaderEvent {
  const factory ClearJourneyPlanHeadersEvent() =
      _$ClearJourneyPlanHeadersEventImpl;
}

/// @nodoc
mixin _$JourneyPlanHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<JourneyPlanHeaderModel>? headers)
        getAllJourneyPlanHeadersState,
    required TResult Function() journeyPlanHeadersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<JourneyPlanHeaderModel>? headers)?
        getAllJourneyPlanHeadersState,
    TResult? Function()? journeyPlanHeadersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<JourneyPlanHeaderModel>? headers)?
        getAllJourneyPlanHeadersState,
    TResult Function()? journeyPlanHeadersFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllJourneyPlanHeadersState value)
        getAllJourneyPlanHeadersState,
    required TResult Function(JourneyPlanHeadersFailedState value)
        journeyPlanHeadersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllJourneyPlanHeadersState value)?
        getAllJourneyPlanHeadersState,
    TResult? Function(JourneyPlanHeadersFailedState value)?
        journeyPlanHeadersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllJourneyPlanHeadersState value)?
        getAllJourneyPlanHeadersState,
    TResult Function(JourneyPlanHeadersFailedState value)?
        journeyPlanHeadersFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JourneyPlanHeaderStateCopyWith<$Res> {
  factory $JourneyPlanHeaderStateCopyWith(JourneyPlanHeaderState value,
          $Res Function(JourneyPlanHeaderState) then) =
      _$JourneyPlanHeaderStateCopyWithImpl<$Res, JourneyPlanHeaderState>;
}

/// @nodoc
class _$JourneyPlanHeaderStateCopyWithImpl<$Res,
        $Val extends JourneyPlanHeaderState>
    implements $JourneyPlanHeaderStateCopyWith<$Res> {
  _$JourneyPlanHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JourneyPlanHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAllJourneyPlanHeadersStateImplCopyWith<$Res> {
  factory _$$GetAllJourneyPlanHeadersStateImplCopyWith(
          _$GetAllJourneyPlanHeadersStateImpl value,
          $Res Function(_$GetAllJourneyPlanHeadersStateImpl) then) =
      __$$GetAllJourneyPlanHeadersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<JourneyPlanHeaderModel>? headers});
}

/// @nodoc
class __$$GetAllJourneyPlanHeadersStateImplCopyWithImpl<$Res>
    extends _$JourneyPlanHeaderStateCopyWithImpl<$Res,
        _$GetAllJourneyPlanHeadersStateImpl>
    implements _$$GetAllJourneyPlanHeadersStateImplCopyWith<$Res> {
  __$$GetAllJourneyPlanHeadersStateImplCopyWithImpl(
      _$GetAllJourneyPlanHeadersStateImpl _value,
      $Res Function(_$GetAllJourneyPlanHeadersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of JourneyPlanHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_$GetAllJourneyPlanHeadersStateImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<JourneyPlanHeaderModel>?,
    ));
  }
}

/// @nodoc

class _$GetAllJourneyPlanHeadersStateImpl
    implements GetAllJourneyPlanHeadersState {
  const _$GetAllJourneyPlanHeadersStateImpl(
      {required final List<JourneyPlanHeaderModel>? headers})
      : _headers = headers;

  final List<JourneyPlanHeaderModel>? _headers;
  @override
  List<JourneyPlanHeaderModel>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'JourneyPlanHeaderState.getAllJourneyPlanHeadersState(headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllJourneyPlanHeadersStateImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headers));

  /// Create a copy of JourneyPlanHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllJourneyPlanHeadersStateImplCopyWith<
          _$GetAllJourneyPlanHeadersStateImpl>
      get copyWith => __$$GetAllJourneyPlanHeadersStateImplCopyWithImpl<
          _$GetAllJourneyPlanHeadersStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<JourneyPlanHeaderModel>? headers)
        getAllJourneyPlanHeadersState,
    required TResult Function() journeyPlanHeadersFailedState,
  }) {
    return getAllJourneyPlanHeadersState(headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<JourneyPlanHeaderModel>? headers)?
        getAllJourneyPlanHeadersState,
    TResult? Function()? journeyPlanHeadersFailedState,
  }) {
    return getAllJourneyPlanHeadersState?.call(headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<JourneyPlanHeaderModel>? headers)?
        getAllJourneyPlanHeadersState,
    TResult Function()? journeyPlanHeadersFailedState,
    required TResult orElse(),
  }) {
    if (getAllJourneyPlanHeadersState != null) {
      return getAllJourneyPlanHeadersState(headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllJourneyPlanHeadersState value)
        getAllJourneyPlanHeadersState,
    required TResult Function(JourneyPlanHeadersFailedState value)
        journeyPlanHeadersFailedState,
  }) {
    return getAllJourneyPlanHeadersState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllJourneyPlanHeadersState value)?
        getAllJourneyPlanHeadersState,
    TResult? Function(JourneyPlanHeadersFailedState value)?
        journeyPlanHeadersFailedState,
  }) {
    return getAllJourneyPlanHeadersState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllJourneyPlanHeadersState value)?
        getAllJourneyPlanHeadersState,
    TResult Function(JourneyPlanHeadersFailedState value)?
        journeyPlanHeadersFailedState,
    required TResult orElse(),
  }) {
    if (getAllJourneyPlanHeadersState != null) {
      return getAllJourneyPlanHeadersState(this);
    }
    return orElse();
  }
}

abstract class GetAllJourneyPlanHeadersState implements JourneyPlanHeaderState {
  const factory GetAllJourneyPlanHeadersState(
          {required final List<JourneyPlanHeaderModel>? headers}) =
      _$GetAllJourneyPlanHeadersStateImpl;

  List<JourneyPlanHeaderModel>? get headers;

  /// Create a copy of JourneyPlanHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllJourneyPlanHeadersStateImplCopyWith<
          _$GetAllJourneyPlanHeadersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JourneyPlanHeadersFailedStateImplCopyWith<$Res> {
  factory _$$JourneyPlanHeadersFailedStateImplCopyWith(
          _$JourneyPlanHeadersFailedStateImpl value,
          $Res Function(_$JourneyPlanHeadersFailedStateImpl) then) =
      __$$JourneyPlanHeadersFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$JourneyPlanHeadersFailedStateImplCopyWithImpl<$Res>
    extends _$JourneyPlanHeaderStateCopyWithImpl<$Res,
        _$JourneyPlanHeadersFailedStateImpl>
    implements _$$JourneyPlanHeadersFailedStateImplCopyWith<$Res> {
  __$$JourneyPlanHeadersFailedStateImplCopyWithImpl(
      _$JourneyPlanHeadersFailedStateImpl _value,
      $Res Function(_$JourneyPlanHeadersFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of JourneyPlanHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$JourneyPlanHeadersFailedStateImpl
    implements JourneyPlanHeadersFailedState {
  const _$JourneyPlanHeadersFailedStateImpl();

  @override
  String toString() {
    return 'JourneyPlanHeaderState.journeyPlanHeadersFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JourneyPlanHeadersFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<JourneyPlanHeaderModel>? headers)
        getAllJourneyPlanHeadersState,
    required TResult Function() journeyPlanHeadersFailedState,
  }) {
    return journeyPlanHeadersFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<JourneyPlanHeaderModel>? headers)?
        getAllJourneyPlanHeadersState,
    TResult? Function()? journeyPlanHeadersFailedState,
  }) {
    return journeyPlanHeadersFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<JourneyPlanHeaderModel>? headers)?
        getAllJourneyPlanHeadersState,
    TResult Function()? journeyPlanHeadersFailedState,
    required TResult orElse(),
  }) {
    if (journeyPlanHeadersFailedState != null) {
      return journeyPlanHeadersFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllJourneyPlanHeadersState value)
        getAllJourneyPlanHeadersState,
    required TResult Function(JourneyPlanHeadersFailedState value)
        journeyPlanHeadersFailedState,
  }) {
    return journeyPlanHeadersFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllJourneyPlanHeadersState value)?
        getAllJourneyPlanHeadersState,
    TResult? Function(JourneyPlanHeadersFailedState value)?
        journeyPlanHeadersFailedState,
  }) {
    return journeyPlanHeadersFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllJourneyPlanHeadersState value)?
        getAllJourneyPlanHeadersState,
    TResult Function(JourneyPlanHeadersFailedState value)?
        journeyPlanHeadersFailedState,
    required TResult orElse(),
  }) {
    if (journeyPlanHeadersFailedState != null) {
      return journeyPlanHeadersFailedState(this);
    }
    return orElse();
  }
}

abstract class JourneyPlanHeadersFailedState implements JourneyPlanHeaderState {
  const factory JourneyPlanHeadersFailedState() =
      _$JourneyPlanHeadersFailedStateImpl;
}
