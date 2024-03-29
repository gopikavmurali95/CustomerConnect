part of 'todays_delivery_details_bloc.dart';

@freezed
class TodaysDeliveryDetailsState with _$TodaysDeliveryDetailsState {
  const factory TodaysDeliveryDetailsState.getTodaysDeliveryDetails(
          {required List<TodaysDeliveryDetailsModel>? deliverydet}) =
      GetTodaysDeliveryDetailsState;

  const factory TodaysDeliveryDetailsState.todaysDeliveryFailed() =
      TodaysDeliveryFailedState;

  factory TodaysDeliveryDetailsState.initial() =>
      const TodaysDeliveryDetailsState.getTodaysDeliveryDetails(
          deliverydet: null);
}
