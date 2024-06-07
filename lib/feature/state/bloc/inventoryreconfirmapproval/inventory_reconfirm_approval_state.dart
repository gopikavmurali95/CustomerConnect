part of 'inventory_reconfirm_approval_bloc.dart';

@freezed
class InventoryReconfirmApprovalState with _$InventoryReconfirmApprovalState {
  const factory InventoryReconfirmApprovalState.inventoryReconfirmApproveState(
          {required InventoryReconfirmApprovalRespModel? response}) =
      InventoryReconfirmApproveState;

  const factory InventoryReconfirmApprovalState.inventoryReconfirmApproveFailedState() =
      InventoryReconfirmApproveFailedState;

  const factory InventoryReconfirmApprovalState.inventoryReconfirmApproveLoadingState() =
      InventoryReconfirmApproveLoadingState;

  factory InventoryReconfirmApprovalState.initial() =>
      const InventoryReconfirmApprovalState.inventoryReconfirmApproveState(
          response: null);
}
