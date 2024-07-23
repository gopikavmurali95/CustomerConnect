part of 'must_sell_approve_bloc.dart';

@freezed
class MustSellApproveState with _$MustSellApproveState {
  const factory MustSellApproveState.mustSellApproveStatusState(
      {required MustSellApproveRespModel? resp}) = MustSellApproveStatusState;
  const factory MustSellApproveState.mustSellApproveFailedState() =
      MustSellApproveFailedState;
  const factory MustSellApproveState.mustSellApproveLoadingEvent() =
      MustSellApproveLoadingEvent;

  factory MustSellApproveState.initial() =>
      const MustSellApproveState.mustSellApproveStatusState(resp: null);
}
