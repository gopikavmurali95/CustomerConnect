part of 'cus_out_standing_bloc.dart';

@freezed
class CusOutStandingState with _$CusOutStandingState {
  const factory CusOutStandingState.getCusOutStandingState(
          {required CusOutstandingCountModel? counts,
          required List<CusInsOutstandingHeaderModel>? headers}) =
      GetCusOutStandingState;

  const factory CusOutStandingState.getOutStandingFailedState() =
      GetOutStandingFailedState;

  factory CusOutStandingState.initial() =>
      const CusOutStandingState.getCusOutStandingState(
          counts: null, headers: null);
}
