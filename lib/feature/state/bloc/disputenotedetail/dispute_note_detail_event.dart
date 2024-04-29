part of 'dispute_note_detail_bloc.dart';

@freezed
class DisputeNoteDetailEvent with _$DisputeNoteDetailEvent {
  const factory DisputeNoteDetailEvent.getDisputeNoteDetailEvent(
      {required String reqId}) = GetDisputeNoteDetailEvent;

  const factory DisputeNoteDetailEvent.clearDisputeNoteDetailEvent() =
      ClearDisputeNoteDetailEvent;
}
