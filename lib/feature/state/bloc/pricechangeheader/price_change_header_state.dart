part of 'price_change_header_bloc.dart';

@freezed
class PriceChangeHeaderState with _$PriceChangeHeaderState {
  const factory PriceChangeHeaderState.getPriceChangeState(
      {required List<PriceChangeHeaderModel>? pcHeader}) = GetPriceChangeState;

  const factory PriceChangeHeaderState.priceChangeFailureState() =
      PriceChangeFailureState;

  factory PriceChangeHeaderState.initial() =>
      const PriceChangeHeaderState.getPriceChangeState(pcHeader: null);
}
