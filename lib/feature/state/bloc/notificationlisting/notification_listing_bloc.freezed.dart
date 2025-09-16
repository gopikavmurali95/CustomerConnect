// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_listing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationListingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID) getUserNotificationsEvent,
    required TResult Function() clearNotifcationsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID)? getUserNotificationsEvent,
    TResult? Function()? clearNotifcationsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID)? getUserNotificationsEvent,
    TResult Function()? clearNotifcationsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserNotificationsEvent value)
        getUserNotificationsEvent,
    required TResult Function(ClearNotifcationsEvent value)
        clearNotifcationsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserNotificationsEvent value)?
        getUserNotificationsEvent,
    TResult? Function(ClearNotifcationsEvent value)? clearNotifcationsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserNotificationsEvent value)?
        getUserNotificationsEvent,
    TResult Function(ClearNotifcationsEvent value)? clearNotifcationsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationListingEventCopyWith<$Res> {
  factory $NotificationListingEventCopyWith(NotificationListingEvent value,
          $Res Function(NotificationListingEvent) then) =
      _$NotificationListingEventCopyWithImpl<$Res, NotificationListingEvent>;
}

/// @nodoc
class _$NotificationListingEventCopyWithImpl<$Res,
        $Val extends NotificationListingEvent>
    implements $NotificationListingEventCopyWith<$Res> {
  _$NotificationListingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationListingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetUserNotificationsEventImplCopyWith<$Res> {
  factory _$$GetUserNotificationsEventImplCopyWith(
          _$GetUserNotificationsEventImpl value,
          $Res Function(_$GetUserNotificationsEventImpl) then) =
      __$$GetUserNotificationsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userID});
}

/// @nodoc
class __$$GetUserNotificationsEventImplCopyWithImpl<$Res>
    extends _$NotificationListingEventCopyWithImpl<$Res,
        _$GetUserNotificationsEventImpl>
    implements _$$GetUserNotificationsEventImplCopyWith<$Res> {
  __$$GetUserNotificationsEventImplCopyWithImpl(
      _$GetUserNotificationsEventImpl _value,
      $Res Function(_$GetUserNotificationsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationListingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
  }) {
    return _then(_$GetUserNotificationsEventImpl(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUserNotificationsEventImpl implements GetUserNotificationsEvent {
  const _$GetUserNotificationsEventImpl({required this.userID});

  @override
  final String userID;

  @override
  String toString() {
    return 'NotificationListingEvent.getUserNotificationsEvent(userID: $userID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserNotificationsEventImpl &&
            (identical(other.userID, userID) || other.userID == userID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userID);

  /// Create a copy of NotificationListingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserNotificationsEventImplCopyWith<_$GetUserNotificationsEventImpl>
      get copyWith => __$$GetUserNotificationsEventImplCopyWithImpl<
          _$GetUserNotificationsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID) getUserNotificationsEvent,
    required TResult Function() clearNotifcationsEvent,
  }) {
    return getUserNotificationsEvent(userID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID)? getUserNotificationsEvent,
    TResult? Function()? clearNotifcationsEvent,
  }) {
    return getUserNotificationsEvent?.call(userID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID)? getUserNotificationsEvent,
    TResult Function()? clearNotifcationsEvent,
    required TResult orElse(),
  }) {
    if (getUserNotificationsEvent != null) {
      return getUserNotificationsEvent(userID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserNotificationsEvent value)
        getUserNotificationsEvent,
    required TResult Function(ClearNotifcationsEvent value)
        clearNotifcationsEvent,
  }) {
    return getUserNotificationsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserNotificationsEvent value)?
        getUserNotificationsEvent,
    TResult? Function(ClearNotifcationsEvent value)? clearNotifcationsEvent,
  }) {
    return getUserNotificationsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserNotificationsEvent value)?
        getUserNotificationsEvent,
    TResult Function(ClearNotifcationsEvent value)? clearNotifcationsEvent,
    required TResult orElse(),
  }) {
    if (getUserNotificationsEvent != null) {
      return getUserNotificationsEvent(this);
    }
    return orElse();
  }
}

abstract class GetUserNotificationsEvent implements NotificationListingEvent {
  const factory GetUserNotificationsEvent({required final String userID}) =
      _$GetUserNotificationsEventImpl;

  String get userID;

