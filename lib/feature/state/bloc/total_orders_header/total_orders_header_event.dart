part of 'total_orders_header_bloc.dart';

@freezed
class TotalOrdersHeaderEvent with _$TotalOrdersHeaderEvent {
  const factory TotalOrdersHeaderEvent.getTotalOrdersEvent(
      {required TotalOrdersInparas ordersin}) = GetTotalOrdersEvent;

  const factory TotalOrdersHeaderEvent.totalOrdersFailedEvent() =
      TotalOrdersFailedEvent;

  const factory TotalOrdersHeaderEvent.totalOrdersClearEvent() =
      TotalOrdersClearEvent;
}
