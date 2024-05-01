part of 'scheduled_return_details_bloc.dart';

@freezed
class ScheduledReturnDetailsEvent with _$ScheduledReturnDetailsEvent {
  const factory ScheduledReturnDetailsEvent.getAllScheduledReturnDetailsEvent(
      {required String reqID}) = GetAllScheduledReturnDetailsEvent;

  const factory ScheduledReturnDetailsEvent.clearScheduledReturnDetailsEvent() =
      ClearScheduledReturnDetailsEvent;
}
