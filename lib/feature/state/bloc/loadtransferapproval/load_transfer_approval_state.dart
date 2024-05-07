part of 'load_transfer_approval_bloc.dart';

@freezed
class LoadTransferApprovalState with _$LoadTransferApprovalState {
  const factory LoadTransferApprovalState.approveLoadTransferState(
          {required LoadTransferApprovalOutModel? response}) =
      ApproveLoadTransferState;

  const factory LoadTransferApprovalState.loadTransferApprovalFailedState() =
      LoadTransferApprovalFailedState;

  const factory LoadTransferApprovalState.loadTransferApprovalLoadingState() =
      LoadTransferApprovalLoadingState;

  factory LoadTransferApprovalState.initial() =>
      const LoadTransferApprovalState.approveLoadTransferState(response: null);
}
