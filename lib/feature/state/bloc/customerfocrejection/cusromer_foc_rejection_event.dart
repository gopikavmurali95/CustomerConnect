part of 'cusromer_foc_rejection_bloc.dart';

@freezed
class CusromerFocRejectionEvent with _$CusromerFocRejectionEvent {
  const factory CusromerFocRejectionEvent.focRejectionEvent(
      {required CustomerFocApprovalInModel rejectionIn}) = FocRejectionEvent;

  const factory CusromerFocRejectionEvent.clearFocRejection() =
      ClearFocRejection;
}
