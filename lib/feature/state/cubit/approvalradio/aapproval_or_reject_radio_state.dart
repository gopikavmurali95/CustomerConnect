part of 'aapproval_or_reject_radio_cubit.dart';

@freezed
class AapprovalOrRejectRadioState with _$AapprovalOrRejectRadioState {
  const factory AapprovalOrRejectRadioState.approvalStatus(
      {required bool isApproved}) = ApprovalStatusState;

  factory AapprovalOrRejectRadioState.initial() =>
      const AapprovalOrRejectRadioState.approvalStatus(isApproved: true);
}
