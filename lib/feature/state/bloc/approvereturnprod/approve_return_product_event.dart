part of 'approve_return_product_bloc.dart';

@freezed
class ApproveReturnProductEvent with _$ApproveReturnProductEvent {
  const factory ApproveReturnProductEvent.approveProductEvent(
      {required ReturnApproveInModel approval}) = ApproveProductEvent;

  const factory ApproveReturnProductEvent.addApprovalLoadingEvent() =
      AddApprovalLoadingEvent;
}
