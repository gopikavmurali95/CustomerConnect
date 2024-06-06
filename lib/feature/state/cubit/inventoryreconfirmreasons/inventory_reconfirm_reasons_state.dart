part of 'inventory_reconfirm_reasons_cubit.dart';

@freezed
class InventoryReconfirmReasonsState with _$InventoryReconfirmReasonsState {
  const factory InventoryReconfirmReasonsState.getInventoryReconfirmResonsState(
          {required List<InventoryReconfirmReasonModel>? reasons}) =
      GetInventoryReconfirmResonsState;

  const factory InventoryReconfirmReasonsState.inventoryReconfirmReasonsFailedState() =
      InventoryReconfirmReasonsFailedState;

  factory InventoryReconfirmReasonsState.initial() =>
      const InventoryReconfirmReasonsState.getInventoryReconfirmResonsState(
          reasons: null);
}
