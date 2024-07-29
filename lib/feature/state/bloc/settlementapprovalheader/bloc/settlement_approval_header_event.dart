part of 'settlement_approval_header_bloc.dart';

@freezed
class SettlementApprovalHeaderEvent with _$SettlementApprovalHeaderEvent {

  const factory SettlementApprovalHeaderEvent.getSettlmntApprovalHeaderEvent(
    {required String statusvalue,
    required String searchQuery} ) = GetSettlmntApprovalHeaderEvent;

  const factory SettlementApprovalHeaderEvent.clearSettlmntApprovalHeaderEvent() = ClearSettlmntApprovalHeaderEvent;

}