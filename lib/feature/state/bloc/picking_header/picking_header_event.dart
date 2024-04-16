part of 'picking_header_bloc.dart';

@freezed
class PickingHeaderEvent with _$PickingHeaderEvent {
  const factory PickingHeaderEvent.getpickingHeaderEvent(
      {required PickingInModel pickingHeadIn,
      required String searchQuery}) = GetpickingHeaderEvent;

  const factory PickingHeaderEvent.clearPickingevent() = ClearPickingevent;
  // const factory PickingHeaderEvent.started() = _Starte;
}
