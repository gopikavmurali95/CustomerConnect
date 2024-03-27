import 'package:json_annotation/json_annotation.dart';

part 'invoice_header_inparas.g.dart';

@JsonSerializable()
class InvoiceHeaderInparas {
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
  @JsonKey(name: 'Customer')
  String? customer;
  @JsonKey(name: 'CustomerOutlet')
  String? customerOutlet;
  @JsonKey(name: 'InvoiceWith')
  String? invoiceWith;

  InvoiceHeaderInparas({
    this.userId,
    this.fromDate,
    this.toDate,
    this.route,
    this.area,
    this.subArea,
    this.invoiceType,
    this.paymentType,
    this.customer,
    this.customerOutlet,
    this.invoiceWith,
  });

  factory InvoiceHeaderInparas.fromJson(Map<String, dynamic> json) {
    return _$InvoiceHeaderInparasFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InvoiceHeaderInparasToJson(this);
}
