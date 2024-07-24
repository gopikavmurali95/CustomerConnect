part of 'void_transaction_approval_bloc.dart';

@freezed
class VoidTransactionApprovalEvent with _$VoidTransactionApprovalEvent {
  const factory VoidTransactionApprovalEvent.voidTransactionApprovingEvent(
          {required VoidTransacrtionApprovalInModel approving}) =
      VoidTransactionApprovingEvent;

  const factory VoidTransactionApprovalEvent.clearVoidTransactionApproval() =
      ClearVoidTransactionApproval;

  const factory VoidTransactionApprovalEvent.voidTransactionLoadingEvent() =
      VoidTransactionLoadingEvent;
}
