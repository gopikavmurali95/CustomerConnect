part of 'material_req_rejection_bloc.dart';

@freezed
class MaterialReqRejectionEvent with _$MaterialReqRejectionEvent {
  const factory MaterialReqRejectionEvent.materialreqrejectionSuccessevent(
      {required MaterialReqRejectionInModel approvalInModel}) =
  MaterialreqrejectionSuccessevent;

  const factory MaterialReqRejectionEvent.materialreqRejectionLoadingevent() =
  MaterialreqRejectionLoadingevent;

  const factory MaterialReqRejectionEvent.materialReqRejecetionClearevent() =
  MaterialReqRejecetionClearevent;
  const factory MaterialReqRejectionEvent.started() = _Started;
}
