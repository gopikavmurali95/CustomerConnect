part of 'partial_delivery_details_bloc.dart';

@freezed
class PartialDeliveryDetailsEvent with _$PartialDeliveryDetailsEvent {
  const factory PartialDeliveryDetailsEvent.getPartialDeliveryDetailsEvent(
      {required String reqID,
      required String searchQuery}) = GetPartialDeliveryDetailsEvent;

  const factory PartialDeliveryDetailsEvent.clearPartialDeliveryDetails() =
      ClearPartialDeliveryDetails;
}
