part of 'cusromer_foc_rejection_bloc.dart';

@freezed
class CusromerFocRejectionState with _$CusromerFocRejectionState {
  const factory CusromerFocRejectionState.focRejectionState(
      {required CustomerFocApproveAndRejectModel? reject}) = FocRejectionState;

  const factory CusromerFocRejectionState.focFailedState() =
      FocRejectionFailedState;

  factory CusromerFocRejectionState.initial() =>
      const CusromerFocRejectionState.focRejectionState(reject: null);
}
