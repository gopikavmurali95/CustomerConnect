part of 'van_to_van_approval_bloc.dart';

@freezed
class VanToVanApprovalEvent with _$VanToVanApprovalEvent {
  const factory VanToVanApprovalEvent.getVanToVanApprovalEvent(
      {required VanToVanApprovalInParas approvalIn}) = GetVanToVanApprovalEent;
  const factory VanToVanApprovalEvent.vanToVanApprovalLoadingEvent() =
      VanToVanApprovalLoadingEvent;
}
