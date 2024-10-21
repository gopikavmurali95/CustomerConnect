import 'package:json_annotation/json_annotation.dart';

part 'cus_override_approval_model.g.dart';

@JsonSerializable()
class CusOverrideApprovalModel {
  @JsonKey(name: 'ooa_ID')
  int? ooaId;
  @JsonKey(name: 'ooa_cse_ID')
  int? ooaCseId;
  @JsonKey(name: 'ooa_udp_ID')
  int? ooaUdpId;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'ooa_TransID')
  int? ooaTransId;
  @JsonKey(name: 'ooa_Type')
  String? ooaType;
  @JsonKey(name: 'TotalInvAmt')
  int? totalInvAmt;
  @JsonKey(name: 'AvailableCreditLimit')
  int? availableCreditLimit;
  @JsonKey(name: 'TotalCreditLimit')
  int? totalCreditLimit;
  @JsonKey(name: 'TotalOutstanding')
  int? totalOutstanding;
  @JsonKey(name: 'TotalCreditDays')
  int? totalCreditDays;
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
  int? ooaCurrentLevel;
  @JsonKey(name: 'ooa_wfm_ID')
  int? ooaWfmId;

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
