part of 'cus_sales_orders_bloc.dart';

@freezed
class CusSalesOrdersState with _$CusSalesOrdersState {
  const factory CusSalesOrdersState.getsalesOrdersState(
      {required List<SalesOrdersModel>? orders}) = GetsalesOrdersState;

  const factory CusSalesOrdersState.salesOrdersFailedState() =
      SalesOrdersFailedState;

  factory CusSalesOrdersState.initial() =>
      const CusSalesOrdersState.getsalesOrdersState(orders: null);
}
