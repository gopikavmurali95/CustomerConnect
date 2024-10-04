part of 'cus_insight_customers_pagination_cubit.dart';

@freezed
class CusInsightCustomersPaginationState
    with _$CusInsightCustomersPaginationState {
  const factory CusInsightCustomersPaginationState.getCustomersHeaderPageState(
      {required List<CusInsCustomersModel>? headers,
      required bool isLoading}) = GetCustomersHeaderPageState;

  factory CusInsightCustomersPaginationState.initial() =>
      const CusInsightCustomersPaginationState.getCustomersHeaderPageState(
          headers: null, isLoading: false);
}
