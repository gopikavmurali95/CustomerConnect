part of 'picking_header_bloc.dart';

@freezed
class PickingHeaderState with _$PickingHeaderState {
  const factory PickingHeaderState.getPickingHeaderState(
      {required List<PickingOutModel>? pickingOut}) = GetPickingHeaderState;

  const factory PickingHeaderState.pickingheaderFailedState() =
      PickingheaderFailedState;

  factory PickingHeaderState.initial() =>
      const PickingHeaderState.getPickingHeaderState(pickingOut: null);
}
