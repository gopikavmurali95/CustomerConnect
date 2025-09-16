// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_review_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActivityReviewDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getActivityReviewDetailEvent,
    required TResult Function() clearActivityReviewDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getActivityReviewDetailEvent,
    TResult? Function()? clearActivityReviewDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getActivityReviewDetailEvent,
    TResult Function()? clearActivityReviewDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActivityReviewDetailEvent value)
        getActivityReviewDetailEvent,
    required TResult Function(ClearActivityReviewDetailEvent value)
        clearActivityReviewDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActivityReviewDetailEvent value)?
        getActivityReviewDetailEvent,
    TResult? Function(ClearActivityReviewDetailEvent value)?
        clearActivityReviewDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActivityReviewDetailEvent value)?
        getActivityReviewDetailEvent,
    TResult Function(ClearActivityReviewDetailEvent value)?
        clearActivityReviewDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityReviewDetailEventCopyWith<$Res> {
  factory $ActivityReviewDetailEventCopyWith(ActivityReviewDetailEvent value,
          $Res Function(ActivityReviewDetailEvent) then) =
      _$ActivityReviewDetailEventCopyWithImpl<$Res, ActivityReviewDetailEvent>;
}

/// @nodoc
class _$ActivityReviewDetailEventCopyWithImpl<$Res,
        $Val extends ActivityReviewDetailEvent>
    implements $ActivityReviewDetailEventCopyWith<$Res> {
  _$ActivityReviewDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityReviewDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetActivityReviewDetailEventImplCopyWith<$Res> {
  factory _$$GetActivityReviewDetailEventImplCopyWith(
          _$GetActivityReviewDetailEventImpl value,
          $Res Function(_$GetActivityReviewDetailEventImpl) then) =
      __$$GetActivityReviewDetailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String udpID});
}

/// @nodoc
class __$$GetActivityReviewDetailEventImplCopyWithImpl<$Res>
    extends _$ActivityReviewDetailEventCopyWithImpl<$Res,
        _$GetActivityReviewDetailEventImpl>
    implements _$$GetActivityReviewDetailEventImplCopyWith<$Res> {
  __$$GetActivityReviewDetailEventImplCopyWithImpl(
      _$GetActivityReviewDetailEventImpl _value,
      $Res Function(_$GetActivityReviewDetailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityReviewDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? udpID = null,
  }) {
    return _then(_$GetActivityReviewDetailEventImpl(
      udpID: null == udpID
          ? _value.udpID
          : udpID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetActivityReviewDetailEventImpl
    implements GetActivityReviewDetailEvent {
  const _$GetActivityReviewDetailEventImpl({required this.udpID});

  @override
  final String udpID;

  @override
  String toString() {
    return 'ActivityReviewDetailEvent.getActivityReviewDetailEvent(udpID: $udpID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetActivityReviewDetailEventImpl &&
            (identical(other.udpID, udpID) || other.udpID == udpID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, udpID);

  /// Create a copy of ActivityReviewDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetActivityReviewDetailEventImplCopyWith<
          _$GetActivityReviewDetailEventImpl>
      get copyWith => __$$GetActivityReviewDetailEventImplCopyWithImpl<
          _$GetActivityReviewDetailEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getActivityReviewDetailEvent,
    required TResult Function() clearActivityReviewDetailEvent,
  }) {
    return getActivityReviewDetailEvent(udpID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getActivityReviewDetailEvent,
    TResult? Function()? clearActivityReviewDetailEvent,
  }) {
    return getActivityReviewDetailEvent?.call(udpID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getActivityReviewDetailEvent,
    TResult Function()? clearActivityReviewDetailEvent,
    required TResult orElse(),
  }) {
    if (getActivityReviewDetailEvent != null) {
      return getActivityReviewDetailEvent(udpID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActivityReviewDetailEvent value)
        getActivityReviewDetailEvent,
    required TResult Function(ClearActivityReviewDetailEvent value)
        clearActivityReviewDetailEvent,
  }) {
    return getActivityReviewDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActivityReviewDetailEvent value)?
        getActivityReviewDetailEvent,
    TResult? Function(ClearActivityReviewDetailEvent value)?
        clearActivityReviewDetailEvent,
  }) {
    return getActivityReviewDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActivityReviewDetailEvent value)?
        getActivityReviewDetailEvent,
    TResult Function(ClearActivityReviewDetailEvent value)?
        clearActivityReviewDetailEvent,
    required TResult orElse(),
  }) {
    if (getActivityReviewDetailEvent != null) {
      return getActivityReviewDetailEvent(this);
    }
    return orElse();
  }
}

