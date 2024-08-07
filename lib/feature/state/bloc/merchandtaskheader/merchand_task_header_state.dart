part of 'merchand_task_header_bloc.dart';

@freezed
class MerchandTaskHeaderState with _$MerchandTaskHeaderState {
  const factory MerchandTaskHeaderState.getTaskHeaderSuccessState(
          {required List<GetTaskHeadersOutModel>? tasksheader}) =
      GetTaskHeaderSuccessState;

  const factory MerchandTaskHeaderState.taskHeaderFailedState() =
      TaskHeaderFailedState;

  factory MerchandTaskHeaderState.initial() =>
      const MerchandTaskHeaderState.getTaskHeaderSuccessState(tasksheader: []);
}
