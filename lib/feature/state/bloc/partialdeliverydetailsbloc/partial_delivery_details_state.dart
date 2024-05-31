part of 'partial_delivery_details_bloc.dart';

@freezed
class PartialDeliveryDetailsState with _$PartialDeliveryDetailsState {
  const factory PartialDeliveryDetailsState.getAllPartialDetliveryState(
          {required List<PartialDeliveryDetailsModel>? details}) =
      GetAllPartialDetliveryState;

  const factory PartialDeliveryDetailsState.partialDeliveryDetailsFailedState() =
      PartialDeliveryDetailsFailedState;

  factory PartialDeliveryDetailsState.initial() =>
      const PartialDeliveryDetailsState.getAllPartialDetliveryState(
          details: null);
}
