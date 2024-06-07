part of 'inventory_reconfirm_header_bloc.dart';

@freezed
class InventoryReconfirmHeaderState with _$InventoryReconfirmHeaderState {
  const factory InventoryReconfirmHeaderState.getInventoryReconfirmHeaderState(
          {required List<InventoryReconfirmHeaderModel>? headers}) =
      GetInventoryReconfirmHeaderState;

  const factory InventoryReconfirmHeaderState.inventoryReconfirmheaderFailedState() =
      InventoryReconfirmheaderFailedState;

  factory InventoryReconfirmHeaderState.initial() =>
      const InventoryReconfirmHeaderState.getInventoryReconfirmHeaderState(
          headers: null);
}
