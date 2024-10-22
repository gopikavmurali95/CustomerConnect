import 'package:json_annotation/json_annotation.dart';

part 'cus_override_approval_model.g.dart';

@JsonSerializable()
class CusOverrideApprovalModel {
  @JsonKey(name: 'ooa_ID')
  String? ooaId;
  @JsonKey(name: 'ooa_cse_ID')
  String? ooaCseId;
  @JsonKey(name: 'ooa_udp_ID')
  String? ooaUdpId;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'ooa_TransID')
  String? ooaTransId;
  @JsonKey(name: 'ooa_Type')
  String? ooaType;
  @JsonKey(name: 'TotalInvAmt')
  String? totalInvAmt;
  @JsonKey(name: 'AvailableCreditLimit')
  String? availableCreditLimit;
  @JsonKey(name: 'TotalCreditLimit')
  String? totalCreditLimit;
  @JsonKey(name: 'TotalOutstanding')
  String? totalOutstanding;
  @JsonKey(name: 'TotalCreditDays')
  String? totalCreditDays;
  @JsonKey(name: 'ooa_ApprovalStatus')
  String? ooaApprovalStatus;
  @JsonKey(name: 'CreatedBy')
  String? createdBy;
  @JsonKey(name: 'CreatedDate')
  String? createdDate;
  @JsonKey(name: 'ModifiedBy')
  String? modifiedBy;
  @JsonKey(name: 'ModifiedDate')
  String? modifiedDate;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'ooa_CurrentLevel')
  String? ooaCurrentLevel;
  @JsonKey(name: 'ooa_wfm_ID')
  String? ooaWfmId;

  CusOverrideApprovalModel({
    this.ooaId,
    this.ooaCseId,
    this.ooaUdpId,
    this.rotCode,
    this.rotName,
    this.cusCode,
    this.cusName,
    this.ooaTransId,
    this.ooaType,
    this.totalInvAmt,
    this.availableCreditLimit,
    this.totalCreditLimit,
    this.totalOutstanding,
    this.totalCreditDays,
    this.ooaApprovalStatus,
    this.createdBy,
    this.createdDate,
    this.modifiedBy,
    this.modifiedDate,
    this.status,
    this.ooaCurrentLevel,
    this.ooaWfmId,
  });

  factory CusOverrideApprovalModel.fromJson(Map<String, dynamic> json) {
    return _$CusOverrideApprovalModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CusOverrideApprovalModelToJson(this);
}
