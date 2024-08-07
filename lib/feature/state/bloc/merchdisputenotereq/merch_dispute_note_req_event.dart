part of 'merch_dispute_note_req_bloc.dart';

@freezed
class MerchDisputeNoteReqEvent with _$MerchDisputeNoteReqEvent {
  const factory MerchDisputeNoteReqEvent.getDisputeNoteDataEvent(
      {required String fromDate,
      required String toDate,
      required String status,
      required String searchQuery}) = GetDisputeNoteDataEvent;
  const factory MerchDisputeNoteReqEvent.clearDisputeNoteData() =
      ClearDisputeNoteData;
}
