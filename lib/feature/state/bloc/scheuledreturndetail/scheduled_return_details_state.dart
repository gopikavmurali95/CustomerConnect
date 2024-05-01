part of 'scheduled_return_details_bloc.dart';

@freezed
class ScheduledReturnDetailsState with _$ScheduledReturnDetailsState {
  const factory ScheduledReturnDetailsState.getScheduledReturnDetailState(
          {required List<SheduledReturnDetailModel>? details}) =
      GetScheduledReturnDetailState;

  const factory ScheduledReturnDetailsState.scheduledReturnDetailFailedState() =
      ScheduledReturnDetailFailedState;

  factory ScheduledReturnDetailsState.initial() =>
      const ScheduledReturnDetailsState.getScheduledReturnDetailState(
          details: null);
}
