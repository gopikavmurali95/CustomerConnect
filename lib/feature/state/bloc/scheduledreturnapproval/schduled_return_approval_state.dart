part of 'schduled_return_approval_bloc.dart';

@freezed
class SchduledReturnApprovalState with _$SchduledReturnApprovalState {
  const factory SchduledReturnApprovalState.scheduledReturnApprovalStatusStates(
          {required ScheduledReturnApprovalOutModel? status}) =
      ScheduledReturnApprovalStatusStates;

  const factory SchduledReturnApprovalState.schduledReturnApprovalFailedState() =
      SchduledReturnApprovalFailedState;
  const factory SchduledReturnApprovalState.scheduledReturnLoadingState() =
      ScheduledReturnLoadingState;

  factory SchduledReturnApprovalState.initial() =>
      const SchduledReturnApprovalState.scheduledReturnApprovalStatusStates(
          status: null);
}
