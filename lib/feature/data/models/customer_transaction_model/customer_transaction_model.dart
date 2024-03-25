import 'package:json_annotation/json_annotation.dart';

part 'customer_transaction_model.g.dart';

@JsonSerializable()
class CustomerTransactionModel {
  @JsonKey(name: 'CusTrnInvoice')
  String? cusTrnInvoice;
  @JsonKey(name: 'CusTrnARCollection')
  String? cusTrnArCollection;
  @JsonKey(name: 'InvoiceAmount')
  String? invoiceAmount;
  @JsonKey(name: 'ARAmount')
  String? arAmount;

  CustomerTransactionModel({
    this.cusTrnInvoice,
    this.cusTrnArCollection,
    this.invoiceAmount,
    this.arAmount,
  });

  factory CustomerTransactionModel.fromJson(Map<String, dynamic> json) {
    return _$CustomerTransactionModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerTransactionModelToJson(this);
}
