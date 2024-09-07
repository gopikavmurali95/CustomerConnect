import 'package:json_annotation/json_annotation.dart';

part 'out_of_stock_customer_model.g.dart';

@JsonSerializable()
class OutOfStockCustomerModel {
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'cus_ID')
  String? cusId;
  @JsonKey(name: 'ProdCount')
  String? prodCount;
  @JsonKey(name: 'cus_ArName')
  String? cusArName;

  OutOfStockCustomerModel(
      {this.cusCode, this.cusName, this.cusId, this.prodCount});

  factory OutOfStockCustomerModel.fromJson(Map<String, dynamic> json) {
    return _$OutOfStockCustomerModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OutOfStockCustomerModelToJson(this);
}
