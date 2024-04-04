part of 'noti_read_flag_update_bloc.dart';

@freezed
class NotiReadFlagUpdateEvent with _$NotiReadFlagUpdateEvent {
  const factory NotiReadFlagUpdateEvent.updateNotiReadFLagEvent(
      {required String rntId}) = UpdateNotiReadFLagEvent;

  const factory NotiReadFlagUpdateEvent.clearreadFlagState() =
      ClearreadFlagState;
}
