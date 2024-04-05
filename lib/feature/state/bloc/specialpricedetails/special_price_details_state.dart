part of 'special_price_details_bloc.dart';

@freezed
class SpecialPriceDetailsState with _$SpecialPriceDetailsState {
  const factory SpecialPriceDetailsState.getSpecialPriceDetailsState(
          {required List<SpecialPriceDetailsModel>? spdetails}) =
      GetSpecialPriceDetailsState;

  const factory SpecialPriceDetailsState.specialPriceDetailsFailedState() =
      specialPriceDetailsFailedState;

  factory SpecialPriceDetailsState.initial() =>
      const SpecialPriceDetailsState.getSpecialPriceDetailsState(
          spdetails: null);
}
