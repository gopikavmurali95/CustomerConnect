part of 'cus_out_standing_bloc.dart';

@freezed
class CusOutStandingEvent with _$CusOutStandingEvent {
  const factory CusOutStandingEvent.getCusOutstandingEvent(
      {required CusOutStandingInModel outIn,
      required String searchQuery}) = GetCusOutstandingEvent;
  const factory CusOutStandingEvent.clearCusOutStandingEvent() =
      ClearCusOutStandingEvent;
}
