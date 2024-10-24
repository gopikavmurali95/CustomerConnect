part of 'cus_items_bloc.dart';

@freezed
class CusItemsEvent with _$CusItemsEvent {
  const factory CusItemsEvent.getItemsEvent(
      {required String cusID,
      required String route,
      required String fromDate,
      required String toDate,
      required String pageNum,
      required String searchQuery}) = GetItemsEvent;
  const factory CusItemsEvent.clearItemsEvent() = ClearItemsEvent;
}
