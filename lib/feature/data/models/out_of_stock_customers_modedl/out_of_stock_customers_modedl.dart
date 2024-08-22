import 'package:json_annotation/json_annotation.dart';

part 'out_of_stock_customers_modedl.g.dart';

@JsonSerializable()
class OutOfStockCustomersModedl {
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'cus_ID')
  String? cusId;
  @JsonKey(name: 'cus_ArName')
  String? cusArName;

  OutOfStockCustomersModedl({this.cusCode, this.cusName, this.cusId});

  factory OutOfStockCustomersModedl.fromJson(Map<String, dynamic> json) {
    return _$OutOfStockCustomersModedlFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OutOfStockCustomersModedlToJson(this);
}
