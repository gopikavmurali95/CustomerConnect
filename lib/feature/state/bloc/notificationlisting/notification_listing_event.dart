part of 'notification_listing_bloc.dart';

@freezed
class NotificationListingEvent with _$NotificationListingEvent {
  const factory NotificationListingEvent.getUserNotificationsEvent(
      {required String userID}) = GetUserNotificationsEvent;

  const factory NotificationListingEvent.clearNotifcationsEvent() =
      ClearNotifcationsEvent;
}
