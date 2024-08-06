part of 'out_of_stock_items_bloc.dart';

@freezed
class OutOfStockItemsState with _$OutOfStockItemsState {
  const factory OutOfStockItemsState.getOutOfSockItemsState(
      {required List<OutOfStockItemsModel>? headers}) = GetOutOfSockItemsState;
  const factory OutOfStockItemsState.outOfStockItemsFailedState() =
      OutOfStockItemsFailedState;

  factory OutOfStockItemsState.initial() =>
      const OutOfStockItemsState.getOutOfSockItemsState(headers: null);
}
