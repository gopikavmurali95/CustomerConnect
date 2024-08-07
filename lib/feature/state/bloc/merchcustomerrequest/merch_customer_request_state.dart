part of 'merch_customer_request_bloc.dart';

@freezed
class MerchCustomerRequestState with _$MerchCustomerRequestState {
  const factory MerchCustomerRequestState.getMerchCustomerRequestHeadersState(
          {required List<MerchCustomerRequestHeaderModel>? headers}) =
      GetMerchCustomerRequestHeadersState;
  const factory MerchCustomerRequestState.merchCustomerRequestsFailedState() =
      MerchCustomerRequestsFailedState;

  factory MerchCustomerRequestState.initial() =>
      const MerchCustomerRequestState.getMerchCustomerRequestHeadersState(
          headers: null);
}
