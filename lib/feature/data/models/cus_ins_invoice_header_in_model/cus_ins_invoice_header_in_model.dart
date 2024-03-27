import 'package:json_annotation/json_annotation.dart';

part 'cus_ins_invoice_header_in_model.g.dart';

@JsonSerializable()
class CusInsInvoiceHeaderInModel {
  @JsonKey(name: 'UserID')
  String? userId;
  @JsonKey(name: 'FromDate')
  String? fromDate;
  @JsonKey(name: 'ToDate')
  String? toDate;
  @JsonKey(name: 'Route')
  String? route;
  @JsonKey(name: 'Area')
  String? area;
  @JsonKey(name: 'SubArea')
  String? subArea;
  @JsonKey(name: 'InvoiceType')
  String? invoiceType;
  @JsonKey(name: 'PaymentType')
  String? paymentType;
  @JsonKey(name: 'InvoiceWith')
  String? invoiceWith;
  @JsonKey(name: 'CusID')
  String? cusId;

  CusInsInvoiceHeaderInModel({
    this.userId,
    this.fromDate,
    this.toDate,
    this.route,
    this.area,
    this.subArea,
    this.invoiceType,
    this.paymentType,
    this.invoiceWith,
    this.cusId,
  });

  factory CusInsInvoiceHeaderInModel.fromJson(Map<String, dynamic> json) {
    return _$CusInsInvoiceHeaderInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CusInsInvoiceHeaderInModelToJson(this);
}
