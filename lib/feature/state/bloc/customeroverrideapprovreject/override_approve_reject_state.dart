part of 'override_approve_reject_bloc.dart';

@freezed
class OverrideApproveRejectState with _$OverrideApproveRejectState {
  const factory OverrideApproveRejectState.getOverrideApprovalState(
      {required OverideApprovRejectModel? approve}) = GetOverrideApprovalState;

  const factory OverrideApproveRejectState.overrideCusFailedState() =
      OverrideCusFailedState;

  const factory OverrideApproveRejectState.overrideCusLoadingState() =
      OverrideCusLoadingState;

  factory OverrideApproveRejectState.initial() =>
      const OverrideApproveRejectState.getOverrideApprovalState(approve: null);
}
