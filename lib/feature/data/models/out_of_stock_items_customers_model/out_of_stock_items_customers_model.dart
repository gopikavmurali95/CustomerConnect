import 'package:json_annotation/json_annotation.dart';

part 'out_of_stock_items_customers_model.g.dart';

@JsonSerializable()
class OutOfStockItemsCustomersModel {
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;

  OutOfStockItemsCustomersModel({
    this.rotCode,
    this.rotName,
    this.cusCode,
    this.cusName,
  });

  factory OutOfStockItemsCustomersModel.fromJson(Map<String, dynamic> json) {
    return _$OutOfStockItemsCustomersModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OutOfStockItemsCustomersModelToJson(this);
}
