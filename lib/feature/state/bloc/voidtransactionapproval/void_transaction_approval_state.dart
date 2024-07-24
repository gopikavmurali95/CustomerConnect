part of 'void_transaction_approval_bloc.dart';

@freezed
class VoidTransactionApprovalState with _$VoidTransactionApprovalState {
  const factory VoidTransactionApprovalState.voidTransactionApprovingState(
          {required VoidTransactionApproveAndRejectModel? approval}) =
      VoidTransactionApprovingState;
  const factory VoidTransactionApprovalState.voidTransactionApprovalFailed() =
      VoidTransactionApprovalFailed;

  const factory VoidTransactionApprovalState.voidTransactionLoadingState() =
      VoidTransactionLoadingState;

  factory VoidTransactionApprovalState.initial() =>
      const VoidTransactionApprovalState.voidTransactionApprovingState(
          approval: null);
}
