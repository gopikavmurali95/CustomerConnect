// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_review_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActivityReviewHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rotTyp, String searchQuery)
        getActivityReviewHeadersEvent,
    required TResult Function() clearActivityReviewHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rotTyp, String searchQuery)?
        getActivityReviewHeadersEvent,
    TResult? Function()? clearActivityReviewHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rotTyp, String searchQuery)?
        getActivityReviewHeadersEvent,
    TResult Function()? clearActivityReviewHeaderEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActivityReviewHeadersEvent value)
        getActivityReviewHeadersEvent,
    required TResult Function(ClearActivityReviewHeaderEvent value)
        clearActivityReviewHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActivityReviewHeadersEvent value)?
        getActivityReviewHeadersEvent,
    TResult? Function(ClearActivityReviewHeaderEvent value)?
        clearActivityReviewHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActivityReviewHeadersEvent value)?
        getActivityReviewHeadersEvent,
    TResult Function(ClearActivityReviewHeaderEvent value)?
        clearActivityReviewHeaderEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityReviewHeaderEventCopyWith<$Res> {
  factory $ActivityReviewHeaderEventCopyWith(ActivityReviewHeaderEvent value,
          $Res Function(ActivityReviewHeaderEvent) then) =
      _$ActivityReviewHeaderEventCopyWithImpl<$Res, ActivityReviewHeaderEvent>;
}

/// @nodoc
class _$ActivityReviewHeaderEventCopyWithImpl<$Res,
        $Val extends ActivityReviewHeaderEvent>
    implements $ActivityReviewHeaderEventCopyWith<$Res> {
  _$ActivityReviewHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityReviewHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetActivityReviewHeadersEventImplCopyWith<$Res> {
  factory _$$GetActivityReviewHeadersEventImplCopyWith(
          _$GetActivityReviewHeadersEventImpl value,
          $Res Function(_$GetActivityReviewHeadersEventImpl) then) =
      __$$GetActivityReviewHeadersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String rotTyp, String searchQuery});
}

/// @nodoc
class __$$GetActivityReviewHeadersEventImplCopyWithImpl<$Res>
    extends _$ActivityReviewHeaderEventCopyWithImpl<$Res,
        _$GetActivityReviewHeadersEventImpl>
    implements _$$GetActivityReviewHeadersEventImplCopyWith<$Res> {
  __$$GetActivityReviewHeadersEventImplCopyWithImpl(
      _$GetActivityReviewHeadersEventImpl _value,
      $Res Function(_$GetActivityReviewHeadersEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityReviewHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rotTyp = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetActivityReviewHeadersEventImpl(
      rotTyp: null == rotTyp
          ? _value.rotTyp
          : rotTyp // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetActivityReviewHeadersEventImpl
    implements GetActivityReviewHeadersEvent {
  const _$GetActivityReviewHeadersEventImpl(
      {required this.rotTyp, required this.searchQuery});

  @override
  final String rotTyp;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'ActivityReviewHeaderEvent.getActivityReviewHeadersEvent(rotTyp: $rotTyp, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetActivityReviewHeadersEventImpl &&
            (identical(other.rotTyp, rotTyp) || other.rotTyp == rotTyp) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rotTyp, searchQuery);

  /// Create a copy of ActivityReviewHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetActivityReviewHeadersEventImplCopyWith<
          _$GetActivityReviewHeadersEventImpl>
      get copyWith => __$$GetActivityReviewHeadersEventImplCopyWithImpl<
          _$GetActivityReviewHeadersEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rotTyp, String searchQuery)
        getActivityReviewHeadersEvent,
    required TResult Function() clearActivityReviewHeaderEvent,
  }) {
    return getActivityReviewHeadersEvent(rotTyp, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rotTyp, String searchQuery)?
        getActivityReviewHeadersEvent,
    TResult? Function()? clearActivityReviewHeaderEvent,
  }) {
    return getActivityReviewHeadersEvent?.call(rotTyp, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rotTyp, String searchQuery)?
        getActivityReviewHeadersEvent,
    TResult Function()? clearActivityReviewHeaderEvent,
    required TResult orElse(),
  }) {
    if (getActivityReviewHeadersEvent != null) {
      return getActivityReviewHeadersEvent(rotTyp, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActivityReviewHeadersEvent value)
        getActivityReviewHeadersEvent,
    required TResult Function(ClearActivityReviewHeaderEvent value)
        clearActivityReviewHeaderEvent,
  }) {
    return getActivityReviewHeadersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActivityReviewHeadersEvent value)?
        getActivityReviewHeadersEvent,
    TResult? Function(ClearActivityReviewHeaderEvent value)?
        clearActivityReviewHeaderEvent,
  }) {
    return getActivityReviewHeadersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActivityReviewHeadersEvent value)?
        getActivityReviewHeadersEvent,
    TResult Function(ClearActivityReviewHeaderEvent value)?
        clearActivityReviewHeaderEvent,
    required TResult orElse(),
  }) {
    if (getActivityReviewHeadersEvent != null) {
      return getActivityReviewHeadersEvent(this);
    }
    return orElse();
  }
}

