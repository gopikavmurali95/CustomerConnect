part of 'sales_order_details_bloc.dart';

@freezed
class SalesOrderDetailsState with _$SalesOrderDetailsState {
  const factory SalesOrderDetailsState.getSalesOrderDetails(
          {required List<SalesOrderDetailsModel>? salesOrderDetails}) =
      GetSalesOrderDetails;

  const factory SalesOrderDetailsState.salesOrderDetailsFailed() =
      SalesOrderDetailsFailed;

  factory SalesOrderDetailsState.initial() =>
      const SalesOrderDetailsState.getSalesOrderDetails(
          salesOrderDetails: null);
}
