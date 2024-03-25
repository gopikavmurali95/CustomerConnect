part of 'picking_and_loading_count_bloc.dart';

@freezed
class PickingAndLoadingCountEvent with _$PickingAndLoadingCountEvent {
  const factory PickingAndLoadingCountEvent.plCountSuccessEvent(
      {required String userID}) = PlCountSuccessEvent;

  const factory PickingAndLoadingCountEvent.plCountFailureEvent() =
      PlCountFailureEvent;
}
