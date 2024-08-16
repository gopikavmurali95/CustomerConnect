import 'package:json_annotation/json_annotation.dart';

part 'price_change_header_model.g.dart';

@JsonSerializable()
class PriceChangeHeaderModel {
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'pch_rot_ID')
  String? pchRotId;
  @JsonKey(name: 'usr_Name')
  String? usrName;
  @JsonKey(name: 'pch_ID')
  String? pchId;
  @JsonKey(name: 'csh_Code')
  String? cshCode;
  @JsonKey(name: 'csh_Name')
  String? cshName;
  @JsonKey(name: 'pch_ReqID')
  String? pchReqId;
  @JsonKey(name: 'CreatedDate')
  String? createdDate;
  @JsonKey(name: 'Type')
  String? type;
  @JsonKey(name: 'pch_ApprovalStatus')
  String? pchApprovalStatus;
  @JsonKey(name: 'UserID')
  String? userID;
  @JsonKey(name: 'rotID')
  String? rotID;

  @JsonKey(name: 'sp_Approvals')
  String? spApprovals;
  @JsonKey(name: 'Arcus_Name')
  String? arcusName;
  @JsonKey(name: 'Arusr_Name')
  String? arusrName;
  @JsonKey(name: 'Arcsh_Name')
  String? arcshName;
  @JsonKey(name: 'Arpch_ApprovalStatus')
  String? arpchApprovalStatus;
  @JsonKey(name: 'ArType')
  String? arType;

  PriceChangeHeaderModel({
    this.cusCode,
    this.cusName,
    this.rotName,
    this.rotCode,
    this.pchRotId,
    this.usrName,
    this.pchId,
    this.cshCode,
    this.cshName,
    this.pchReqId,
    this.createdDate,
    this.type,
    this.pchApprovalStatus,
    this.rotID,
    this.userID,
    this.arType,
    this.arcshName,
    this.arcusName,
    this.arpchApprovalStatus,
    this.arusrName,
    this.spApprovals,
  });

  factory PriceChangeHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$PriceChangeHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PriceChangeHeaderModelToJson(this);
}
