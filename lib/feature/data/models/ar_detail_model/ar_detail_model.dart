import 'package:json_annotation/json_annotation.dart';

part 'ar_detail_model.g.dart';

@JsonSerializable()
class ArDetailModel {
  @JsonKey(name: 'ard_ID')
  String? ardId;
  @JsonKey(name: 'ard_arh_ID')
  String? ardArhId;
  @JsonKey(name: 'ard_Amount')
  String? ardAmount;
  @JsonKey(name: 'ard_PDC_Amount')
  String? ardPdcAmount;
  @JsonKey(name: 'InvoiceID')
  String? invoiceId;
  @JsonKey(name: 'InvoicedOn')
  String? invoicedOn;
  @JsonKey(name: 'InvoiceAmount')
  String? invoiceAmount;
  @JsonKey(name: 'AmountPaid')
  String? amountPaid;

  ArDetailModel({
    this.ardId,
    this.ardArhId,
    this.ardAmount,
    this.ardPdcAmount,
    this.invoiceId,
    this.invoicedOn,
    this.invoiceAmount,
    this.amountPaid,
  });

  factory ArDetailModel.fromJson(Map<String, dynamic> json) {
    return _$ArDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ArDetailModelToJson(this);
}
