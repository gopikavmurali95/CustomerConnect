import 'package:json_annotation/json_annotation.dart';

part 'credit_note_detail_model.g.dart';

@JsonSerializable()
class CreditNoteDetailModel {
  @JsonKey(name: 'cnd_ID')
  String? cndId;
  @JsonKey(name: 'inv_InvoiceID')
  String? invInvoiceId;
  @JsonKey(name: 'TransTime')
  String? transTime;
  @JsonKey(name: 'prd_Name')
  String? prdName;
  @JsonKey(name: 'HUOM')
  String? huom;
  @JsonKey(name: 'crd_HQty')
  String? crdHQty;
  @JsonKey(name: 'LUOM')
  String? luom;
  @JsonKey(name: 'crd_LQty')
  String? crdLQty;
  @JsonKey(name: 'cnd_crd_Amount')
  String? cndCrdAmount;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'Arprd_Name')
  String? arprdName;
  @JsonKey(name: 'ArStatus')
  String? arStatus;
  CreditNoteDetailModel({
    this.cndId,
    this.invInvoiceId,
    this.transTime,
    this.prdName,
    this.huom,
    this.crdHQty,
    this.luom,
    this.crdLQty,
    this.cndCrdAmount,
    this.status,
    this.arStatus,
    this.arprdName,
  });

  factory CreditNoteDetailModel.fromJson(Map<String, dynamic> json) {
    return _$CreditNoteDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CreditNoteDetailModelToJson(this);
}