abstract class GetActivityReviewDetailEvent
    implements ActivityReviewDetailEvent {
  const factory GetActivityReviewDetailEvent({required final String udpID}) =
      _$GetActivityReviewDetailEventImpl;

  String get udpID;

  /// Create a copy of ActivityReviewDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetActivityReviewDetailEventImplCopyWith<
          _$GetActivityReviewDetailEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearActivityReviewDetailEventImplCopyWith<$Res> {
  factory _$$ClearActivityReviewDetailEventImplCopyWith(
          _$ClearActivityReviewDetailEventImpl value,
          $Res Function(_$ClearActivityReviewDetailEventImpl) then) =
      __$$ClearActivityReviewDetailEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearActivityReviewDetailEventImplCopyWithImpl<$Res>
    extends _$ActivityReviewDetailEventCopyWithImpl<$Res,
        _$ClearActivityReviewDetailEventImpl>
    implements _$$ClearActivityReviewDetailEventImplCopyWith<$Res> {
  __$$ClearActivityReviewDetailEventImplCopyWithImpl(
      _$ClearActivityReviewDetailEventImpl _value,
      $Res Function(_$ClearActivityReviewDetailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityReviewDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearActivityReviewDetailEventImpl
    implements ClearActivityReviewDetailEvent {
  const _$ClearActivityReviewDetailEventImpl();

  @override
  String toString() {
    return 'ActivityReviewDetailEvent.clearActivityReviewDetailEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearActivityReviewDetailEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getActivityReviewDetailEvent,
    required TResult Function() clearActivityReviewDetailEvent,
  }) {
    return clearActivityReviewDetailEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getActivityReviewDetailEvent,
    TResult? Function()? clearActivityReviewDetailEvent,
  }) {
    return clearActivityReviewDetailEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getActivityReviewDetailEvent,
    TResult Function()? clearActivityReviewDetailEvent,
    required TResult orElse(),
  }) {
    if (clearActivityReviewDetailEvent != null) {
      return clearActivityReviewDetailEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActivityReviewDetailEvent value)
        getActivityReviewDetailEvent,
    required TResult Function(ClearActivityReviewDetailEvent value)
        clearActivityReviewDetailEvent,
  }) {
    return clearActivityReviewDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActivityReviewDetailEvent value)?
        getActivityReviewDetailEvent,
    TResult? Function(ClearActivityReviewDetailEvent value)?
        clearActivityReviewDetailEvent,
  }) {
    return clearActivityReviewDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActivityReviewDetailEvent value)?
        getActivityReviewDetailEvent,
    TResult Function(ClearActivityReviewDetailEvent value)?
        clearActivityReviewDetailEvent,
    required TResult orElse(),
  }) {
    if (clearActivityReviewDetailEvent != null) {
      return clearActivityReviewDetailEvent(this);
    }
    return orElse();
  }
}

abstract class ClearActivityReviewDetailEvent
    implements ActivityReviewDetailEvent {
  const factory ClearActivityReviewDetailEvent() =
      _$ClearActivityReviewDetailEventImpl;
}

/// @nodoc
mixin _$ActivityReviewDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ActivityReviewDetailListModel>? details)
        getActivityReviewDetailState,
    required TResult Function() activityReviewDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ActivityReviewDetailListModel>? details)?
        getActivityReviewDetailState,
    TResult? Function()? activityReviewDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ActivityReviewDetailListModel>? details)?
        getActivityReviewDetailState,
    TResult Function()? activityReviewDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActivityReviewDetailState value)
        getActivityReviewDetailState,
    required TResult Function(ActivityReviewDetailFailedState value)
        activityReviewDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActivityReviewDetailState value)?
        getActivityReviewDetailState,
    TResult? Function(ActivityReviewDetailFailedState value)?
        activityReviewDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActivityReviewDetailState value)?
        getActivityReviewDetailState,
    TResult Function(ActivityReviewDetailFailedState value)?
        activityReviewDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityReviewDetailStateCopyWith<$Res> {
  factory $ActivityReviewDetailStateCopyWith(ActivityReviewDetailState value,
          $Res Function(ActivityReviewDetailState) then) =
      _$ActivityReviewDetailStateCopyWithImpl<$Res, ActivityReviewDetailState>;
}

/// @nodoc
class _$ActivityReviewDetailStateCopyWithImpl<$Res,
        $Val extends ActivityReviewDetailState>
    implements $ActivityReviewDetailStateCopyWith<$Res> {
  _$ActivityReviewDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityReviewDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetActivityReviewDetailStateImplCopyWith<$Res> {
  factory _$$GetActivityReviewDetailStateImplCopyWith(
          _$GetActivityReviewDetailStateImpl value,
          $Res Function(_$GetActivityReviewDetailStateImpl) then) =
      __$$GetActivityReviewDetailStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ActivityReviewDetailListModel>? details});
}

/// @nodoc
class __$$GetActivityReviewDetailStateImplCopyWithImpl<$Res>
    extends _$ActivityReviewDetailStateCopyWithImpl<$Res,
        _$GetActivityReviewDetailStateImpl>
    implements _$$GetActivityReviewDetailStateImplCopyWith<$Res> {
  __$$GetActivityReviewDetailStateImplCopyWithImpl(
      _$GetActivityReviewDetailStateImpl _value,
      $Res Function(_$GetActivityReviewDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityReviewDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_$GetActivityReviewDetailStateImpl(
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<ActivityReviewDetailListModel>?,
    ));
  }
}

/// @nodoc

