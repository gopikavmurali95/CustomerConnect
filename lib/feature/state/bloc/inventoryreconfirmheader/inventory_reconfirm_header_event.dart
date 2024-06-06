part of 'inventory_reconfirm_header_bloc.dart';

@freezed
class InventoryReconfirmHeaderEvent with _$InventoryReconfirmHeaderEvent {
  const factory InventoryReconfirmHeaderEvent.getInventoryReconfirmHeadersEvent(
      {required String mode,
      required String searchQuery}) = GetInventoryReconfirmHeadersEvent;

  const factory InventoryReconfirmHeaderEvent.clearInventoryReconfirmHeaders() =
      ClearInventoryReconfirmHeaders;
}
