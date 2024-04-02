import 'package:json_annotation/json_annotation.dart';

part 'cus_ins_outstanding_header_model.g.dart';

@JsonSerializable()
class CusInsOutstandingHeaderModel {
  @JsonKey(name: 'InvoiceID')
  String? invoiceId;
  @JsonKey(name: 'InvoicedOn')
  String? invoicedOn;
  @JsonKey(name: 'InvoiceAmount')
  String? invoiceAmount;
  @JsonKey(name: 'AmountPaid')
  String? amountPaid;
  @JsonKey(name: 'InvoiceBalance')
  String? invoiceBalance;
  @JsonKey(name: 'PDC_Amount')
  String? pdcAmount;
  @JsonKey(name: 'CreatedDate')
  String? createdDate;
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
  @JsonKey(name: 'rot_ID')
  String? rotId;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'ID')
  String? id;

  CusInsOutstandingHeaderModel({
    this.invoiceId,
    this.invoicedOn,
    this.invoiceAmount,
    this.amountPaid,
    this.invoiceBalance,
    this.pdcAmount,
    this.createdDate,
    this.cusId,
    this.cusCode,
    this.cusName,
    this.cshId,
    this.cshCode,
    this.cshName,
    this.rotId,
    this.rotCode,
    this.rotName,
    this.status,
    this.id,
  });

  factory CusInsOutstandingHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$CusInsOutstandingHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CusInsOutstandingHeaderModelToJson(this);
}
