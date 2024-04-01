part of 'cus_geo_location_bloc.dart';

@freezed
class CusGeoLocationState with _$CusGeoLocationState {
  const factory CusGeoLocationState.getCusGeoLocationState(
          {required List<CusGeoLocationModel>? geolocations}) =
      getCusGeoLocationState;
  const factory CusGeoLocationState.getgeolocationFailedState() =
      GetgeolocationFailedState;

  factory CusGeoLocationState.initial() =>
      const CusGeoLocationState.getCusGeoLocationState(geolocations: null);
}
