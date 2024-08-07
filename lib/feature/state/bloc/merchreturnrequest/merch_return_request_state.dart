part of 'merch_return_request_bloc.dart';

@freezed
class MerchReturnRequestState with _$MerchReturnRequestState {
  const factory MerchReturnRequestState.getMerchReturnReqDataState(
          {required List<MerchReturnRequestModel>? returnData}) =
      GetMerchReturnReqDataState;

  const factory MerchReturnRequestState.merchReturnRequestDataFailed() =
      MerchReturnRequestDataFailed;

  factory MerchReturnRequestState.initial() =>
      const MerchReturnRequestState.getMerchReturnReqDataState(
          returnData: null);
}
