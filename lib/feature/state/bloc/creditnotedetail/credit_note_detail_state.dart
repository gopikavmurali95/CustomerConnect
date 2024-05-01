part of 'credit_note_detail_bloc.dart';

@freezed
class CreditNoteDetailState with _$CreditNoteDetailState {
  const factory CreditNoteDetailState.getCreditNoteDetailState(
          {required List<CreditNoteDetailModel>? details}) =
      GetCreditNoteDetailState;

  const factory CreditNoteDetailState.creditNoteDetailFailedState() =
      CreditNoteDetailFailedState;

  factory CreditNoteDetailState.initial() =>
      const CreditNoteDetailState.getCreditNoteDetailState(details: null);
}
