part of 'cus_items_bloc.dart';

@freezed
class CusItemsState with _$CusItemsState {
  const factory CusItemsState.getCusItemsState(
      {required List<CusItemsModel>? items}) = GetCusItemsState;
  const factory CusItemsState.getitemsFailedState() = GetitemsFailedState;

  factory CusItemsState.initial() =>
      const CusItemsState.getCusItemsState(items: null);
}
