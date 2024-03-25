part of 'sales_order_count_bloc.dart';

@freezed
class SalesOrderCountEvent with _$SalesOrderCountEvent {
  const factory SalesOrderCountEvent.salesOrderCountSuccessEvent(
      {required String userID}) = SalesOrderCountSuccessEvent;
  const factory SalesOrderCountEvent.salesOrderCountFailedEvent() =
      SalesOrderCountFailedEvent;
}
