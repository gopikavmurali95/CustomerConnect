part of 'cus_out_standing_count_bloc.dart';

@freezed
class CusOutStandingCountState with _$CusOutStandingCountState {
  const factory CusOutStandingCountState.getCusOutStandingCountState({
    required CusOutstandingCountModel? counts,
  }) = GetCusOutStandingCountState;
  const factory CusOutStandingCountState.cusOutStatndingCountFailedState() =
      CusOutStatndingCountFailedState;

  factory CusOutStandingCountState.initial() =>
      const CusOutStandingCountState.getCusOutStandingCountState(counts: null);
}
