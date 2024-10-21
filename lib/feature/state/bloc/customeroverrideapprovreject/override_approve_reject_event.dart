part of 'override_approve_reject_bloc.dart';

@freezed
class OverrideApproveRejectEvent with _$OverrideApproveRejectEvent {

  const factory OverrideApproveRejectEvent.getOverrideApproveRejectEvent
  ({required String ooaID,
  required String userId,
  required String status}) = GetOverrideApproveRejectEvent;

const factory OverrideApproveRejectEvent.loadingOverideApproveRejectEvent() = LoadingOverideApproveRejectEvent;

  const factory OverrideApproveRejectEvent.clearOverrideApproveRejectEvent() =
   ClearOverrideApproveRejectEvent;
  
}