class _$GetActivityReviewDetailStateImpl
    implements GetActivityReviewDetailState {
  const _$GetActivityReviewDetailStateImpl(
      {required final List<ActivityReviewDetailListModel>? details})
      : _details = details;

  final List<ActivityReviewDetailListModel>? _details;
  @override
  List<ActivityReviewDetailListModel>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ActivityReviewDetailState.getActivityReviewDetailState(details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetActivityReviewDetailStateImpl &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_details));

  /// Create a copy of ActivityReviewDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetActivityReviewDetailStateImplCopyWith<
          _$GetActivityReviewDetailStateImpl>
      get copyWith => __$$GetActivityReviewDetailStateImplCopyWithImpl<
          _$GetActivityReviewDetailStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ActivityReviewDetailListModel>? details)
        getActivityReviewDetailState,
    required TResult Function() activityReviewDetailFailedState,
  }) {
    return getActivityReviewDetailState(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ActivityReviewDetailListModel>? details)?
        getActivityReviewDetailState,
    TResult? Function()? activityReviewDetailFailedState,
  }) {
    return getActivityReviewDetailState?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ActivityReviewDetailListModel>? details)?
        getActivityReviewDetailState,
    TResult Function()? activityReviewDetailFailedState,
    required TResult orElse(),
  }) {
    if (getActivityReviewDetailState != null) {
      return getActivityReviewDetailState(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActivityReviewDetailState value)
        getActivityReviewDetailState,
    required TResult Function(ActivityReviewDetailFailedState value)
        activityReviewDetailFailedState,
  }) {
    return getActivityReviewDetailState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActivityReviewDetailState value)?
        getActivityReviewDetailState,
    TResult? Function(ActivityReviewDetailFailedState value)?
        activityReviewDetailFailedState,
  }) {
    return getActivityReviewDetailState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActivityReviewDetailState value)?
        getActivityReviewDetailState,
    TResult Function(ActivityReviewDetailFailedState value)?
        activityReviewDetailFailedState,
    required TResult orElse(),
  }) {
    if (getActivityReviewDetailState != null) {
      return getActivityReviewDetailState(this);
    }
    return orElse();
  }
}

abstract class GetActivityReviewDetailState
    implements ActivityReviewDetailState {
  const factory GetActivityReviewDetailState(
          {required final List<ActivityReviewDetailListModel>? details}) =
      _$GetActivityReviewDetailStateImpl;

  List<ActivityReviewDetailListModel>? get details;

  /// Create a copy of ActivityReviewDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetActivityReviewDetailStateImplCopyWith<
          _$GetActivityReviewDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActivityReviewDetailFailedStateImplCopyWith<$Res> {
  factory _$$ActivityReviewDetailFailedStateImplCopyWith(
          _$ActivityReviewDetailFailedStateImpl value,
          $Res Function(_$ActivityReviewDetailFailedStateImpl) then) =
      __$$ActivityReviewDetailFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActivityReviewDetailFailedStateImplCopyWithImpl<$Res>
    extends _$ActivityReviewDetailStateCopyWithImpl<$Res,
        _$ActivityReviewDetailFailedStateImpl>
    implements _$$ActivityReviewDetailFailedStateImplCopyWith<$Res> {
  __$$ActivityReviewDetailFailedStateImplCopyWithImpl(
      _$ActivityReviewDetailFailedStateImpl _value,
      $Res Function(_$ActivityReviewDetailFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityReviewDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ActivityReviewDetailFailedStateImpl
    implements ActivityReviewDetailFailedState {
  const _$ActivityReviewDetailFailedStateImpl();

  @override
  String toString() {
    return 'ActivityReviewDetailState.activityReviewDetailFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityReviewDetailFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ActivityReviewDetailListModel>? details)
        getActivityReviewDetailState,
    required TResult Function() activityReviewDetailFailedState,
  }) {
    return activityReviewDetailFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ActivityReviewDetailListModel>? details)?
        getActivityReviewDetailState,
    TResult? Function()? activityReviewDetailFailedState,
  }) {
    return activityReviewDetailFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ActivityReviewDetailListModel>? details)?
        getActivityReviewDetailState,
    TResult Function()? activityReviewDetailFailedState,
    required TResult orElse(),
  }) {
    if (activityReviewDetailFailedState != null) {
      return activityReviewDetailFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActivityReviewDetailState value)
        getActivityReviewDetailState,
    required TResult Function(ActivityReviewDetailFailedState value)
        activityReviewDetailFailedState,
  }) {
    return activityReviewDetailFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActivityReviewDetailState value)?
        getActivityReviewDetailState,
    TResult? Function(ActivityReviewDetailFailedState value)?
        activityReviewDetailFailedState,
  }) {
    return activityReviewDetailFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActivityReviewDetailState value)?
        getActivityReviewDetailState,
    TResult Function(ActivityReviewDetailFailedState value)?
        activityReviewDetailFailedState,
    required TResult orElse(),
  }) {
    if (activityReviewDetailFailedState != null) {
      return activityReviewDetailFailedState(this);
    }
    return orElse();
  }
}

abstract class ActivityReviewDetailFailedState
    implements ActivityReviewDetailState {
  const factory ActivityReviewDetailFailedState() =
      _$ActivityReviewDetailFailedStateImpl;
}
