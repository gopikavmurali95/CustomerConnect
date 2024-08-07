part of 'merch_credit_note_request_bloc.dart';

@freezed
class MerchCreditNoteRequestEvent with _$MerchCreditNoteRequestEvent {
  const factory MerchCreditNoteRequestEvent.getMerchCreditNoteRequestEvent(
      {required String fromDate,
      required String toDate,
      required String status,
      required String searchQuery}) = GetMerchCreditNoteRequestEvent;

  const factory MerchCreditNoteRequestEvent.clearMerchCreditNoteRequestData() =
      ClearMerchCreditNoteRequestData;
}
