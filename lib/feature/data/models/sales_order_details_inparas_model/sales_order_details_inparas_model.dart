import 'package:json_annotation/json_annotation.dart';

part 'sales_order_details_inparas_model.g.dart';

@JsonSerializable()
class SalesOrderDetailsInparasModel {
  @JsonKey(name: 'UserID')
  String? userId;
  @JsonKey(name: 'Route')
  String? route;
  @JsonKey(name: 'cus_ID')
  String? cusId;
  @JsonKey(name: 'OrderID')
  String? orderID;

  SalesOrderDetailsInparasModel(
      {this.orderID, this.route, this.cusId, this.userId});

  factory SalesOrderDetailsInparasModel.fromJson(Map<String, dynamic> json) {
    return _$SalesOrderDetailsInparasModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SalesOrderDetailsInparasModelToJson(this);
}
