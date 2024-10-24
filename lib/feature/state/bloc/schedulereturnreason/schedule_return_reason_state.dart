part of 'schedule_return_reason_bloc.dart';

@freezed
class ScheduleReturnReasonState with _$ScheduleReturnReasonState {
  const factory ScheduleReturnReasonState.getScheduleReturnReasonState(
          {required List<ScheduleReturnApprovalReasonModel>? reason}) =
      GetScheduleReturnReasonState;

  const factory ScheduleReturnReasonState.scheduleReturnReasonFailedState() =
      ScheduleReturnReasonFailedState;

  factory ScheduleReturnReasonState.initial() =>
      const ScheduleReturnReasonState.getScheduleReturnReasonState(
          reason: null);
}
