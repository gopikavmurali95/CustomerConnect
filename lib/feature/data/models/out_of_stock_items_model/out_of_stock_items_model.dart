import 'package:json_annotation/json_annotation.dart';

part 'out_of_stock_items_model.g.dart';

@JsonSerializable()
class OutOfStockItemsModel {
  @JsonKey(name: 'prd_Code')
  String? prdCode;
  @JsonKey(name: 'prd_Name')
  String? prdName;
  @JsonKey(name: 'osi_ID')
  String? osiId;
  @JsonKey(name: 'cusCount')
  String? cusCount;
  OutOfStockItemsModel({this.prdCode, this.prdName, this.osiId, this.cusCount});

  factory OutOfStockItemsModel.fromJson(Map<String, dynamic> json) {
    return _$OutOfStockItemsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OutOfStockItemsModelToJson(this);
}
