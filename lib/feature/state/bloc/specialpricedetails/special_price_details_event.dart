part of 'special_price_details_bloc.dart';

@freezed
class SpecialPriceDetailsEvent with _$SpecialPriceDetailsEvent {
  const factory SpecialPriceDetailsEvent.getSpecialPriceDetailsEvent(
      {required String prhID,
      required String searchQuery}) = GetSpecialPriceDetailsEvent;

  const factory SpecialPriceDetailsEvent.clearSpecialriceDetailsEvent() =
      ClearSpecialriceDetailsEvent;
}
