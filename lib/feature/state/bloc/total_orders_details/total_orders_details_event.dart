part of 'total_orders_details_bloc.dart';

@freezed
class TotalOrdersDetailsEvent with _$TotalOrdersDetailsEvent {
  const factory TotalOrdersDetailsEvent.getTotalOrdersDetailsEvent(
      {required String userID,
      required String searchQuery}) = GetTotalOrdersDetailsEvent;

  const factory TotalOrdersDetailsEvent.totalOrderDetailsFailedEvent() =
      TotalOrderDetailsFailedEvent;

  const factory TotalOrdersDetailsEvent.clearTotalOrdersDetails() =
      ClearTotalOrdersDetails;
}
