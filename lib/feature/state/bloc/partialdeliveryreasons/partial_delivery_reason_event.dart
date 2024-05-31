part of 'partial_delivery_reason_bloc.dart';

@freezed
class PartialDeliveryReasonEvent with _$PartialDeliveryReasonEvent {
  const factory PartialDeliveryReasonEvent.getPartialDeliveryEvent(
      {required String rsnType}) = GetPartialDeliveryEvent;

  const factory PartialDeliveryReasonEvent.clearReasonPartialDelivery() =
      ClearReasonPartialDelivery;
}
