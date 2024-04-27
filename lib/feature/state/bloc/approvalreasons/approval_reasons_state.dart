part of 'approval_reasons_bloc.dart';

@freezed
class ApprovalReasonsState with _$ApprovalReasonsState {
  const factory ApprovalReasonsState.getApprovalResonsState(
      {required List<ApprovalResonModel>? resons}) = GetApprovalResonsState;
  const factory ApprovalReasonsState.getReasonsFailedState() =
      GetReasonsFailedState;

  factory ApprovalReasonsState.initial() =>
      const ApprovalReasonsState.getApprovalResonsState(resons: null);
}
