part of 'jourey_plan_approval_bloc.dart';

@freezed
class JoureyPlanApprovalState with _$JoureyPlanApprovalState {
  const factory JoureyPlanApprovalState.approveJourneyPlanState(
          {required JoutneyPlanApprovalOutModel? approve}) =
      ApproveJourneyPlanState;

  const factory JoureyPlanApprovalState.approveJourneyPlanFailedState() =
      ApproveJourneyPlanFailedState;
  const factory JoureyPlanApprovalState.approveJourneyPlanLoadingState() =
      ApproveJourneyPlanLoadingState;

  factory JoureyPlanApprovalState.initial() =>
      const JoureyPlanApprovalState.approveJourneyPlanState(approve: null);
}
