part of 'notification_replay_bloc_bloc.dart';

@freezed
class NotificationReplayBlocEvent with _$NotificationReplayBlocEvent {
  const factory NotificationReplayBlocEvent.sendNotiReplayEvent(
      {required NotificationReplayInModel replay}) = SendNotiReplayEvent;

  const factory NotificationReplayBlocEvent.clearNotiReplayState() =
      ClearNotiReplayState;
}
