part of 'journey_plan_header_bloc.dart';

@freezed
class JourneyPlanHeaderState with _$JourneyPlanHeaderState {
  const factory JourneyPlanHeaderState.getAllJourneyPlanHeadersState(
          {required List<JourneyPlanHeaderModel>? headers}) =
      GetAllJourneyPlanHeadersState;

  const factory JourneyPlanHeaderState.journeyPlanHeadersFailedState() =
      JourneyPlanHeadersFailedState;

  factory JourneyPlanHeaderState.initial() =>
      const JourneyPlanHeaderState.getAllJourneyPlanHeadersState(headers: null);
}
