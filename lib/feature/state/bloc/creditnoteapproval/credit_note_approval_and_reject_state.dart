part of 'credit_note_approval_and_reject_bloc.dart';

@freezed
class CreditNoteApprovalAndRejectState with _$CreditNoteApprovalAndRejectState {
  const factory CreditNoteApprovalAndRejectState.creditNoteActionTakenState(
      {required DisputeApprovalRespModel? resp,
      required bool? isApprove}) = CreditNoteActionTakenState;
  const factory CreditNoteApprovalAndRejectState.creditNoteApprovalFailedState() =
      CreditNoteApprovalFailedState;

  const factory CreditNoteApprovalAndRejectState.creditNoteApprovalLoadingState() =
      CreditNoteApprovalLoadingState;

  factory CreditNoteApprovalAndRejectState.initial() =>
      const CreditNoteApprovalAndRejectState.creditNoteActionTakenState(
          resp: null, isApprove: null);
}
