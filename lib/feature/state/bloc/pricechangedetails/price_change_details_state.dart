part of 'price_change_details_bloc.dart';

@freezed
class PriceChangeDetailsState with _$PriceChangeDetailsState {
  const factory PriceChangeDetailsState.getPRiceChangeDetails(
          {required List<PriceChangeDetailsModel>? pcDetails}) =
      GetPRiceChangeDetailsState;

  const factory PriceChangeDetailsState.priceChangedetailsFailed() =
      PriceChangedetailsFailed;

  factory PriceChangeDetailsState.initial() =>
      const PriceChangeDetailsState.getPRiceChangeDetails(pcDetails: null);
}
