part of 'approve_return_product_bloc.dart';

@freezed
class ApproveReturnProductState with _$ApproveReturnProductState {
  const factory ApproveReturnProductState.approveReturnProductdSTatusState(
          {required ReturnApproveOutModel? response}) =
      ApproveReturnProductdSTatusState;

  const factory ApproveReturnProductState.approveReturnLoadingState() =
      ApproveReturnLoadingState;
  const factory ApproveReturnProductState.approvalFailedState() =
      ApprovalFailedState;

  factory ApproveReturnProductState.initial() =>
      const ApproveReturnProductState.approveReturnProductdSTatusState(
          response: null);
}
