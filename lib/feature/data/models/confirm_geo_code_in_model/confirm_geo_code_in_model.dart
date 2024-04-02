import 'package:json_annotation/json_annotation.dart';

part 'confirm_geo_code_in_model.g.dart';

@JsonSerializable()
class ConfirmGeoCodeInModel {
  @JsonKey(name: 'cus_ID')
  String? cusId;
  @JsonKey(name: 'cgl_CusGeoLoc')
  String? cglCusGeoLoc;
  @JsonKey(name: 'cgl_ID')
  String? cglId;

  ConfirmGeoCodeInModel({this.cusId, this.cglCusGeoLoc, this.cglId});

  factory ConfirmGeoCodeInModel.fromJson(Map<String, dynamic> json) {
    return _$ConfirmGeoCodeInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ConfirmGeoCodeInModelToJson(this);
}
