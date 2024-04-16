part of 'todays_delivery_header_bloc.dart';

@freezed
class TodaysDeliveryHeaderEvent with _$TodaysDeliveryHeaderEvent {
  const factory TodaysDeliveryHeaderEvent.getTodaysDeliveryEvent(
      {required TodaysDeliveryInParas todaysdelivery,
      required String searchQuery}) = GetTodaysDeliveryEvent;
  const factory TodaysDeliveryHeaderEvent.todaysDeliveryFailedEvent() =
      TodaysDeliveryFailedEvent;

  const factory TodaysDeliveryHeaderEvent.clearTodaysDelivery() =
      ClearTodaysDelivery;
}
