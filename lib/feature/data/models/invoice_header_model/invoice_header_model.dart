import 'package:json_annotation/json_annotation.dart';

part 'invoice_header_model.g.dart';

@JsonSerializable()
class InvoiceHeaderModel {
  @JsonKey(name: 'InvoiceNo')
  String? invoiceNo;
  @JsonKey(name: 'rot_ID')
  String? rotId;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'cusName')
  String? cusName;
  @JsonKey(name: 'cusCode')
  String? cusCode;
  @JsonKey(name: 'cusOutName')
  String? cusOutName;
  @JsonKey(name: 'cusOutCode')
  String? cusOutCode;
  @JsonKey(name: 'PayType')
  String? payType;
  @JsonKey(name: 'PayMode')
  String? payMode;
  @JsonKey(name: 'Date')
  String? date;
  @JsonKey(name: 'Time')
  String? time;
  @JsonKey(name: 'ID')
  String? id;
  @JsonKey(name: 'GrandTotal')
  String? grandTotal;
  @JsonKey(name: 'InvoiceType')
  String? invoiceType;
  @JsonKey(name: 'ArcusName')
  String? arcusName;
  @JsonKey(name: 'ArStatus')
  String? arStatus;
  @JsonKey(name: 'ArcusOutName')
  String? arcusOutName;
  InvoiceHeaderModel({
    this.invoiceNo,
    this.rotId,
    this.rotCode,
    this.rotName,
    this.status,
    this.cusName,
    this.cusCode,
    this.cusOutName,
    this.cusOutCode,
    this.payType,
    this.payMode,
    this.date,
    this.time,
    this.id,
    this.grandTotal,
    this.invoiceType,
    this.arStatus,
    this.arcusName,
    this.arcusOutName,
  });

  factory InvoiceHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$InvoiceHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InvoiceHeaderModelToJson(this);
}
