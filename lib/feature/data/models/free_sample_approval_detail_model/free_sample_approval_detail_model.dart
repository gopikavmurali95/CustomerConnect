import 'package:json_annotation/json_annotation.dart';

part 'free_sample_approval_detail_model.g.dart';

@JsonSerializable()
class FreeSampleApprovalDetailModel {
  @JsonKey(name: 'fsa_ID')
  String? fsaId;
  @JsonKey(name: 'fsa_prd_ID')
  String? fsaPrdId;
  @JsonKey(name: 'prd_Code')
  String? prdCode;
  @JsonKey(name: 'prd_Name')
  String? prdName;
  @JsonKey(name: 'HigherQty')
  String? higherQty;
  @JsonKey(name: 'HigherUOM')
  String? higherUom;
  @JsonKey(name: 'LowerQty')
  String? lowerQty;
  @JsonKey(name: 'LowerUOM')
  String? lowerUom;
  @JsonKey(name: 'ApprovalStatus')
  String? approvalStatus;
  @JsonKey(name: 'CreatedBy')
  String? createdBy;
  @JsonKey(name: 'CreatedDate')
  String? createdDate;
  @JsonKey(name: 'ModifiedBy')
  String? modifiedBy;
  @JsonKey(name: 'ModifiedDate')
  String? modifiedDate;
  @JsonKey(name: 'Reason')
  String? reason;

  FreeSampleApprovalDetailModel({
    this.fsaId,
    this.fsaPrdId,
    this.prdCode,
    this.prdName,
    this.higherQty,
    this.higherUom,
    this.lowerQty,
    this.lowerUom,
    this.approvalStatus,
    this.createdBy,
    this.createdDate,
    this.modifiedBy,
    this.modifiedDate,
  });

  factory FreeSampleApprovalDetailModel.fromJson(Map<String, dynamic> json) {
    return _$FreeSampleApprovalDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FreeSampleApprovalDetailModelToJson(this);
}
