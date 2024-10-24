part of 'item_listing_count_bloc.dart';

@freezed
class ItemListingCountState with _$ItemListingCountState {
  const factory ItemListingCountState.getItemListCountState(
      {required ItemListingCount? count}) = GetItemListCountState;

  const factory ItemListingCountState.itemCountFailedState() =
      ItemCountFailedState;

  factory ItemListingCountState.initial() =>
      const ItemListingCountState.getItemListCountState(count: null);
}
