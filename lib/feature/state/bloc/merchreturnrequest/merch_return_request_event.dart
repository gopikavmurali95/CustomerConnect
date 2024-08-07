part of 'merch_return_request_bloc.dart';

@freezed
class MerchReturnRequestEvent with _$MerchReturnRequestEvent {
  const factory MerchReturnRequestEvent.getMErchReturnRequestDataEvent(
      {required String fromDate,
      required String toDate,
      required String status,
      required String searchQuery}) = GetMErchReturnRequestDataEvent;

  const factory MerchReturnRequestEvent.clearMerchReturnRequestData() =
      ClearMerchReturnRequestData;
}
