part of 'credit_note_header_bloc.dart';

@freezed
class CreditNoteHeaderState with _$CreditNoteHeaderState {
  const factory CreditNoteHeaderState.getCreditNoteHeadersState(
          {required List<CreditNoteHeaderModel>? headers}) =
      GetCreditNoteHeadersState;
  const factory CreditNoteHeaderState.creditNoteHeaderFailedState() =
      CreditNoteHeaderFailedState;

  factory CreditNoteHeaderState.initial() =>
      const CreditNoteHeaderState.getCreditNoteHeadersState(headers: null);
}