abstract class GetActivityReviewHeadersEvent
    implements ActivityReviewHeaderEvent {
  const factory GetActivityReviewHeadersEvent(
      {required final String rotTyp,
      required final String searchQuery}) = _$GetActivityReviewHeadersEventImpl;

  String get rotTyp;
  String get searchQuery;

  /// Create a copy of ActivityReviewHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetActivityReviewHeadersEventImplCopyWith<
          _$GetActivityReviewHeadersEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearActivityReviewHeaderEventImplCopyWith<$Res> {
  factory _$$ClearActivityReviewHeaderEventImplCopyWith(
          _$ClearActivityReviewHeaderEventImpl value,
          $Res Function(_$ClearActivityReviewHeaderEventImpl) then) =
      __$$ClearActivityReviewHeaderEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearActivityReviewHeaderEventImplCopyWithImpl<$Res>
    extends _$ActivityReviewHeaderEventCopyWithImpl<$Res,
        _$ClearActivityReviewHeaderEventImpl>
    implements _$$ClearActivityReviewHeaderEventImplCopyWith<$Res> {
  __$$ClearActivityReviewHeaderEventImplCopyWithImpl(
      _$ClearActivityReviewHeaderEventImpl _value,
      $Res Function(_$ClearActivityReviewHeaderEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityReviewHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearActivityReviewHeaderEventImpl
    implements ClearActivityReviewHeaderEvent {
  const _$ClearActivityReviewHeaderEventImpl();

  @override
  String toString() {
    return 'ActivityReviewHeaderEvent.clearActivityReviewHeaderEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearActivityReviewHeaderEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rotTyp, String searchQuery)
        getActivityReviewHeadersEvent,
    required TResult Function() clearActivityReviewHeaderEvent,
  }) {
    return clearActivityReviewHeaderEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rotTyp, String searchQuery)?
        getActivityReviewHeadersEvent,
    TResult? Function()? clearActivityReviewHeaderEvent,
  }) {
    return clearActivityReviewHeaderEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rotTyp, String searchQuery)?
        getActivityReviewHeadersEvent,
    TResult Function()? clearActivityReviewHeaderEvent,
    required TResult orElse(),
  }) {
    if (clearActivityReviewHeaderEvent != null) {
      return clearActivityReviewHeaderEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActivityReviewHeadersEvent value)
        getActivityReviewHeadersEvent,
    required TResult Function(ClearActivityReviewHeaderEvent value)
        clearActivityReviewHeaderEvent,
  }) {
    return clearActivityReviewHeaderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActivityReviewHeadersEvent value)?
        getActivityReviewHeadersEvent,
    TResult? Function(ClearActivityReviewHeaderEvent value)?
        clearActivityReviewHeaderEvent,
  }) {
    return clearActivityReviewHeaderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActivityReviewHeadersEvent value)?
        getActivityReviewHeadersEvent,
    TResult Function(ClearActivityReviewHeaderEvent value)?
        clearActivityReviewHeaderEvent,
    required TResult orElse(),
  }) {
    if (clearActivityReviewHeaderEvent != null) {
      return clearActivityReviewHeaderEvent(this);
    }
    return orElse();
  }
}

