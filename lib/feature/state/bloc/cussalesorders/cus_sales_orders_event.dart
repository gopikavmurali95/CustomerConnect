part of 'cus_sales_orders_bloc.dart';

@freezed
class CusSalesOrdersEvent with _$CusSalesOrdersEvent {
  const factory CusSalesOrdersEvent.getSalesOrdersEvent(
      {required SalesOrdersInModel salesIn}) = GetSalesOrdersEvent;
  const factory CusSalesOrdersEvent.clearsalesOrdersEvent() =
      ClearsalesOrdersEvent;
}
