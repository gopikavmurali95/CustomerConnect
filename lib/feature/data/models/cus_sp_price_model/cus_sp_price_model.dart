import 'package:json_annotation/json_annotation.dart';

part 'cus_sp_price_model.g.dart';

@JsonSerializable()
class CusSpPriceModel {
  @JsonKey(name: 'prh_ID')
  String? prhId;
  @JsonKey(name: 'prh_Code')
  String? prhCode;
  @JsonKey(name: 'prh_Name')
  String? prhName;
  @JsonKey(name: 'StartDate')
  String? startDate;
  @JsonKey(name: 'EndDate')
  String? endDate;
  @JsonKey(name: 'prh_PayMode')
  String? prhPayMode;
  @JsonKey(name: 'Arprh_Name')
  String? arPrhName;

  CusSpPriceModel({
    this.prhId,
    this.prhCode,
    this.prhName,
    this.startDate,
    this.endDate,
    this.prhPayMode,
  });

  factory CusSpPriceModel.fromJson(Map<String, dynamic> json) {
    return _$CusSpPriceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CusSpPriceModelToJson(this);
}
