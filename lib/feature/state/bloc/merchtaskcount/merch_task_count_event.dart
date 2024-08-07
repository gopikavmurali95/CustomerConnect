part of 'merch_task_count_bloc.dart';

@freezed
class MerchTaskCountEvent with _$MerchTaskCountEvent {
  const factory MerchTaskCountEvent.getTaskCountEvent(
      {required String fromDate, required String toDate}) = GetTaskCountEvent;

  const factory MerchTaskCountEvent.taskCountClearEvent() = TaskCountClearEvent;
}
