part of 'todays_delivery_details_bloc.dart';

@freezed
class TodaysDeliveryDetailsEvent with _$TodaysDeliveryDetailsEvent {
  const factory TodaysDeliveryDetailsEvent.getTodaysDeliveryDetails(
      {required String id}) = GetTodaysDeliveryDetailsEvent;

  const factory TodaysDeliveryDetailsEvent.clearTodasDeliveryDetails() =
      ClearTodasDeliveryDetails;
}
