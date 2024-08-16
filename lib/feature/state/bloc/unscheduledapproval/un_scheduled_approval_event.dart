part of 'un_scheduled_approval_bloc.dart';

@freezed
class UnScheduledApprovalEvent with _$UnScheduledApprovalEvent {
  const factory UnScheduledApprovalEvent.approveUnScheduledVisitEvent(
          {required List<UnScheduledVisitApproveInModel> approve}) =
      ApproveUnScheduledVisitEvent;
  const factory UnScheduledApprovalEvent.rejectUnScheduledEvent(
          {required List<UnScheduledVisitApproveInModel> reject}) =
      RejectUnScheduledEvent;

  const factory UnScheduledApprovalEvent.unScheuledLoadingEvent() =
      UnScheuledLoadingEvent;
}
