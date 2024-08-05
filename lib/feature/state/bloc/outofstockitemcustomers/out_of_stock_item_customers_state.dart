part of 'out_of_stock_item_customers_bloc.dart';

@freezed
class OutOfStockItemCustomersState with _$OutOfStockItemCustomersState {
  const factory OutOfStockItemCustomersState.getOutOfStockItemCustomersState(
          {required List<OutOfStockItemsCustomersModel>? details}) =
      GetOutOfStockItemCustomersState;
  const factory OutOfStockItemCustomersState.outofStateItemCustomersFailedState() =
      OutofStateItemCustomersFailedState;

  factory OutOfStockItemCustomersState.initial() =>
      const OutOfStockItemCustomersState.getOutOfStockItemCustomersState(
          details: null);
}
