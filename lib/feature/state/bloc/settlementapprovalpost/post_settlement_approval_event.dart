part of 'post_settlement_approval_bloc.dart';

@freezed
class PostSettlementApprovalEvent with _$PostSettlementApprovalEvent {
  const factory PostSettlementApprovalEvent.getPostApprovalEvent(
      {required String udpID}) = GetPostApprovalEvent;

  const factory PostSettlementApprovalEvent.clearPostApprovalEvent() =
      ClearPostApprovalEvent;

  const factory PostSettlementApprovalEvent.postLoadingApprovalEvent() =
      PostLoadingApprovalEvent;
}