  /// Create a copy of NotificationListingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserNotificationsEventImplCopyWith<_$GetUserNotificationsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearNotifcationsEventImplCopyWith<$Res> {
  factory _$$ClearNotifcationsEventImplCopyWith(
          _$ClearNotifcationsEventImpl value,
          $Res Function(_$ClearNotifcationsEventImpl) then) =
      __$$ClearNotifcationsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearNotifcationsEventImplCopyWithImpl<$Res>
    extends _$NotificationListingEventCopyWithImpl<$Res,
        _$ClearNotifcationsEventImpl>
    implements _$$ClearNotifcationsEventImplCopyWith<$Res> {
  __$$ClearNotifcationsEventImplCopyWithImpl(
      _$ClearNotifcationsEventImpl _value,
      $Res Function(_$ClearNotifcationsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationListingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearNotifcationsEventImpl implements ClearNotifcationsEvent {
  const _$ClearNotifcationsEventImpl();

  @override
  String toString() {
    return 'NotificationListingEvent.clearNotifcationsEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearNotifcationsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID) getUserNotificationsEvent,
    required TResult Function() clearNotifcationsEvent,
  }) {
    return clearNotifcationsEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID)? getUserNotificationsEvent,
    TResult? Function()? clearNotifcationsEvent,
  }) {
    return clearNotifcationsEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID)? getUserNotificationsEvent,
    TResult Function()? clearNotifcationsEvent,
    required TResult orElse(),
  }) {
    if (clearNotifcationsEvent != null) {
      return clearNotifcationsEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserNotificationsEvent value)
        getUserNotificationsEvent,
    required TResult Function(ClearNotifcationsEvent value)
        clearNotifcationsEvent,
  }) {
    return clearNotifcationsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserNotificationsEvent value)?
        getUserNotificationsEvent,
    TResult? Function(ClearNotifcationsEvent value)? clearNotifcationsEvent,
  }) {
    return clearNotifcationsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserNotificationsEvent value)?
        getUserNotificationsEvent,
    TResult Function(ClearNotifcationsEvent value)? clearNotifcationsEvent,
    required TResult orElse(),
  }) {
    if (clearNotifcationsEvent != null) {
      return clearNotifcationsEvent(this);
    }
    return orElse();
  }
}

abstract class ClearNotifcationsEvent implements NotificationListingEvent {
  const factory ClearNotifcationsEvent() = _$ClearNotifcationsEventImpl;
}

/// @nodoc
mixin _$NotificationListingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserNotificationModel>? notifications)
        getUserNotificationsState,
    required TResult Function() getNotificationFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserNotificationModel>? notifications)?
        getUserNotificationsState,
    TResult? Function()? getNotificationFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserNotificationModel>? notifications)?
        getUserNotificationsState,
    TResult Function()? getNotificationFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserNotificationsState value)
        getUserNotificationsState,
    required TResult Function(GetNotificationFailedState value)
        getNotificationFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserNotificationsState value)?
        getUserNotificationsState,
    TResult? Function(GetNotificationFailedState value)?
        getNotificationFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserNotificationsState value)?
        getUserNotificationsState,
    TResult Function(GetNotificationFailedState value)?
        getNotificationFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationListingStateCopyWith<$Res> {
  factory $NotificationListingStateCopyWith(NotificationListingState value,
          $Res Function(NotificationListingState) then) =
      _$NotificationListingStateCopyWithImpl<$Res, NotificationListingState>;
}

/// @nodoc
class _$NotificationListingStateCopyWithImpl<$Res,
        $Val extends NotificationListingState>
    implements $NotificationListingStateCopyWith<$Res> {
  _$NotificationListingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationListingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetUserNotificationsStateImplCopyWith<$Res> {
  factory _$$GetUserNotificationsStateImplCopyWith(
          _$GetUserNotificationsStateImpl value,
          $Res Function(_$GetUserNotificationsStateImpl) then) =
      __$$GetUserNotificationsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserNotificationModel>? notifications});
}

/// @nodoc
class __$$GetUserNotificationsStateImplCopyWithImpl<$Res>
    extends _$NotificationListingStateCopyWithImpl<$Res,
        _$GetUserNotificationsStateImpl>
    implements _$$GetUserNotificationsStateImplCopyWith<$Res> {
  __$$GetUserNotificationsStateImplCopyWithImpl(
      _$GetUserNotificationsStateImpl _value,
      $Res Function(_$GetUserNotificationsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationListingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = freezed,
  }) {
    return _then(_$GetUserNotificationsStateImpl(
      notifications: freezed == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<UserNotificationModel>?,
    ));
  }
}

/// @nodoc

