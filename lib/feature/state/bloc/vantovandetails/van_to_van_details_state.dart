part of 'van_to_van_details_bloc.dart';

@freezed
class VanToVanDetailsState with _$VanToVanDetailsState {
  const factory VanToVanDetailsState.getVanToVanDetailsState(
      {required List<VanToVanDetailsModel>? details}) = getVanToVanDetailsState;

  const factory VanToVanDetailsState.vanToVanDetailFailedState() =
      vanToVanDetailFailedState;

  factory VanToVanDetailsState.initial() =>
      const VanToVanDetailsState.getVanToVanDetailsState(details: null);
}
