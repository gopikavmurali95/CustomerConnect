part of 'dispute_approval_status_level_cubit_cubit.dart';

@freezed
class DisputeApprovalStatusLevelCubitState
    with _$DisputeApprovalStatusLevelCubitState {
  const factory DisputeApprovalStatusLevelCubitState.getDisputeApprovalStatusLevelState(
      {required DisputeApprovalStatusModel? statuslevel,
      required bool isApproval}) = GetDisputeApprovalStatusLevelState;

  const factory DisputeApprovalStatusLevelCubitState.disputStatusLevelFailedState() =
      DisputStatusLevelFailedState;

  const factory DisputeApprovalStatusLevelCubitState.disputeApprovastatusLoadingState() =
      DisputeApprovastatusLoadingState;

  factory DisputeApprovalStatusLevelCubitState.initial() =>
      const DisputeApprovalStatusLevelCubitState
          .getDisputeApprovalStatusLevelState(
          statuslevel: null, isApproval: false);
}
