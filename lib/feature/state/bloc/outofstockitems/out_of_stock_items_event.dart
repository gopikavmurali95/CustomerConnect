part of 'out_of_stock_items_bloc.dart';

@freezed
class OutOfStockItemsEvent with _$OutOfStockItemsEvent {
  const factory OutOfStockItemsEvent.getOutOfStockItemsEvent(
      {required String searchQuery,
      required String fromDate,
      required String toDate}) = GetOutOfStockItemsEvent;

  const factory OutOfStockItemsEvent.clearOutOfStockItems() =
      ClearOutOfStockItems;
}
