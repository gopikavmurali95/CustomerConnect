part of 'credit_note_approval_level_status_cubit.dart';

@freezed
class CreditNoteApprovalLevelStatusState
    with _$CreditNoteApprovalLevelStatusState {
  const factory CreditNoteApprovalLevelStatusState.creditNoteApprovalStatusLevelState(
      {required DisputeApprovalStatusModel? statuslevel,
      required bool isApproval}) = CreditNoteApprovalStatusLevelState;
  const factory CreditNoteApprovalLevelStatusState.creditNoteApprovalLevelFailedState() =
      CreditNoteApprovalLevelFailedState;

  const factory CreditNoteApprovalLevelStatusState.creditNoteApprovalLevelLoadingState() =
      CreditNoteApprovalLevelLoadingState;

  factory CreditNoteApprovalLevelStatusState.initial() =>
      const CreditNoteApprovalLevelStatusState
          .creditNoteApprovalStatusLevelState(
          statuslevel: null, isApproval: false);
}
