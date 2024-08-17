part of 'un_scheduled_approval_bloc.dart';

@freezed
class UnScheduledApprovalState with _$UnScheduledApprovalState {
  const factory UnScheduledApprovalState.approveUnScheduledVisitState(
          {required UnScheduledApprovalRespModel? resp}) =
      ApproveUnScheduledVisitState;

  const factory UnScheduledApprovalState.rejectUnScheduledVisitState(
          {required UnScheduledApprovalRespModel? resp}) =
      RejectUnScheduledVisitState;
  const factory UnScheduledApprovalState.unScheduledApprovalLoadingEvent() =
      UnScheduledApprovalLoadingEvent;
  const factory UnScheduledApprovalState.unScheduledVisitApprovalFailedState() =
      UnScheduledVisitApprovalFailedState;

  factory UnScheduledApprovalState.initial() =>
      const UnScheduledApprovalState.approveUnScheduledVisitState(resp: null);
}
