part of 'partial_delivery_reason_cubit.dart';

@freezed
class PartialDeliveryReasonState with _$PartialDeliveryReasonState {
  const factory PartialDeliveryReasonState.getpartialDeliveryReasonsState(
          {required List<PartialDeliveryReasonModel>? reasons}) =
      GetpartialDeliveryReasonsState;
  const factory PartialDeliveryReasonState.partialDeliveryReasonsFailedState() =
      PartialDeliveryReasonsFailedState;

  factory PartialDeliveryReasonState.initial() =>
      const PartialDeliveryReasonState.getpartialDeliveryReasonsState(
          reasons: null);
}
