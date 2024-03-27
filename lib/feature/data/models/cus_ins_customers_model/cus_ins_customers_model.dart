import 'package:json_annotation/json_annotation.dart';

part 'cus_ins_customers_model.g.dart';

@JsonSerializable()
class CusInsCustomersModel {
  @JsonKey(name: 'cus_ID')
  String? cusId;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'Header_Code')
  String? headerCode;
  @JsonKey(name: 'Header_Name')
  String? headerName;
  @JsonKey(name: 'Area_Name')
  String? areaName;
  @JsonKey(name: 'Class_Name')
  String? className;
  @JsonKey(name: 'Cus_Type')
  String? cusType;
  @JsonKey(name: 'rot_ID')
  String? rotId;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'rot_Name')
  String? rotName;

  CusInsCustomersModel({
    this.cusId,
    this.cusCode,
    this.cusName,
    this.headerCode,
    this.headerName,
    this.areaName,
    this.className,
    this.cusType,
    this.rotId,
    this.rotCode,
    this.rotName,
  });

  factory CusInsCustomersModel.fromJson(Map<String, dynamic> json) {
    return _$CusInsCustomersModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CusInsCustomersModelToJson(this);
}
