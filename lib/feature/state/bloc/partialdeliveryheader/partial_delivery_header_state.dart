part of 'partial_delivery_header_bloc.dart';

@freezed
class PartialDeliveryHeaderState with _$PartialDeliveryHeaderState {
  const factory PartialDeliveryHeaderState.getPartialDeliveryState(
          {required List<PartialDeliveryHeaderModel>? pDelivey}) =
      GetPartialDeliveryState;

  const factory PartialDeliveryHeaderState.getPartialDeliveryFailed() =
      GetPartialDeliveryFailed;

  factory PartialDeliveryHeaderState.initial() =>
      const PartialDeliveryHeaderState.getPartialDeliveryState(pDelivey: null);
}
