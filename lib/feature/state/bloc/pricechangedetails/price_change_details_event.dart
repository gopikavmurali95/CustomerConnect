part of 'price_change_details_bloc.dart';

@freezed
class PriceChangeDetailsEvent with _$PriceChangeDetailsEvent {
  const factory PriceChangeDetailsEvent.getPriceChangeDetailsEvent(
      {required String pchID}) = GetPriceChangeDetailsEvent;

  const factory PriceChangeDetailsEvent.clearPriceChangeDetails() =
      ClearPriceChangeDetails;
}
