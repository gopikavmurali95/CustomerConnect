part of 'void_transaction_rejection_bloc.dart';

@freezed
class VoidTransactionRejectionState with _$VoidTransactionRejectionState {
  const factory VoidTransactionRejectionState.voidTranctionRejectingState(
          {required VoidTransactionApproveAndRejectModel? reject}) =
      VoidTranctionRejectingState;

  const factory VoidTransactionRejectionState.voidTransactionRejectionFailed() =
      VoidTransactionRectionFailed;

  factory VoidTransactionRejectionState.initial() =>
      const VoidTransactionRejectionState.voidTranctionRejectingState(
          reject: null);
}
