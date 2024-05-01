part of 'credit_note_header_bloc.dart';

@freezed
class CreditNoteHeaderEvent with _$CreditNoteHeaderEvent {
  const factory CreditNoteHeaderEvent.getAllCreditNoteHeadersEvent(
      {required String userId}) = GetAllCreditNoteHeadersEvent;

  const factory CreditNoteHeaderEvent.clearCreditNoteHeadersEvent() =
      ClearCreditNoteHeadersEvent;
}