class _$GetUserNotificationsStateImpl implements GetUserNotificationsState {
  const _$GetUserNotificationsStateImpl(
      {required final List<UserNotificationModel>? notifications})
      : _notifications = notifications;

  final List<UserNotificationModel>? _notifications;
  @override
  List<UserNotificationModel>? get notifications {
    final value = _notifications;
    if (value == null) return null;
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NotificationListingState.getUserNotificationsState(notifications: $notifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserNotificationsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notifications));

  /// Create a copy of NotificationListingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserNotificationsStateImplCopyWith<_$GetUserNotificationsStateImpl>
      get copyWith => __$$GetUserNotificationsStateImplCopyWithImpl<
          _$GetUserNotificationsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserNotificationModel>? notifications)
        getUserNotificationsState,
    required TResult Function() getNotificationFailedState,
  }) {
    return getUserNotificationsState(notifications);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserNotificationModel>? notifications)?
        getUserNotificationsState,
    TResult? Function()? getNotificationFailedState,
  }) {
    return getUserNotificationsState?.call(notifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserNotificationModel>? notifications)?
        getUserNotificationsState,
    TResult Function()? getNotificationFailedState,
    required TResult orElse(),
  }) {
    if (getUserNotificationsState != null) {
      return getUserNotificationsState(notifications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserNotificationsState value)
        getUserNotificationsState,
    required TResult Function(GetNotificationFailedState value)
        getNotificationFailedState,
  }) {
    return getUserNotificationsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserNotificationsState value)?
        getUserNotificationsState,
    TResult? Function(GetNotificationFailedState value)?
        getNotificationFailedState,
  }) {
    return getUserNotificationsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserNotificationsState value)?
        getUserNotificationsState,
    TResult Function(GetNotificationFailedState value)?
        getNotificationFailedState,
    required TResult orElse(),
  }) {
    if (getUserNotificationsState != null) {
      return getUserNotificationsState(this);
    }
    return orElse();
  }
}

abstract class GetUserNotificationsState implements NotificationListingState {
  const factory GetUserNotificationsState(
          {required final List<UserNotificationModel>? notifications}) =
      _$GetUserNotificationsStateImpl;

  List<UserNotificationModel>? get notifications;

  /// Create a copy of NotificationListingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserNotificationsStateImplCopyWith<_$GetUserNotificationsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetNotificationFailedStateImplCopyWith<$Res> {
  factory _$$GetNotificationFailedStateImplCopyWith(
          _$GetNotificationFailedStateImpl value,
          $Res Function(_$GetNotificationFailedStateImpl) then) =
      __$$GetNotificationFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNotificationFailedStateImplCopyWithImpl<$Res>
    extends _$NotificationListingStateCopyWithImpl<$Res,
        _$GetNotificationFailedStateImpl>
    implements _$$GetNotificationFailedStateImplCopyWith<$Res> {
  __$$GetNotificationFailedStateImplCopyWithImpl(
      _$GetNotificationFailedStateImpl _value,
      $Res Function(_$GetNotificationFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationListingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetNotificationFailedStateImpl implements GetNotificationFailedState {
  const _$GetNotificationFailedStateImpl();

  @override
  String toString() {
    return 'NotificationListingState.getNotificationFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotificationFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserNotificationModel>? notifications)
        getUserNotificationsState,
    required TResult Function() getNotificationFailedState,
  }) {
    return getNotificationFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserNotificationModel>? notifications)?
        getUserNotificationsState,
    TResult? Function()? getNotificationFailedState,
  }) {
    return getNotificationFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserNotificationModel>? notifications)?
        getUserNotificationsState,
    TResult Function()? getNotificationFailedState,
    required TResult orElse(),
  }) {
    if (getNotificationFailedState != null) {
      return getNotificationFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserNotificationsState value)
        getUserNotificationsState,
    required TResult Function(GetNotificationFailedState value)
        getNotificationFailedState,
  }) {
    return getNotificationFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserNotificationsState value)?
        getUserNotificationsState,
    TResult? Function(GetNotificationFailedState value)?
        getNotificationFailedState,
  }) {
    return getNotificationFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserNotificationsState value)?
        getUserNotificationsState,
    TResult Function(GetNotificationFailedState value)?
        getNotificationFailedState,
    required TResult orElse(),
  }) {
    if (getNotificationFailedState != null) {
      return getNotificationFailedState(this);
    }
    return orElse();
  }
}

abstract class GetNotificationFailedState implements NotificationListingState {
  const factory GetNotificationFailedState() = _$GetNotificationFailedStateImpl;
}
