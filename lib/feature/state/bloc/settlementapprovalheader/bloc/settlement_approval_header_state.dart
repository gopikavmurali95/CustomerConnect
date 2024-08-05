part of 'settlement_approval_header_bloc.dart';

@freezed
class SettlementApprovalHeaderState with _$SettlementApprovalHeaderState {
  const factory SettlementApprovalHeaderState.getSettlementApprovalHeaderState(
          {required List<SettlementApprovalHeaderOutModel>? headers}) =
      GetSettlementApprovalHeaderState;

  const factory SettlementApprovalHeaderState.settlementApprovalHeaderFailedstate() =
      SettlementApprovalHeaderFailedstate;

  factory SettlementApprovalHeaderState.initial() =>
      const SettlementApprovalHeaderState.getSettlementApprovalHeaderState(
          headers: null);
}
