part of 'settlement_approval_header_bloc.dart';

@freezed
class SettlementApprovalHeaderEvent with _$SettlementApprovalHeaderEvent {
  const factory SettlementApprovalHeaderEvent.getSettlementApprovalHeaderEvent(
      {required String statusvalue,
      required String searchQuery}) = GetSettlementApprovalHeaderEvent;
  const factory SettlementApprovalHeaderEvent.clearSettlementApprovalHeaderEvent() =
      ClearSettlementApprovalHeaderEvent;
}
