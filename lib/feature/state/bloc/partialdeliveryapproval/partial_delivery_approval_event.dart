part of 'partial_delivery_approval_bloc.dart';

@freezed
class PartialDeliveryApprovalEvent with _$PartialDeliveryApprovalEvent {
  const factory PartialDeliveryApprovalEvent.getPartialDeliveryApprovalEvent(
          {required PartialDeliveryApprovalModel approvalin}) =
      GetPartialDeliveryApprovalEvent;

  const factory PartialDeliveryApprovalEvent.partialDeliveryLoadingEvent() =
      PartialDeliveryLoadingEvent;
}
