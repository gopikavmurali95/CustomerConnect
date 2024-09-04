import 'package:json_annotation/json_annotation.dart';

part 'return_approval_detail_model.g.dart';

@JsonSerializable()
class ReturnApprovalDetailModel {
  @JsonKey(name: 'rad_ID')
  String? radId;
  @JsonKey(name: 'rad_prd_ID')
  String? radPrdId;
  @JsonKey(name: 'prd_Code')
  String? prdCode;
  @JsonKey(name: 'prd_Name')
  String? prdName;
  @JsonKey(name: 'RequestedHQty')
  String? requestedHQty;
  @JsonKey(name: 'HUOM')
  String? huom;
  @JsonKey(name: 'RequestedLQty')
  String? requestedLQty;
  @JsonKey(name: 'RLUOM')
  String? rluom;
  @JsonKey(name: 'ReturnHQty')
  String? returnHQty;
  @JsonKey(name: 'ReturnedHUOM')
  String? returnedHuom;
  @JsonKey(name: 'ReturnLQty')
  String? returnLQty;
  @JsonKey(name: 'LUOM')
  String? luom;
  @JsonKey(name: 'AdjustedHQty')
  String? adjustedHQty;
  @JsonKey(name: 'AdjustedLQty')
  String? adjustedLQty;
  @JsonKey(name: 'ExcessHQty')
  String? excessHQty;
  @JsonKey(name: 'ExcessLQty')
  String? excessLQty;
  @JsonKey(name: 'rsn_Name')
  String? rsnName;
  @JsonKey(name: 'inv_InvoiceID')
  String? invInvoiceId;
  @JsonKey(name: 'rad_ApprovalStatus')
  String? radApprovalStatus;
  @JsonKey(name: 'Arprd_Name')
  String? arprdName;
  @JsonKey(name: 'Arrsn_NameArprd_Name')
  String? arrsnName;

  ReturnApprovalDetailModel({
    this.radId,
    this.radPrdId,
    this.prdCode,
    this.prdName,
    this.requestedHQty,
    this.huom,
    this.requestedLQty,
    this.rluom,
    this.returnHQty,
    this.returnedHuom,
    this.returnLQty,
    this.luom,
    this.adjustedHQty,
    this.adjustedLQty,
    this.excessHQty,
    this.excessLQty,
    this.rsnName,
    this.invInvoiceId,
    this.radApprovalStatus,
    this.arprdName,
    this.arrsnName,
  });

  factory ReturnApprovalDetailModel.fromJson(Map<String, dynamic> json) {
    return _$ReturnApprovalDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ReturnApprovalDetailModelToJson(this);
}
