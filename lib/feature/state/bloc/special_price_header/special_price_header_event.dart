part of 'special_price_header_bloc.dart';

@freezed
class SpecialPriceHeaderEvent with _$SpecialPriceHeaderEvent {
  const factory SpecialPriceHeaderEvent.getSpecialPriceHeaderEvent(
          {required SpecialPriceHeaderModel spPriceInparas}) =
      GetSpecialPriceHeaderEvent;

  const factory SpecialPriceHeaderEvent.specialPriceFailedEvent() =
      SpecialPriceFailedEvent;

  const factory SpecialPriceHeaderEvent.clearSpecialPriceEvent() =
      ClearSpecialPriceEvent;
}
