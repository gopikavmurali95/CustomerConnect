part of 'cus_items_bloc.dart';

@freezed
class CusItemsState with _$CusItemsState {
  const factory CusItemsState.getCusItemsState(
      {required List<CusItemsModel>? items,
      required bool isLoading}) = GetCusItemsState;
  const factory CusItemsState.getitemsFailedState() = GetitemsFailedState;

  factory CusItemsState.initial() =>
      const CusItemsState.getCusItemsState(items: null, isLoading: false);
}
