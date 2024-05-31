part of 'partial_delivery_detail_bloc.dart';

@freezed
class PartialDeliveryDetailState with _$PartialDeliveryDetailState {
  const factory PartialDeliveryDetailState.getAllPartialDeliveryDetailsState(
          {required List<PartialDeliveryDetail>? details}) =
      GetAllPartialDeliveryDetailsState;

  const factory PartialDeliveryDetailState.getPartialDeliveryFailedState() =
      GetPartialDeliveryFailedState;

  factory PartialDeliveryDetailState.initial() =>
      const PartialDeliveryDetailState.getAllPartialDeliveryDetailsState(
          details: null);
}
