part of 'partial_delivery_reason_bloc.dart';

@freezed
class PartialDeliveryReasonState with _$PartialDeliveryReasonState {
  const factory PartialDeliveryReasonState.getPArtialDeliveryReasonsState(
          {required List<PartialDeliveryReasonModel>? reasons}) =
      GetPArtialDeliveryReasonsState;

  const factory PartialDeliveryReasonState.partialDeliveryFailedState() =
      PartialDeliveryFailedState;
  factory PartialDeliveryReasonState.initial() =>
      const PartialDeliveryReasonState.getPArtialDeliveryReasonsState(
          reasons: null);
}
