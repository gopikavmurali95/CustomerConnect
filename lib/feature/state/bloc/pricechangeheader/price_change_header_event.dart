part of 'price_change_header_bloc.dart';

@freezed
class PriceChangeHeaderEvent with _$PriceChangeHeaderEvent {
  const factory PriceChangeHeaderEvent.getPriceChangeHeaderEvent(
      {required String rotID,
      required String mode,
      required String searchQuery}) = GetPriceChangeHeaderEvent;

  const factory PriceChangeHeaderEvent.clearPriceChangeHeader() =
      ClearPriceChangeHeader;
}
