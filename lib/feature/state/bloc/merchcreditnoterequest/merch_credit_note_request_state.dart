part of 'merch_credit_note_request_bloc.dart';

@freezed
class MerchCreditNoteRequestState with _$MerchCreditNoteRequestState {
  const factory MerchCreditNoteRequestState.getMerchCreditNoteRequestState(
          {required List<MerchCreditNoteRequestModel>? creditNoteState}) =
      GetMerchCreditNoteRequestState;

  const factory MerchCreditNoteRequestState.merchCreditRequestFailed() =
      MerchCreditRequestFailed;

  factory MerchCreditNoteRequestState.initial() =>
      const MerchCreditNoteRequestState.getMerchCreditNoteRequestState(
          creditNoteState: null);
}
