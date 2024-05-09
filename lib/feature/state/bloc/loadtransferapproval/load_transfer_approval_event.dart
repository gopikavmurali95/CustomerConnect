part of 'load_transfer_approval_bloc.dart';

@freezed
class LoadTransferApprovalEvent with _$LoadTransferApprovalEvent {
  const factory LoadTransferApprovalEvent.approveLoadtransferEvent(
          {required LoadTransferApprovalInModel approve}) =
      ApproveLoadtransferEvent;

  const factory LoadTransferApprovalEvent.addLoadTransferLoadingEvent() =
      AddLoadTransferLoadingEvent;

  const factory LoadTransferApprovalEvent.clearLoadTransferApprovalEvent() =
      ClearLoadTransferApprovalEvent;
}
