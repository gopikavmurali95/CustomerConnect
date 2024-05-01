part of 'credit_note_detail_bloc.dart';

@freezed
class CreditNoteDetailEvent with _$CreditNoteDetailEvent {
  const factory CreditNoteDetailEvent.getCreditNoteDetailsEvent(
      {required String reqId}) = GetCreditNoteDetailsEvent;

  const factory CreditNoteDetailEvent.clearCreditNoteDetailEvent() =
      ClearCreditNoteDetailEvent;
}
