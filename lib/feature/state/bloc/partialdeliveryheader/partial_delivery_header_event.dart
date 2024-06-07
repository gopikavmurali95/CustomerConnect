part of 'partial_delivery_header_bloc.dart';

@freezed
class PartialDeliveryHeaderEvent with _$PartialDeliveryHeaderEvent {
  const factory PartialDeliveryHeaderEvent.getPartialDeliveryEvent(
      {required String userID,
      required String mode,
      required String searchQuery}) = GetPartialDeliveryHeaderEvent;

  const factory PartialDeliveryHeaderEvent.clearPartialDeliveryHeaderEvent() =
      ClearPartialDeliveryHeaderEvent;
}