abstract class ClearActivityReviewHeaderEvent
    implements ActivityReviewHeaderEvent {
  const factory ClearActivityReviewHeaderEvent() =
      _$ClearActivityReviewHeaderEventImpl;
}

/// @nodoc
mixin _$ActivityReviewHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ActivityReviewHeaderModel>? headers)
        getActivityRevewHeadersState,
    required TResult Function() actvityReviewHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ActivityReviewHeaderModel>? headers)?
        getActivityRevewHeadersState,
    TResult? Function()? actvityReviewHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ActivityReviewHeaderModel>? headers)?
        getActivityRevewHeadersState,
    TResult Function()? actvityReviewHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActivityRevewHeadersState value)
        getActivityRevewHeadersState,
    required TResult Function(ActvityReviewHeaderFailedState value)
        actvityReviewHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActivityRevewHeadersState value)?
        getActivityRevewHeadersState,
    TResult? Function(ActvityReviewHeaderFailedState value)?
        actvityReviewHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActivityRevewHeadersState value)?
        getActivityRevewHeadersState,
    TResult Function(ActvityReviewHeaderFailedState value)?
        actvityReviewHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityReviewHeaderStateCopyWith<$Res> {
  factory $ActivityReviewHeaderStateCopyWith(ActivityReviewHeaderState value,
          $Res Function(ActivityReviewHeaderState) then) =
      _$ActivityReviewHeaderStateCopyWithImpl<$Res, ActivityReviewHeaderState>;
}

/// @nodoc
class _$ActivityReviewHeaderStateCopyWithImpl<$Res,
        $Val extends ActivityReviewHeaderState>
    implements $ActivityReviewHeaderStateCopyWith<$Res> {
  _$ActivityReviewHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityReviewHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetActivityRevewHeadersStateImplCopyWith<$Res> {
  factory _$$GetActivityRevewHeadersStateImplCopyWith(
          _$GetActivityRevewHeadersStateImpl value,
          $Res Function(_$GetActivityRevewHeadersStateImpl) then) =
      __$$GetActivityRevewHeadersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ActivityReviewHeaderModel>? headers});
}

/// @nodoc
class __$$GetActivityRevewHeadersStateImplCopyWithImpl<$Res>
    extends _$ActivityReviewHeaderStateCopyWithImpl<$Res,
        _$GetActivityRevewHeadersStateImpl>
    implements _$$GetActivityRevewHeadersStateImplCopyWith<$Res> {
  __$$GetActivityRevewHeadersStateImplCopyWithImpl(
      _$GetActivityRevewHeadersStateImpl _value,
      $Res Function(_$GetActivityRevewHeadersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityReviewHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_$GetActivityRevewHeadersStateImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<ActivityReviewHeaderModel>?,
    ));
  }
}

/// @nodoc

class _$GetActivityRevewHeadersStateImpl
    implements GetActivityRevewHeadersState {
  const _$GetActivityRevewHeadersStateImpl(
      {required final List<ActivityReviewHeaderModel>? headers})
      : _headers = headers;

  final List<ActivityReviewHeaderModel>? _headers;
  @override
  List<ActivityReviewHeaderModel>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ActivityReviewHeaderState.getActivityRevewHeadersState(headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetActivityRevewHeadersStateImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headers));

  /// Create a copy of ActivityReviewHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetActivityRevewHeadersStateImplCopyWith<
          _$GetActivityRevewHeadersStateImpl>
      get copyWith => __$$GetActivityRevewHeadersStateImplCopyWithImpl<
          _$GetActivityRevewHeadersStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ActivityReviewHeaderModel>? headers)
        getActivityRevewHeadersState,
    required TResult Function() actvityReviewHeaderFailedState,
  }) {
    return getActivityRevewHeadersState(headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ActivityReviewHeaderModel>? headers)?
        getActivityRevewHeadersState,
    TResult? Function()? actvityReviewHeaderFailedState,
  }) {
    return getActivityRevewHeadersState?.call(headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ActivityReviewHeaderModel>? headers)?
        getActivityRevewHeadersState,
    TResult Function()? actvityReviewHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getActivityRevewHeadersState != null) {
      return getActivityRevewHeadersState(headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActivityRevewHeadersState value)
        getActivityRevewHeadersState,
    required TResult Function(ActvityReviewHeaderFailedState value)
        actvityReviewHeaderFailedState,
  }) {
    return getActivityRevewHeadersState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActivityRevewHeadersState value)?
        getActivityRevewHeadersState,
    TResult? Function(ActvityReviewHeaderFailedState value)?
        actvityReviewHeaderFailedState,
  }) {
    return getActivityRevewHeadersState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActivityRevewHeadersState value)?
        getActivityRevewHeadersState,
    TResult Function(ActvityReviewHeaderFailedState value)?
        actvityReviewHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getActivityRevewHeadersState != null) {
      return getActivityRevewHeadersState(this);
    }
    return orElse();
  }
}

