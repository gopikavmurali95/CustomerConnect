part of 'pickingdetail_bloc.dart';

@freezed
class PickingdetailEvent with _$PickingdetailEvent {
  const factory PickingdetailEvent.pickingDetailSuccess(
      {required String PickingID}) = PickingDetailSuccess;

  const factory PickingdetailEvent.clearPickingDetailevent() =
      ClearPickingDetailevent;
}
