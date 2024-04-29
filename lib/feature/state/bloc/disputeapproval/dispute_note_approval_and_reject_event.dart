part of 'dispute_note_approval_and_reject_bloc.dart';

@freezed
class DisputeNoteApprovalAndRejectEvent
    with _$DisputeNoteApprovalAndRejectEvent {
  const factory DisputeNoteApprovalAndRejectEvent.approveDisputeNoteEvent(
          {required DisputeInvoiceApproveInModel approve}) =
      ApproveDisputeNoteEvent;

  const factory DisputeNoteApprovalAndRejectEvent.rejectDisputeNoteEvent(
      {required DisputeInvoiceApproveInModel reject}) = RejectDisputeNoteEvent;

  const factory DisputeNoteApprovalAndRejectEvent.addDisputeNoteApprovalLoadingEvent() =
      AddDisputeNoteApprovalLoadingEvent;

  const factory DisputeNoteApprovalAndRejectEvent.clearDisputeApprovalEvent() =
      ClearDisputeApprovalEvent;
}
