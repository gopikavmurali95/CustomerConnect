import 'package:json_annotation/json_annotation.dart';

part 'cus_geo_location_model.g.dart';

@JsonSerializable()
class CusGeoLocationModel {
  @JsonKey(name: 'cgl_ID')
  String? cglId;
  @JsonKey(name: 'cgl_CusGeoLoc')
  String? cglCusGeoLoc;
  @JsonKey(name: 'usr_Name')
  String? usrName;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_GeoCode')
  String? cusGeoCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'cus_ID')
  String? cusId;
  @JsonKey(name: 'CreatedDate')
  String? createdDate;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'usr_Code')
  String? usrCode;
  String? geolocurl;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'usr_ArName')
  String? usrArName;
  @JsonKey(name: 'cus_ArName')
  String? cusArName;

  CusGeoLocationModel({
    this.cglId,
    this.cglCusGeoLoc,
    this.usrName,
    this.cusCode,
    this.cusGeoCode,
    this.cusName,
    this.cusId,
    this.createdDate,
    this.rotName,
    this.rotCode,
    this.usrCode,
    this.geolocurl,
    this.status,
    this.usrArName,
    this.cusArName,
  });

  factory CusGeoLocationModel.fromJson(Map<String, dynamic> json) {
    return _$CusGeoLocationModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CusGeoLocationModelToJson(this);
}
