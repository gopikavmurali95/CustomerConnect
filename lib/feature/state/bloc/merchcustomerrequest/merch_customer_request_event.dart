part of 'merch_customer_request_bloc.dart';

@freezed
class MerchCustomerRequestEvent with _$MerchCustomerRequestEvent {
  const factory MerchCustomerRequestEvent.getMerchCustomerRequestEvent(
      {required String fromDate,
      required String toDate,
      required String status,
      required String searchQuery}) = GetMerchCustomerRequestEvent;

  const factory MerchCustomerRequestEvent.clearMerchCustomerRequestEvent() =
      ClearMerchCustomerRequestEvent;
}
