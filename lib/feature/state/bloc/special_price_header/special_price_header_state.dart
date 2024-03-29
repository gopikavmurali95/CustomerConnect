part of 'special_price_header_bloc.dart';

@freezed
class SpecialPriceHeaderState with _$SpecialPriceHeaderState {
  const factory SpecialPriceHeaderState.getSpecialPriceHeaderState(
          {required List<SpecialPriceHeaderOutparas>? spPrice}) =
      GetSspecialPriceHeaderState;

  const factory SpecialPriceHeaderState.speciaPriceHeaderFailedState() =
      SpeciaPriceHeaderFailedState;

  factory SpecialPriceHeaderState.initial() =>
      const SpecialPriceHeaderState.getSpecialPriceHeaderState(spPrice: null);
}
