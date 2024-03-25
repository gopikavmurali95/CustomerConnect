part of 'sales_order_count_bloc.dart';

@freezed
class SalesOrderCountState with _$SalesOrderCountState {
  const factory SalesOrderCountState.salesOrderCountSuccessState(
      {required SalesOderCountModel? salesord}) = SalesOrderCountSuccessState;

  const factory SalesOrderCountState.salesOrderCountFailedState() =
      SalesOrderCountFailedState;

  factory SalesOrderCountState.initial() =>
      const SalesOrderCountState.salesOrderCountSuccessState(salesord: null);
}
