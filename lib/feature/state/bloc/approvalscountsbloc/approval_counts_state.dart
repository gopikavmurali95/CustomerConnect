part of 'approval_counts_bloc.dart';

@freezed
class ApprovalCountsState with _$ApprovalCountsState {
  const factory ApprovalCountsState.getApprovalsCount(
      {required ApprovalCountModel? approvalCounts}) = GetApprovalsCount;

  const factory ApprovalCountsState.getApprovalCountsFailed() =
      GetApprovalCountsFailed;

  factory ApprovalCountsState.initial() =>
      const ApprovalCountsState.getApprovalsCount(approvalCounts: null);
}
