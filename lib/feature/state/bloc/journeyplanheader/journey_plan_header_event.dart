part of 'journey_plan_header_bloc.dart';

@freezed
class JourneyPlanHeaderEvent with _$JourneyPlanHeaderEvent {
  const factory JourneyPlanHeaderEvent.getAllJourneyPlanHeadersEvent(
      {required String userID,
      required String mode,
      required String searchQuery}) = GetAllJourneyPlanHeadersEvent;

  const factory JourneyPlanHeaderEvent.clearJourneyPlanHeadersEvent() =
      ClearJourneyPlanHeadersEvent;
}
