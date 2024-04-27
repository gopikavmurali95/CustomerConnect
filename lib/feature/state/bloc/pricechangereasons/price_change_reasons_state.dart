part of 'price_change_reasons_bloc.dart';

@freezed
class PriceChangeReasonsState with _$PriceChangeReasonsState {
  const factory PriceChangeReasonsState.getPriceChangeReasons(
          {required List<PriceChangeReasonModel>? reasons}) =
      GetPriceChangeReasonsState;

  const factory PriceChangeReasonsState.priceChangeReasonFailed() =
      PriceChangeReasonFailed;

  factory PriceChangeReasonsState.initial() =>
      const PriceChangeReasonsState.getPriceChangeReasons(reasons: null);
}
