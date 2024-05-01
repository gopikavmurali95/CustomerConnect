import 'package:json_annotation/json_annotation.dart';

part 'dispute_note_detail_model.g.dart';

@JsonSerializable()
class DisputeNoteDetailModel {
  @JsonKey(name: 'drd_ID')
  String? drdId;
  @JsonKey(name: 'drd_InvoiceBalance')
  String? drdInvoiceBalance;
  @JsonKey(name: 'InvoiceID')
  String? invoiceId;
  @JsonKey(name: 'TransTime')
  String? transTime;
  @JsonKey(name: 'InvoiceAmount')
  String? invoiceAmount;

  DisputeNoteDetailModel({
    this.drdId,
    this.drdInvoiceBalance,
    this.invoiceId,
    this.transTime,
    this.invoiceAmount,
  });

  factory DisputeNoteDetailModel.fromJson(Map<String, dynamic> json) {
    return _$DisputeNoteDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DisputeNoteDetailModelToJson(this);
}
