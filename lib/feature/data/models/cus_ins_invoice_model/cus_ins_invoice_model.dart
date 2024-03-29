import 'package:json_annotation/json_annotation.dart';

part 'cus_ins_invoice_model.g.dart';

@JsonSerializable()
class CusInsInvoiceModel {
  @JsonKey(name: 'InvoiceNo')
  String? invoiceNo;
  @JsonKey(name: 'InvoiceType')
  String? invoiceType;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'Date')
  String? date;
  @JsonKey(name: 'Time')
  String? time;
  @JsonKey(name: 'ID')
  String? id;
  @JsonKey(name: 'GrandTotal')
  String? grandTotal;

  CusInsInvoiceModel({
    this.invoiceNo,
    this.invoiceType,
    this.status,
    this.date,
    this.time,
    this.id,
    this.grandTotal,
  });

  factory CusInsInvoiceModel.fromJson(Map<String, dynamic> json) {
    return _$CusInsInvoiceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CusInsInvoiceModelToJson(this);
}
