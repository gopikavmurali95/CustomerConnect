part of 'inventory_reconfirm_detail_bloc.dart';

@freezed
class InventoryReconfirmDetailState with _$InventoryReconfirmDetailState {
  const factory InventoryReconfirmDetailState.getInventoryReconfirmDetailState(
          {required List<InventoryReconfirmDetailModel>? details}) =
      GsetInventoryReconfirmDetailState;

  const factory InventoryReconfirmDetailState.inventoryReconfirmDetailFailedState() =
      InventoryReconfirmDetailFailedState;

  factory InventoryReconfirmDetailState.initial() =>
      const InventoryReconfirmDetailState.getInventoryReconfirmDetailState(
          details: null);
}
