part of 'load_req_approval_bloc.dart';

@freezed
class LoadReqApprovalEvent with _$LoadReqApprovalEvent {
  const factory LoadReqApprovalEvent.approvloadReqEvent(
      {required LoadReqInApprovalModel approval}) = ApprovloadReqEvent;

  const factory LoadReqApprovalEvent.approvLoadingReqEvent() =ApprovLoadingReqEvent;

  const factory LoadReqApprovalEvent.clearLoadReqApprovalEvent() =ClearLoadReqApprovalEvent;
  //const factory LoadReqApprovalEvent.started() = _Started;
}
