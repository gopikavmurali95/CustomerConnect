part of 'material_req_detail_bloc.dart';

@freezed
class MaterialReqDetailEvent with _$MaterialReqDetailEvent {
  const factory MaterialReqDetailEvent.materialReqDetailSuccessEvent(
      {required String reqId,
      required String searchQuery}) = MaterialReqDetailSuccessEvent;
  const factory MaterialReqDetailEvent.materialDetailClearEvent() =
      MaterialDetailClearEvent;
}
