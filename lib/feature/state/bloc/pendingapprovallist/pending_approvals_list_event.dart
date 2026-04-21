part of 'pending_approvals_list_bloc.dart';

@freezed
class PendingApprovalsListEvent with _$PendingApprovalsListEvent {
  const factory PendingApprovalsListEvent.getPendingApprovalsListEvent({
    required String userId,
   
  }) = GetPendingApprovalsListEvent;

  const factory PendingApprovalsListEvent.clearPendingApprovalsList() =
      ClearPendingApprovalsList;
}