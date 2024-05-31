part of 'partial_delivery_detail_bloc.dart';

@freezed
class PartialDeliveryDetailEvent with _$PartialDeliveryDetailEvent {
  const factory PartialDeliveryDetailEvent.getPartialDeliveryDetailEvent() =
      GetPartialDeliveryDetailEvent;

  const factory PartialDeliveryDetailEvent.clearPartialDeliveryDetailEvent() =
      ClearPartialDeliveryDetailEvent;
}
