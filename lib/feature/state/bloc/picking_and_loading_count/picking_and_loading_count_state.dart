part of 'picking_and_loading_count_bloc.dart';

@freezed
class PickingAndLoadingCountState with _$PickingAndLoadingCountState {
  const factory PickingAndLoadingCountState.plCountSuccessState(
      {required PickingAndLoadinCountsModel? plCount}) = PlCountSuccessState;
  const factory PickingAndLoadingCountState.plCountFailedState() =
      PlCountFailedState;

  factory PickingAndLoadingCountState.initial() =>
      const PickingAndLoadingCountState.plCountSuccessState(plCount: null);
}
