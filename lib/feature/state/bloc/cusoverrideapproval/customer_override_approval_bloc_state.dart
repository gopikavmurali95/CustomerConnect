part of 'customer_override_approval_bloc_bloc.dart';

@freezed
class CustomerOverrideApprovalBlocState
    with _$CustomerOverrideApprovalBlocState {
  const factory CustomerOverrideApprovalBlocState.getCusOverrideApprovalState(
          {required List<CustomerOverrideApprovalModel>? cusoverride}) =
      GetCusOverrideApprovalState;

  const factory CustomerOverrideApprovalBlocState.cusOverrideApprovalFailedState() =
      CusOverrideApprovalFailedState;
  factory CustomerOverrideApprovalBlocState.initial() =>
      const CustomerOverrideApprovalBlocState.getCusOverrideApprovalState(
          cusoverride: []);
}
