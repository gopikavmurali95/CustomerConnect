part of 'must_sell_detail_bloc.dart';

@freezed
class MustSellDetailEvent with _$MustSellDetailEvent {
  const factory MustSellDetailEvent.getMustSellDetailsEvent(
      {required String headerID,
      required String searchQuery}) = GetMustSellDetailsEvent;
  const factory MustSellDetailEvent.clearMustSellDetailsEvent() =
      ClearMustSellDetailsEvent;
}
