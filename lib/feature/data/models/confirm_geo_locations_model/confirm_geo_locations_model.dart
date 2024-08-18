import 'package:json_annotation/json_annotation.dart';

part 'confirm_geo_locations_model.g.dart';

@JsonSerializable()
class ConfirmGeoLocationsModel {
  @JsonKey(name: 'Res')
  String? res;
  @JsonKey(name: 'Title')
  String? title;
  @JsonKey(name: 'Descr')
  String? descr;
  @JsonKey(name: 'ArTitle')
  String? arTitle;

  ConfirmGeoLocationsModel({this.res, this.title, this.descr, this.arTitle});

  factory ConfirmGeoLocationsModel.fromJson(Map<String, dynamic> json) {
    return _$ConfirmGeoLocationsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ConfirmGeoLocationsModelToJson(this);
}
