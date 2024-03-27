part of 'total_orders_header_bloc.dart';

@freezed
class TotalOrdersHeaderState with _$TotalOrdersHeaderState {
  const factory TotalOrdersHeaderState.getTotalOrderState(
      {required List<TotalOrdersModel>? totalorders}) = GetTotalOrderState;

  const factory TotalOrdersHeaderState.totalOrdersFailedState() =
      TotalOrdersFailedState;

  factory TotalOrdersHeaderState.initial() =>
      const TotalOrdersHeaderState.getTotalOrderState(totalorders: null);
}
