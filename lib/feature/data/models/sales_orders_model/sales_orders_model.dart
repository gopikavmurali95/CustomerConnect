import 'package:json_annotation/json_annotation.dart';

part 'sales_orders_model.g.dart';

@JsonSerializable()
class SalesOrdersModel {
  @JsonKey(name: 'ord_ID')
  String? ordId;
  @JsonKey(name: 'OrderID')
  String? orderId;
  @JsonKey(name: 'cus_ID')
  String? cusId;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'csh_ID')
  String? cshId;
  @JsonKey(name: 'csh_Code')
  String? cshCode;
  @JsonKey(name: 'csh_Name')
  String? cshName;
  @JsonKey(name: 'Date')
  String? date;
  @JsonKey(name: 'Time')
  String? time;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'rot_ID')
  String? rotId;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'SubTotal')
  String? subTotal;
  @JsonKey(name: 'VAT')
  String? vat;
  @JsonKey(name: 'GrandTotal')
  String? grandTotal;
  @JsonKey(name: 'Arcus_Name')
  String? arcusName;
  @JsonKey(name: 'ArStatus')
  String? arStatus;
  @JsonKey(name: 'Arcsh_Name')
  String? arcshName;

  SalesOrdersModel({
    this.ordId,
    this.orderId,
    this.cusId,
    this.cusCode,
    this.cusName,
    this.cshId,
    this.cshCode,
    this.cshName,
    this.date,
    this.time,
    this.rotCode,
    this.rotName,
    this.rotId,
    this.status,
    this.subTotal,
    this.vat,
    this.grandTotal,
  });

  factory SalesOrdersModel.fromJson(Map<String, dynamic> json) {
    return _$SalesOrdersModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SalesOrdersModelToJson(this);
}
