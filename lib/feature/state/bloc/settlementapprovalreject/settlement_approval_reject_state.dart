part of 'settlement_approval_reject_bloc.dart';

@freezed
class SettlementApprovalRejectState with _$SettlementApprovalRejectState {
  const factory SettlementApprovalRejectState.getRejectApprovalState(
      {required SettelemetApprovalReject? reject}) = GetRejectApprovalState;

  const factory SettlementApprovalRejectState.rejectApprovalFailedState() =
      RejectApprovalFailedState;

  const factory SettlementApprovalRejectState.postApprovalLoadingState() =
      PostApprovalLoadingState;

  factory SettlementApprovalRejectState.initial() =>
      const SettlementApprovalRejectState.getRejectApprovalState(reject: null);
}
