part of 'sales_order_details_bloc.dart';

@freezed
class SalesOrderDetailsEvent with _$SalesOrderDetailsEvent {
  const factory SalesOrderDetailsEvent.getSalesOrderDetailsEvent(
      {required SalesOrderDetailsInparasModel salesin,
      required String searchQuery}) = GetSalesOrderDetailsEvent;

  const factory SalesOrderDetailsEvent.clearSalesOrderDetails() =
      ClearSalesOrderDetails;
}
