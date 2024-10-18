part of 'customer_foc_approval_bloc.dart';

@freezed
class CustomerFocApprovalEvent with _$CustomerFocApprovalEvent {
  const factory CustomerFocApprovalEvent.customerFocApprovalEvent(
          {required CustomerFocApprovalInModel approveInpara}) =
      CustomerFocApprovingEvent;

  const factory CustomerFocApprovalEvent.clearCustomerFocApproval() =
      ClearCustomerFocApproval;

  const factory CustomerFocApprovalEvent.customerFocLoadingEvent() =
      CustomerFocLoadingEvent;
}
