import 'package:json_annotation/json_annotation.dart';

part 'out_of_stock_customer_detail_model.g.dart';

@JsonSerializable()
class OutOfStockCustomerDetailModel {
  @JsonKey(name: 'prd_Code')
  String? prdCode;
  @JsonKey(name: 'prd_Name')
  String? prdName;
  @JsonKey(name: 'prd_ArName')
  String? prdArName;

  OutOfStockCustomerDetailModel({this.prdCode, this.prdName});

  factory OutOfStockCustomerDetailModel.fromJson(Map<String, dynamic> json) {
    return _$OutOfStockCustomerDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OutOfStockCustomerDetailModelToJson(this);
}
