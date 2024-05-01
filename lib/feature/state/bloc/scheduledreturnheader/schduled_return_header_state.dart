part of 'schduled_return_header_bloc.dart';

@freezed
class SchduledReturnHeaderState with _$SchduledReturnHeaderState {
  const factory SchduledReturnHeaderState.getScheduledReturnHeadersState(
          {required List<SheduledReturnHeaderModel>? headers}) =
      GetScheduledReturnHeadersState;

  const factory SchduledReturnHeaderState.scheduledRetunrHEadersFailedState() =
      ScheduledRetunrHEadersFailedState;

  factory SchduledReturnHeaderState.initial() =>
      const SchduledReturnHeaderState.getScheduledReturnHeadersState(
          headers: null);
}
