part of 'cus_out_standing_count_bloc.dart';

@freezed
class CusOutStandingCountEvent with _$CusOutStandingCountEvent {
  const factory CusOutStandingCountEvent.getCusOutstandingCOuntEvent({
    required CusOutStandingInModel outIn,
  }) = GetCusOutstandingCOuntEvent;

  const factory CusOutStandingCountEvent.clearCusOutStandingCountEvent() =
      ClearCusOutStandingCountEvent;
}
