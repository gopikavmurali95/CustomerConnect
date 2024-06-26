part of 'return_approval_header_bloc.dart';

@freezed
class ReturnApprovalHeaderEvent with _$ReturnApprovalHeaderEvent {
  const factory ReturnApprovalHeaderEvent.getReturnApprovalHeaders(
      {required String rotID,
      required String mode,
      required String searchQuery}) = GetReturnApprovalHeaders;
  const factory ReturnApprovalHeaderEvent.clearReturnHeaderState() =
      ClearReturnHeaderState;
}
