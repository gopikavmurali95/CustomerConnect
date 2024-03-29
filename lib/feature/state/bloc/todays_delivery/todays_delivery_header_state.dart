part of 'todays_delivery_header_bloc.dart';

@freezed
class TodaysDeliveryHeaderState with _$TodaysDeliveryHeaderState {
  const factory TodaysDeliveryHeaderState.getTodaysDeliveryState(
          {required List<TodaysDeliveryHeaderModel>? todaysdelivery}) =
      GetTodaysDeliveryState;
  const factory TodaysDeliveryHeaderState.todaysDeliveryFailedState() =
      TodaysDeliveryFailedState;

  factory TodaysDeliveryHeaderState.initial() =>
      const TodaysDeliveryHeaderState.getTodaysDeliveryState(
          todaysdelivery: null);
}
