part of 'customer_override_approval_bloc_bloc.dart';

@freezed
class CustomerOverrideApprovalBlocEvent
    with _$CustomerOverrideApprovalBlocEvent {
  const factory CustomerOverrideApprovalBlocEvent.getCusOverrideEvent(
      {required String statusvalue,
      required String ooaID,
      required String userID,
      required String searchQuery}) = GetCusOverrideEvent;

  const factory CustomerOverrideApprovalBlocEvent.clearCusOverrideEvent() =
      ClearCusOverrideEvent;

  const factory CustomerOverrideApprovalBlocEvent.started() = _Started;
}
