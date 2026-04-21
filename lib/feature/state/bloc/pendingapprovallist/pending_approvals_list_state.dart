part of 'pending_approvals_list_bloc.dart';

@freezed
class PendingApprovalsListState with _$PendingApprovalsListState {
  const factory PendingApprovalsListState.getPendingApprovalsListState(
          {required List<PendingApprovalsModel>? approvals}) =
      GetPendingApprovalsListState;

  const factory PendingApprovalsListState.pendingApprovalsListFailedState() =
      PendingApprovalsListFailedState;

  factory PendingApprovalsListState.initial() =>
      const PendingApprovalsListState.getPendingApprovalsListState(
          approvals: null);
}
