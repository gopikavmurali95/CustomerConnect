part of 'return_approval_detail_bloc.dart';

@freezed
class ReturnApprovalDetailState with _$ReturnApprovalDetailState {
  const factory ReturnApprovalDetailState.getReturnApprovelDetailState(
          {required ReturnApprovalDetailModel? details}) =
      GetReturnApprovelDetailState;

  const factory ReturnApprovalDetailState.returnApprovalDetailFailedState() =
      ReturnApprovalDetailFailedState;

  factory ReturnApprovalDetailState.initial() =>
      const ReturnApprovalDetailState.getReturnApprovelDetailState(
          details: null);
}
