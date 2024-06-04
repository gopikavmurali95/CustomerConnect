part of 'dispute_note_header_bloc.dart';

@freezed
class DisputeNoteHeaderEvent with _$DisputeNoteHeaderEvent {
  const factory DisputeNoteHeaderEvent.getDisputeNoteHeadersEvent(
      {required String userID,
      required String mode,
      required String searchQuery}) = GetDisputeNoteHeadersEvent;

  const factory DisputeNoteHeaderEvent.clearDisputeNoteHEaderEvent() =
      ClearDisputeNoteHEaderEvent;
}
