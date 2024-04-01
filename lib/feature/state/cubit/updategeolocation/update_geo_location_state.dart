part of 'update_geo_location_cubit.dart';

@freezed
class UpdateGeoLocationState with _$UpdateGeoLocationState {
  const factory UpdateGeoLocationState.updateGeoLocationSuccessState(
          {required ConfirmGeoLocationsModel? result}) =
      UpdateGeoLocationSuccessState;

  const factory UpdateGeoLocationState.updateGeoLocationFailedState() =
      UpdateGeoLocationFailedState;
  const factory UpdateGeoLocationState.updateGeoLocationLoadingSTate() =
      UpdateGeoLocationLoadingSTate;

  factory UpdateGeoLocationState.initial() =>
      const UpdateGeoLocationState.updateGeoLocationSuccessState(result: null);
}
