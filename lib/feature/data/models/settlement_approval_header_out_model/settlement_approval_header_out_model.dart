import 'package:json_annotation/json_annotation.dart';

part 'settlement_approval_header_out_model.g.dart';

@JsonSerializable()
class SettlementApprovalHeaderOutModel {
  @JsonKey(name: 'sta_ID')
  String? staId;
  @JsonKey(name: 'udp_ID')
  String? udpId;
  @JsonKey(name: 'rot_Type')
  String? rotType;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'CreatedDate')
  String? createdDate;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'usr_Name')
  String? usrName;
  @JsonKey(name: 'Arrot_Name')
  String? arrotName;
  @JsonKey(name: 'Arusr_Name')
  String? arusrName;
  @JsonKey(name: 'Arrot_Type')
  String? arrotType;

  SettlementApprovalHeaderOutModel({
    this.staId,
    this.udpId,
    this.rotType,
    this.rotCode,
    this.rotName,
    this.createdDate,
    this.cusCode,
    this.cusName,
    this.usrName,
    this.arrotName,
    this.arusrName,
    this.arrotType,
  });

  factory SettlementApprovalHeaderOutModel.fromJson(Map<String, dynamic> json) {
    return _$SettlementApprovalHeaderOutModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SettlementApprovalHeaderOutModelToJson(this);
  }
}
