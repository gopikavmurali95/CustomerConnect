part of 'inventory_reconfirm_detail_bloc.dart';

@freezed
class InventoryReconfirmDetailEvent with _$InventoryReconfirmDetailEvent {
  const factory InventoryReconfirmDetailEvent.getInventoryReconfirmDetailEvent(
      {required String reqID,
      required String searchQuery}) = GetInventoryReconfirmDetailEvent;

  const factory InventoryReconfirmDetailEvent.clearInventoryReconfirmDetailEvent() =
      ClearInventoryReconfirmDetailEvent;
}
