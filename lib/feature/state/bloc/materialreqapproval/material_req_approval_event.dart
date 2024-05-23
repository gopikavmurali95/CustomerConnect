part of 'material_req_approval_bloc.dart';

@freezed
class MaterialReqApprovalEvent with _$MaterialReqApprovalEvent {
  const factory MaterialReqApprovalEvent.materialReqApprovalSuccessEvent(
  {required MaterialReqApprovalInModel approvalInModel}
      ) =
  MaterialReqApprovalSuccessEvent;

  const factory MaterialReqApprovalEvent.materialReqApprovalLoadingEvent() =
  MaterialReqApprovalLoadingEvent;

  const factory MaterialReqApprovalEvent.materialReqApprovalClearEvent() =
  MaterialReqApprovalClearEvent;
  const factory MaterialReqApprovalEvent.started() = _Started;
}
