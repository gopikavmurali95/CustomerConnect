import 'package:json_annotation/json_annotation.dart';

part 'invoice_details_model.g.dart';

@JsonSerializable()
class InvoiceDetailsModel {
  @JsonKey(name: 'prd_ID')
  String? prdId;
  @JsonKey(name: 'prd_Code')
  String? prdCode;
  @JsonKey(name: 'prd_Name')
  String? prdName;
  @JsonKey(name: 'prd_Type')
  String? prdType;
  @JsonKey(name: 'LowerUOM')
  String? lowerUom;
  @JsonKey(name: 'HigherUOM')
  String? higherUom;
  @JsonKey(name: 'LowerQty')
  String? lowerQty;
  @JsonKey(name: 'HigherQty')
  String? higherQty;
  @JsonKey(name: 'Amount')
  String? amount;
  @JsonKey(name: 'prd_ArName')
  String? prdArName;

  InvoiceDetailsModel({
    this.prdId,
    this.prdCode,
    this.prdName,
    this.prdType,
    this.lowerUom,
    this.higherUom,
    this.lowerQty,
    this.higherQty,
    this.amount,
    this.prdArName,
  });

  factory InvoiceDetailsModel.fromJson(Map<String, dynamic> json) {
    return _$InvoiceDetailsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InvoiceDetailsModelToJson(this);
}
