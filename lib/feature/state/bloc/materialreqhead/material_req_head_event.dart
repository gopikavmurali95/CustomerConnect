part of 'material_req_head_bloc.dart';

@freezed
class MaterialReqHeadEvent with _$MaterialReqHeadEvent {
  const factory MaterialReqHeadEvent.materialHeadSuccessEvent(
      {required String userId}) = MaterialHeadSuccessEvent;

  const factory MaterialReqHeadEvent.materialReqHeadClearEvent() =
      MaterialReqHeadClearEvent;
}
