part of 'dispute_note_header_bloc.dart';

@freezed
class DisputeNoteHeaderState with _$DisputeNoteHeaderState {
  const factory DisputeNoteHeaderState.getDisputeNoteHeaderState(
          {required List<DisputeNoteHeaderModel>? headers}) =
      GetDisputeNoteHeaderState;

  const factory DisputeNoteHeaderState.disputeNoteHeaderFailedState() =
      DisputeNoteHeaderFailedState;

  factory DisputeNoteHeaderState.initial() =>
      const DisputeNoteHeaderState.getDisputeNoteHeaderState(headers: null);
}
