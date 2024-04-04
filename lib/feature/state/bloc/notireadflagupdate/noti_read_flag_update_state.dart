part of 'noti_read_flag_update_bloc.dart';

@freezed
class NotiReadFlagUpdateState with _$NotiReadFlagUpdateState {
  const factory NotiReadFlagUpdateState.updateNotiReadFlagUpdateState(
          {required NotificationReplayOutModel? update}) =
      UpdateNotiReadFlagUpdateState;

  const factory NotiReadFlagUpdateState.notiReadUpdateFailedState() =
      NotiReadUpdateFailedState;

  factory NotiReadFlagUpdateState.initial() =>
      const NotiReadFlagUpdateState.updateNotiReadFlagUpdateState(update: null);
}
