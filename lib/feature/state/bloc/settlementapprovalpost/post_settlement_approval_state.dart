part of 'post_settlement_approval_bloc.dart';

@freezed
class PostSettlementApprovalState with _$PostSettlementApprovalState {
  const factory PostSettlementApprovalState.getPostSettlementApprovalState(
          {required PostSettlementApprovalModel? postApproval}) =
      GetPostSettlementApprovalState;

  const factory PostSettlementApprovalState.postSettlementApprovalFailedState() =
      PostSettlementApprovalFailedState;

  const factory PostSettlementApprovalState.postLoadingState() =
      PostLoadingState;

  factory PostSettlementApprovalState.initial() =>
      const PostSettlementApprovalState.getPostSettlementApprovalState(
          postApproval: null);
}
