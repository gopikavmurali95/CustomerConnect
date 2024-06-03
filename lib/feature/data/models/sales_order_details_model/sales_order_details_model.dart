import 'package:json_annotation/json_annotation.dart';

part 'sales_order_details_model.g.dart';

@JsonSerializable()
class SalesOrderDetailsModel {
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
  int? subTotal;
  @JsonKey(name: 'VAT')
  int? vat;
  @JsonKey(name: 'GrandTotal')
  int? grandTotal;

  SalesOrderDetailsModel({
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

  factory SalesOrderDetailsModel.fromJson(Map<String, dynamic> json) {
    return _$SalesOrderDetailsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SalesOrderDetailsModelToJson(this);
}
