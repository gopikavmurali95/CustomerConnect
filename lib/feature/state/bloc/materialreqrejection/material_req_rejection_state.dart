part of 'material_req_rejection_bloc.dart';

@freezed
class MaterialReqRejectionState with _$MaterialReqRejectionState {
  const factory MaterialReqRejectionState.materialReqRejectSuccessState(
          {required MaterialReqrejectionOutModel? response}) =
      MaterialReqRejectSuccessState;

  const factory MaterialReqRejectionState.materialReqRejectFailedState() =
      MaterialReqRejectFailedState;

  const factory MaterialReqRejectionState.materialReqLoadingState() =
      MaterialReqLoadingState;
  factory MaterialReqRejectionState.initial() =>
      const MaterialReqRejectionState.materialReqRejectSuccessState(
          response: null);
}
