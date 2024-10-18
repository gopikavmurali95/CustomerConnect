part of 'customer_foc_approval_bloc.dart';

@freezed
class CustomerFocApprovalState with _$CustomerFocApprovalState {
  const factory CustomerFocApprovalState.customerFocApproval(
          {required CustomerFocApproveAndRejectModel? approve}) =
      CustomerFocApproval;

      const factory CustomerFocApprovalState.customerFocApprovalFailed() = CustomerFocApprovalFailed;
      

  const factory CustomerFocApprovalState.customerFocApprovalLoadingState() =
      CustomerFocApprovalLoadingState;

  factory CustomerFocApprovalState.initial() =>
      const CustomerFocApprovalState.customerFocApproval(approve: null);
}
