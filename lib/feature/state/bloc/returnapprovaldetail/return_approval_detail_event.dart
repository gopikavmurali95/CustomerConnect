part of 'return_approval_detail_bloc.dart';

@freezed
class ReturnApprovalDetailEvent with _$ReturnApprovalDetailEvent {
  const factory ReturnApprovalDetailEvent.getReturnApprovalDetailEvennt(
      {required String reqID,
      required String mode,
      required String searchQuery}) = GetReturnApprovalDetailEvennt;

  const factory ReturnApprovalDetailEvent.clearReturnDetailEvent() =
      ClearReturnDetailEvent;
}
