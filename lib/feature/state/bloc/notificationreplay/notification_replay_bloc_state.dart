part of 'notification_replay_bloc_bloc.dart';

@freezed
class NotificationReplayBlocState with _$NotificationReplayBlocState {
  const factory NotificationReplayBlocState.sendNotiReplayState(
      {required NotificationReplayOutModel? replay}) = SendNotiReplayState;
  const factory NotificationReplayBlocState.notiReplayFailedState() =
      NotiReplayFailedState;

  factory NotificationReplayBlocState.initial() =>
      const NotificationReplayBlocState.sendNotiReplayState(replay: null);
}
