import 'package:json_annotation/json_annotation.dart';

part 'customer_foc_detail_model.g.dart';

@JsonSerializable()
class CustomerFocDetailModel {
  @JsonKey(name: 'cfa_ID')
  String? cfaId;
  @JsonKey(name: 'cfa_prd_ID')
  String? cfaPrdId;
  @JsonKey(name: 'prd_Code')
  String? prdCode;
  @JsonKey(name: 'prd_Name')
  String? prdName;
  @JsonKey(name: 'cfa_TotalQty')
  String? cfaTotalQty;
  @JsonKey(name: 'cfa_BalanceQty')
  String? cfaBalanceQty;
  @JsonKey(name: 'CreatedBy')
  String? createdBy;
  @JsonKey(name: 'ModifiedBy')
  String? modifiedBy;
  @JsonKey(name: 'ModifiedDate')
  String? modifiedDate;
  @JsonKey(name: 'CreatedDate')
  String? createdDate;
  @JsonKey(name: 'rsn_Name')
  String? rsnName;
  @JsonKey(name: 'ApprovalStatus')
  String? approvalStatus;

  CustomerFocDetailModel({
    this.cfaId,
    this.cfaPrdId,
    this.prdCode,
    this.prdName,
    this.cfaTotalQty,
    this.cfaBalanceQty,
    this.createdBy,
    this.modifiedBy,
    this.modifiedDate,
    this.createdDate,
    this.rsnName,
    this.approvalStatus,
  });

  factory CustomerFocDetailModel.fromJson(Map<String, dynamic> json) {
    return _$CustomerFocDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerFocDetailModelToJson(this);
}
