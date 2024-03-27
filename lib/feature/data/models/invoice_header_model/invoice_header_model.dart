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

  InvoiceHeaderModel(
      {this.invoiceNo,
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
      this.invoiceType});

  factory InvoiceHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$InvoiceHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InvoiceHeaderModelToJson(this);
}
