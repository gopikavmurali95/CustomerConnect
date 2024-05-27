part of 'approval_counts_bloc.dart';

@freezed
class ApprovalCountsEvent with _$ApprovalCountsEvent {
  const factory ApprovalCountsEvent.getApprovalsCountEvent(
      {required String userID}) = GetApprovalsCountEvent;

  const factory ApprovalCountsEvent.clearApprovalCounts() = ClearApprovalCounts;
}
