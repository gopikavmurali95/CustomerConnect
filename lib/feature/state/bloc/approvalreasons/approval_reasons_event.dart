part of 'approval_reasons_bloc.dart';

@freezed
class ApprovalReasonsEvent with _$ApprovalReasonsEvent {
  const factory ApprovalReasonsEvent.getApprovalReasonsEvent(
      {required String rsnType}) = GetApprovalReasonsEvent;
}
