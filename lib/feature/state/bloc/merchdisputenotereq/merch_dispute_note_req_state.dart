part of 'merch_dispute_note_req_bloc.dart';

@freezed
class MerchDisputeNoteReqState with _$MerchDisputeNoteReqState {
  const factory MerchDisputeNoteReqState.getMerchDisputeDataState(
          {required List<MerchDisputeRequestModel>? data}) =
      GetMerchDisputeDataState;

  const factory MerchDisputeNoteReqState.merchDisputeNoteDataFailed() =
      MerchDisputeNoteDataFailed;

  factory MerchDisputeNoteReqState.initial() =>
      const MerchDisputeNoteReqState.getMerchDisputeDataState(data: null);
}
