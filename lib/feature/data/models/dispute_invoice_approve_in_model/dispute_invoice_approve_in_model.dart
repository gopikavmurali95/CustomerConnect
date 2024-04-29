import 'package:json_annotation/json_annotation.dart';

part 'dispute_invoice_approve_in_model.g.dart';

@JsonSerializable()
class DisputeInvoiceApproveInModel {
  @JsonKey(name: 'ReqID')
  String? reqId;
  @JsonKey(name: 'Remark')
  String? remark;
  @JsonKey(name: 'NextLevel')
  String? nextLevel;
  @JsonKey(name: 'UserId')
  String? userId;

  DisputeInvoiceApproveInModel({
    this.reqId,
    this.remark,
    this.nextLevel,
    this.userId,
  });

  factory DisputeInvoiceApproveInModel.fromJson(Map<String, dynamic> json) {
    return _$DisputeInvoiceApproveInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DisputeInvoiceApproveInModelToJson(this);
}
