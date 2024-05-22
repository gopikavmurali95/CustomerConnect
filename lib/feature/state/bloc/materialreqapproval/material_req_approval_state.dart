part of 'material_req_approval_bloc.dart';

@freezed
class MaterialReqApprovalState with _$MaterialReqApprovalState {
  const factory MaterialReqApprovalState.materialReqApprovalSuccessState(
  {required MaterialReqApprovalOutModel? response  }) =
  MaterialReqApprovalSuccessState;
  const factory MaterialReqApprovalState.materialReqApprovalFailedState() =
  MaterialReqApprovalFailedState;
  const factory MaterialReqApprovalState.materialReqApprovalLoadingState() =
  MaterialReqApprovalLoadingState;
  factory MaterialReqApprovalState.initial() =>
     const  MaterialReqApprovalState.materialReqApprovalSuccessState(response: null);

}
