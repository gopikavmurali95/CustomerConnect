part of 'must_sell_approve_bloc.dart';

@freezed
class MustSellApproveEvent with _$MustSellApproveEvent {
  const factory MustSellApproveEvent.approveMustSellEvent(
      {required MustSellApproveInModel approve}) = ApproveMustSellEvent;
  const factory MustSellApproveEvent.clearMustSellApproveEvent() =
      ClearMustSellApproveEvent;

  const factory MustSellApproveEvent.mustSellLoadingEvent() =
      MustSellLoadingEvent;
}
