part of 'schduled_return_approval_bloc.dart';

@freezed
class SchduledReturnApprovalEvent with _$SchduledReturnApprovalEvent {
  const factory SchduledReturnApprovalEvent.aPProveOrRejectScheduledReturnEvent(
          {required ScheduledReturnApprovalInModel approve}) =
      APProveOrRejectScheduledReturnEvent;

  const factory SchduledReturnApprovalEvent.addScheduledReturnApprovalLoadingEvent() =
      AddScheduledReturnApprovalLoadingEvent;

  const factory SchduledReturnApprovalEvent.clearScApprovalEvent() =
      ClearScApprovalEvent;
}
