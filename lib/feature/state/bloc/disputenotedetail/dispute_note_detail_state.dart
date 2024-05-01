part of 'dispute_note_detail_bloc.dart';

@freezed
class DisputeNoteDetailState with _$DisputeNoteDetailState {
  const factory DisputeNoteDetailState.getDisputeNoteDetailState(
          {required List<DisputeNoteDetailModel>? details}) =
      GetDisputeNoteDetailState;

  const factory DisputeNoteDetailState.getdisputenoteDetailFailedState() =
      GetdisputenoteDetailFailedState;

  factory DisputeNoteDetailState.initial() =>
      const DisputeNoteDetailState.getDisputeNoteDetailState(details: null);
}
