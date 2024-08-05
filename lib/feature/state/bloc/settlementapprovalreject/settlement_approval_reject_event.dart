part of 'settlement_approval_reject_bloc.dart';

@freezed
class SettlementApprovalRejectEvent with _$SettlementApprovalRejectEvent {
  const factory SettlementApprovalRejectEvent.getRejectApprovalEvent(
      {required String udpID}) = GetRejectApprovalEvent;

  const factory SettlementApprovalRejectEvent.rejectApprovalLoadingEvent() =
      RejectApprovalLoadingEvent;

  const factory SettlementApprovalRejectEvent.clearRejectApprovalEvent() =
      ClearRejectApprovalEvent;
}
