part of 'load_req_approval_bloc.dart';

@freezed
class LoadReqApprovalState with _$LoadReqApprovalState {
  const factory LoadReqApprovalState.loadReqApprovalSuccessState(
          {required LoadRequestApprovalOutModel? response}) =
      LoadReqApprovalSuccessState;
  const factory LoadReqApprovalState.loadReqApprovalFailedState() =
      LoadReqApprovalFailedState;
  const factory LoadReqApprovalState.loadReqApprovalLoadingState() =
      LoadReqApprovalLoadingState;
  factory LoadReqApprovalState.initial() =>
      const LoadReqApprovalState.loadReqApprovalSuccessState(response: null);
}