abstract class GetActivityRevewHeadersState
    implements ActivityReviewHeaderState {
  const factory GetActivityRevewHeadersState(
          {required final List<ActivityReviewHeaderModel>? headers}) =
      _$GetActivityRevewHeadersStateImpl;

  List<ActivityReviewHeaderModel>? get headers;

  /// Create a copy of ActivityReviewHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetActivityRevewHeadersStateImplCopyWith<
          _$GetActivityRevewHeadersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActvityReviewHeaderFailedStateImplCopyWith<$Res> {
  factory _$$ActvityReviewHeaderFailedStateImplCopyWith(
          _$ActvityReviewHeaderFailedStateImpl value,
          $Res Function(_$ActvityReviewHeaderFailedStateImpl) then) =
      __$$ActvityReviewHeaderFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActvityReviewHeaderFailedStateImplCopyWithImpl<$Res>
    extends _$ActivityReviewHeaderStateCopyWithImpl<$Res,
        _$ActvityReviewHeaderFailedStateImpl>
    implements _$$ActvityReviewHeaderFailedStateImplCopyWith<$Res> {
  __$$ActvityReviewHeaderFailedStateImplCopyWithImpl(
      _$ActvityReviewHeaderFailedStateImpl _value,
      $Res Function(_$ActvityReviewHeaderFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityReviewHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ActvityReviewHeaderFailedStateImpl
    implements ActvityReviewHeaderFailedState {
  const _$ActvityReviewHeaderFailedStateImpl();

  @override
  String toString() {
    return 'ActivityReviewHeaderState.actvityReviewHeaderFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActvityReviewHeaderFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ActivityReviewHeaderModel>? headers)
        getActivityRevewHeadersState,
    required TResult Function() actvityReviewHeaderFailedState,
  }) {
    return actvityReviewHeaderFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ActivityReviewHeaderModel>? headers)?
        getActivityRevewHeadersState,
    TResult? Function()? actvityReviewHeaderFailedState,
  }) {
    return actvityReviewHeaderFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ActivityReviewHeaderModel>? headers)?
        getActivityRevewHeadersState,
    TResult Function()? actvityReviewHeaderFailedState,
    required TResult orElse(),
  }) {
    if (actvityReviewHeaderFailedState != null) {
      return actvityReviewHeaderFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActivityRevewHeadersState value)
        getActivityRevewHeadersState,
    required TResult Function(ActvityReviewHeaderFailedState value)
        actvityReviewHeaderFailedState,
  }) {
    return actvityReviewHeaderFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActivityRevewHeadersState value)?
        getActivityRevewHeadersState,
    TResult? Function(ActvityReviewHeaderFailedState value)?
        actvityReviewHeaderFailedState,
  }) {
    return actvityReviewHeaderFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActivityRevewHeadersState value)?
        getActivityRevewHeadersState,
    TResult Function(ActvityReviewHeaderFailedState value)?
        actvityReviewHeaderFailedState,
    required TResult orElse(),
  }) {
    if (actvityReviewHeaderFailedState != null) {
      return actvityReviewHeaderFailedState(this);
    }
    return orElse();
  }
}

abstract class ActvityReviewHeaderFailedState
    implements ActivityReviewHeaderState {
  const factory ActvityReviewHeaderFailedState() =
      _$ActvityReviewHeaderFailedStateImpl;
}
