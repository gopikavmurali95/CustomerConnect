part of 'void_transaction_rejection_bloc.dart';

@freezed
class VoidTransactionRejectionEvent with _$VoidTransactionRejectionEvent {
  const factory VoidTransactionRejectionEvent.voidTransactionRejectingEvent(
          {required VoidTransacrtionApprovalInModel rejecting}) =
      VoidTransactionRejectingEvent;

  const factory VoidTransactionRejectionEvent.clearVoidTransactionRejection() =
      ClearVoidTransactionRejection;
}
