import 'package:json_annotation/json_annotation.dart';

part 'invoice_details_footer_model.g.dart';

@JsonSerializable()
class InvoiceDetailsFooterModel {
  @JsonKey(name: 'Type')
  String? type;
  @JsonKey(name: 'Discount')
  String? discount;
  @JsonKey(name: 'VAT')
  String? vat;
  @JsonKey(name: 'Value')
  String? value;
  @JsonKey(name: 'SubTotal')
  String? subTotal;

  InvoiceDetailsFooterModel({
    this.type,
    this.discount,
    this.vat,
    this.value,
    this.subTotal,
  });

  factory InvoiceDetailsFooterModel.fromJson(Map<String, dynamic> json) {
    return _$InvoiceDetailsFooterModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InvoiceDetailsFooterModelToJson(this);
}
