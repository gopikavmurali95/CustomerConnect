import 'package:json_annotation/json_annotation.dart';

part 'todays_delivery_details_model.g.dart';

@JsonSerializable()
class TodaysDeliveryDetailsModel {
  @JsonKey(name: 'prd_ID')
  String? prhId;
  @JsonKey(name: 'prd_Code')
  String? prhCode;
  @JsonKey(name: 'prd_Name')
  String? prhName;
  @JsonKey(name: 'LowerUOM')
  String? lUom;
  @JsonKey(name: 'HigherUOM')
  String? hUom;
  @JsonKey(name: 'HigherQty')
  String? hQty;
  @JsonKey(name: 'LowerQty')
  String? lQty;
  @JsonKey(name: 'Total')
  String? total;

  TodaysDeliveryDetailsModel(
      {this.prhId,
      this.prhCode,
      this.prhName,
      this.hQty,
      this.hUom,
      this.lQty,
      this.lUom,
      this.total});

  factory TodaysDeliveryDetailsModel.fromJson(Map<String, dynamic> json) {
    return _$TodaysDeliveryDetailsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TodaysDeliveryDetailsModelToJson(this);
}
