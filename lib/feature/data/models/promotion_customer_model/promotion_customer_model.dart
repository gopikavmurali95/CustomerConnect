import 'package:json_annotation/json_annotation.dart';

part 'promotion_customer_model.g.dart';

@JsonSerializable()
class PromotionCustomerModel {
  @JsonKey(name: 'CusCode')
  String? cusCode;
  @JsonKey(name: 'CusName')
  String? cusName;
  @JsonKey(name: 'CusType')
  String? cusType;
  @JsonKey(name: 'AreaName')
  String? areaName;
  @JsonKey(name: 'Class')
  String? promotionCustomerModelClass;
  @JsonKey(name: 'ID')
  String? id;

  PromotionCustomerModel({
    this.cusCode,
    this.cusName,
    this.cusType,
    this.areaName,
    this.promotionCustomerModelClass,
    this.id,
  });

  factory PromotionCustomerModel.fromJson(Map<String, dynamic> json) {
    return _$PromotionCustomerModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PromotionCustomerModelToJson(this);
}
