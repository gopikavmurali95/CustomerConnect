part of 'out_of_stock_item_customers_bloc.dart';

@freezed
class OutOfStockItemCustomersEvent with _$OutOfStockItemCustomersEvent {
  const factory OutOfStockItemCustomersEvent.getOutOfStockItemCustomersEvent(
      {required String searchQuery,
      required String osiID}) = GetOutOfStockItemCustomersEvent;

  const factory OutOfStockItemCustomersEvent.clearOutOfStockItemCustomersEvent() =
      ClearOutOfStockItemCustomersEvent;
}
