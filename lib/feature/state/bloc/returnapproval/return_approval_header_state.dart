part of 'return_approval_header_bloc.dart';

@freezed
class ReturnApprovalHeaderState with _$ReturnApprovalHeaderState {
  const factory ReturnApprovalHeaderState.getReturnApprovalHeaders(
          {required List<ReturnApprovalHeaderModel>? headers}) =
      GetReturnApprovalHeadersState;

  const factory ReturnApprovalHeaderState.returnHeaderFailedstate() =
      ReturnHeaderFailedstate;

  factory ReturnApprovalHeaderState.initial() =>
      const ReturnApprovalHeaderState.getReturnApprovalHeaders(headers: null);
}
