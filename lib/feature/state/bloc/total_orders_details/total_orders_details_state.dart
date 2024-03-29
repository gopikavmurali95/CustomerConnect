part of 'total_orders_details_bloc.dart';

@freezed
class TotalOrdersDetailsState with _$TotalOrdersDetailsState {
  const factory TotalOrdersDetailsState.getTotalOrdersDetailsState(
          {required List<TotalOrdersDetailsModel>? ordersdet}) =
      GetTotalOrdersDetailsState;

  const factory TotalOrdersDetailsState.totalOrdersDetailsFailedState() =
      TotalOrdersDetailsFailedState;

  factory TotalOrdersDetailsState.initial() =>
      const TotalOrdersDetailsState.getTotalOrdersDetailsState(ordersdet: null);
}
