part of 'approve_price_change_bloc.dart';

@freezed
class ApprovePriceChangeState with _$ApprovePriceChangeState {
  const factory ApprovePriceChangeState.getPriceChangeApprovalState(
          {required ApprovePriceChangeModel? approval}) =
      GetPriceChangeApprovalState;

  const factory ApprovePriceChangeState.approveLoadingState() =
      ApproveLoadingState;

  const factory ApprovePriceChangeState.getPriceChangeApprovalFailed() =
      GetPriceChangeApprovalFailed;

  factory ApprovePriceChangeState.initial() =>
      const ApprovePriceChangeState.getPriceChangeApprovalState(approval: null);
}
