part of 'inventory_reconfirm_approval_bloc.dart';

@freezed
class InventoryReconfirmApprovalEvent with _$InventoryReconfirmApprovalEvent {
  const factory InventoryReconfirmApprovalEvent.approveInventoryReconfirmEvent(
          {required InventoryReconfirmApproveInModel approve}) =
      ApproveInventoryReconfirmEvent;

  const factory InventoryReconfirmApprovalEvent.inventoryReconfirmLoadingEvent() =
      InventoryReconfirmLoadingEvent;
}
