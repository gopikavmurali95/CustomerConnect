part of 'cus_geo_location_bloc.dart';

@freezed
class CusGeoLocationEvent with _$CusGeoLocationEvent {
  const factory CusGeoLocationEvent.getCusGeoLocationEvent(
      {required CusGeoLocInModel cusGeoLocInModel}) = GetCusGeoLocationEvent;
  const factory CusGeoLocationEvent.clearCusgeoLocationEvent() =
      ClearCusgeoLocationEvent;
}
