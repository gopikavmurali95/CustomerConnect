part of 'credit_note_approval_and_reject_bloc.dart';

@freezed
class CreditNoteApprovalAndRejectEvent with _$CreditNoteApprovalAndRejectEvent {
  const factory CreditNoteApprovalAndRejectEvent.creditNoteTakeActionEvent(
          {required DisputeInvoiceApproveInModel approve}) =
      CreditNoteTakeActionEvent;

  const factory CreditNoteApprovalAndRejectEvent.creditNoteApprovalLoadingEvent() =
      CreditNoteApprovalLoadingEvent;

  const factory CreditNoteApprovalAndRejectEvent.creditNoteApprovalClearEvent() =
      CreditNoteApprovalClearEvent;
}
