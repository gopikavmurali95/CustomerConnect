part of 'jourey_plan_approval_bloc.dart';

@freezed
class JoureyPlanApprovalEvent with _$JoureyPlanApprovalEvent {
  const factory JoureyPlanApprovalEvent.approveJourneyPlanEvent(
      {required JourneyPlanApprovalInModel approve}) = ApproveJourneyPlanEvent;

  const factory JoureyPlanApprovalEvent.rejectaJOurneyPlanEvent(
      {required JourneyPlanApprovalInModel reject}) = RejectaJOurneyPlanEvent;

  const factory JoureyPlanApprovalEvent.addJourneyPlanApprovalLoadingEvent() =
      AddJourneyPlanApprovalLoadingEvent;

  const factory JoureyPlanApprovalEvent.clearJourneyPlanApprovalEvent() =
      ClearJourneyPlanApprovalEvent;
}
