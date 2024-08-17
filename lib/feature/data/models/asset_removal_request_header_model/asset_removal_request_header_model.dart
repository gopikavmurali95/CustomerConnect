import 'package:json_annotation/json_annotation.dart';

part 'asset_removal_request_header_model.g.dart';

@JsonSerializable()
class AssetRemovalRequestHeaderModel {
  @JsonKey(name: 'arq_ID')
  String? arqId;
  @JsonKey(name: 'arq_Remarks')
  String? arqRemarks;
  @JsonKey(name: 'arq_Status')
  String? arqStatus;
  @JsonKey(name: 'ast_Code')
  String? astCode;
  @JsonKey(name: 'ast_Name')
  String? astName;
  @JsonKey(name: 'rsn_Name')
  String? rsnName;
  @JsonKey(name: 'rsn_Type')
  String? rsnType;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'atm_Code')
  String? atmCode;
  @JsonKey(name: 'atm_Name')
  String? atmName;
  @JsonKey(name: 'CreatedDate')
  String? createdDate;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'Route')
  String? route;
  @JsonKey(name: 'arq_ast_ID')
  String? arqAstId;
  @JsonKey(name: 'arq_cus_ID')
  String? arqCusId;
  @JsonKey(name: 'arq_asc_ID')
  String? arqAscId;
  @JsonKey(name: 'Image')
  String? image;
  @JsonKey(name: 'UserID')
  String? userID;
  @JsonKey(name: 'rotID')
  String? rotID;
  @JsonKey(name: 'ast_ArName')
  String? astArName;
  @JsonKey(name: 'rsn_ArName')
  String? rsnArName;
  @JsonKey(name: 'rsn_ArType')
  String? rsnArType;
  @JsonKey(name: 'cus_ArName')
  String? cusArName;
  @JsonKey(name: 'atm_ArName')
  String? atmArName;

  AssetRemovalRequestHeaderModel({
    this.arqId,
    this.arqRemarks,
    this.arqStatus,
    this.astCode,
    this.astName,
    this.rsnName,
    this.rsnType,
    this.cusCode,
    this.cusName,
    this.atmCode,
    this.atmName,
    this.createdDate,
    this.rotCode,
    this.route,
    this.arqAstId,
    this.arqCusId,
    this.arqAscId,
    this.image,
    this.rotID,
    this.userID,
    this.astArName,
    this.atmArName,
    this.cusArName,
    this.rsnArName,
    this.rsnArType,
  });

  factory AssetRemovalRequestHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$AssetRemovalRequestHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AssetRemovalRequestHeaderModelToJson(this);
  }
}
