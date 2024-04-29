part of 'dispute_note_approval_and_reject_bloc.dart';

@freezed
class DisputeNoteApprovalAndRejectState
    with _$DisputeNoteApprovalAndRejectState {
  const factory DisputeNoteApprovalAndRejectState.disputeNoteApprovalOrRejectState(
      {required DisputeApprovalRespModel? resp,
      required bool? isApprove}) = DisputeNoteApprovalOrRejectState;

  const factory DisputeNoteApprovalAndRejectState.disputeApprovalFailedState() =
      DisputeApprovalFailedState;

  const factory DisputeNoteApprovalAndRejectState.disputeApprovalLoadingState() =
      DisputeApprovalLoadingState;

  factory DisputeNoteApprovalAndRejectState.initial() =>
      const DisputeNoteApprovalAndRejectState.disputeNoteApprovalOrRejectState(
          resp: null, isApprove: null);
}
