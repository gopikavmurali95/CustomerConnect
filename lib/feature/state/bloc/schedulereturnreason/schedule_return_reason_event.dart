part of 'schedule_return_reason_bloc.dart';

@freezed
class ScheduleReturnReasonEvent with _$ScheduleReturnReasonEvent {
  const factory ScheduleReturnReasonEvent.scheduleReturnSuccessEvent(
      {required String rsnType}) = ScheduleReturnSuccessEvent;

  const factory ScheduleReturnReasonEvent.clearScheduleReasonEvent() =
      ClearScheduleReasonEvent;
}
