part of 'must_sell_detail_bloc.dart';

@freezed
class MustSellDetailState with _$MustSellDetailState {
  const factory MustSellDetailState.getMustSellDetailState(
      {required List<MustSellDetailModel>? details}) = GetMustSellDetailState;

  const factory MustSellDetailState.mustSellDetailsFailedState() =
      MustSellDetailsFailedState;

  factory MustSellDetailState.initial() =>
      const MustSellDetailState.getMustSellDetailState(details: null);
}
