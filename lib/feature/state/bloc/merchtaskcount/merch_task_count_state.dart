part of 'merch_task_count_bloc.dart';

@freezed
class MerchTaskCountState with _$MerchTaskCountState {
  const factory MerchTaskCountState.getTaskCountState(
      {required GetTaskCountModel? taskcount}) = GetTaskCountState;

  const factory MerchTaskCountState.taskCountFailedState() =
      TaskCountFailedState;

  factory MerchTaskCountState.initial() =>
      const MerchTaskCountState.getTaskCountState(taskcount: null);
}
