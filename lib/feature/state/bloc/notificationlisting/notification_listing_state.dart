part of 'notification_listing_bloc.dart';

@freezed
class NotificationListingState with _$NotificationListingState {
  const factory NotificationListingState.getUserNotificationsState(
          {required List<UserNotificationModel>? notifications}) =
      GetUserNotificationsState;
  const factory NotificationListingState.getNotificationFailedState() =
      GetNotificationFailedState;

  factory NotificationListingState.initial() =>
      const NotificationListingState.getUserNotificationsState(
          notifications: null);
}
