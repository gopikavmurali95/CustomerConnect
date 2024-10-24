part of 'item_listing_count_bloc.dart';

@freezed
class ItemListingCountEvent with _$ItemListingCountEvent {
  const factory ItemListingCountEvent.getItmesCountEvent(
      {required String cusId,
      required String route,
      required String fromDate,
      required String toDate,
      required String pagenum,
      required String searchString}) = GetItmesCountEvent;

  const factory ItemListingCountEvent.clearItemListingCount() =
      ClearItemListingCount;
}
