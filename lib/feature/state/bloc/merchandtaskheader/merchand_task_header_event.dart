part of 'merchand_task_header_bloc.dart';

@freezed
class MerchandTaskHeaderEvent with _$MerchandTaskHeaderEvent {
  const factory MerchandTaskHeaderEvent.taskHeaderGetEvent(
      {required GetTaskHeaderInModel tasks,
      required String searchQuery}) = TaskHeaderGetEvent;

  const factory MerchandTaskHeaderEvent.taskHeaderClearEvent() =
      TaskHeaderClearEvent;
}
