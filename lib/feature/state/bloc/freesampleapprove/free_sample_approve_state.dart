part of 'free_sample_approve_bloc.dart';

@freezed
class FreeSampleApproveState with _$FreeSampleApproveState {
  const factory FreeSampleApproveState.submitFreeSampleRequestState(
          {required FreeSampleApprovalRespModel? resp}) =
      SubmitFreeSampleRequestState;
  const factory FreeSampleApproveState.freesampleSubmitFailedState() =
      FreesampleSubmitFailedState;

  const factory FreeSampleApproveState.freesampleSubmitLoadingState() =
      FreesampleSubmitLoadingState;

  factory FreeSampleApproveState.initial() =>
      const FreeSampleApproveState.submitFreeSampleRequestState(resp: null);
}
