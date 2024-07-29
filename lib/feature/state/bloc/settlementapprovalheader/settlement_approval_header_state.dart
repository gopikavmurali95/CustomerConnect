part of 'settlement_approval_header_bloc.dart';

@freezed
class SettlementApprovalHeaderState with _$SettlementApprovalHeaderState {
  const factory SettlementApprovalHeaderState.getSettlementApprovalHeader(
          {required List<SettlementApprovalHeaderOutModel>? headers}) =
      GetSettlementApprovalHeader;

  const factory SettlementApprovalHeaderState.settlementApprovalHeaderFailedState() =
      SettlementApprovalHeaderFailedState;

  factory SettlementApprovalHeaderState.initial() =>
      const SettlementApprovalHeaderState.getSettlementApprovalHeader(
          headers: null);
}
