part of 'customer_foc_approval_selection_cubit.dart';

@freezed
class CustomerFocApprovalSelectionState
    with _$CustomerFocApprovalSelectionState {
  const factory CustomerFocApprovalSelectionState.focApprovalSelectionState(
          {required List<CustomerFocApprovalJsonModel> selection}) =
      FocApprovalSelectionState;

  factory CustomerFocApprovalSelectionState.initial() =>
      const CustomerFocApprovalSelectionState.focApprovalSelectionState(
          selection: []);
}
