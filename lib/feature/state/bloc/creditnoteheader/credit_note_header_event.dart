part of 'credit_note_header_bloc.dart';

@freezed
class CreditNoteHeaderEvent with _$CreditNoteHeaderEvent {
  const factory CreditNoteHeaderEvent.getAllCreditNoteHeadersEvent(
      {required String userId,
      required String searchQuery,
      required String mode}) = GetAllCreditNoteHeadersEvent;

  const factory CreditNoteHeaderEvent.clearCreditNoteHeadersEvent() =
      ClearCreditNoteHeadersEvent;
}
