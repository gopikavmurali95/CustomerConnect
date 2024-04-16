part of 'cus_items_bloc.dart';

@freezed
class CusItemsEvent with _$CusItemsEvent {
  const factory CusItemsEvent.getItemsEvent(
      {required String route, required String searchQuery}) = GetItemsEvent;
  const factory CusItemsEvent.clearItemsEvent() = ClearItemsEvent;
}
