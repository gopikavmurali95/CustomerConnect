import 'package:json_annotation/json_annotation.dart';

part 'special_price_customer_model.g.dart';

@JsonSerializable()
class SpecialPriceCustomerModel {
  @JsonKey(name: 'CusID')
  String? cusId;
  @JsonKey(name: 'CusCode')
  String? cusCode;
  @JsonKey(name: 'CusName')
  String? cusName;
  @JsonKey(name: 'ArCusName')
  String? arcusName;

  SpecialPriceCustomerModel({this.cusId, this.cusCode, this.cusName});

  factory SpecialPriceCustomerModel.fromJson(Map<String, dynamic> json) {
    return _$SpecialPriceCustomerModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SpecialPriceCustomerModelToJson(this);
}
