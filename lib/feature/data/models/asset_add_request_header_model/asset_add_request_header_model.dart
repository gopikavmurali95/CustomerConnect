import 'package:json_annotation/json_annotation.dart';

part 'asset_add_request_header_model.g.dart';

@JsonSerializable()
class AssetAddRequestHeaderModel {
  @JsonKey(name: 'aah_ID')
  String? aahId;
  @JsonKey(name: 'aah_ast_ID')
  String? aahAstId;
  @JsonKey(name: 'aah_slno')
  String? aahSlno;
  @JsonKey(name: 'aah_Name')
  String? aahName;
  @JsonKey(name: 'aah_rsn_ID')
  String? aahRsnId;
  @JsonKey(name: 'aah_Remarks')
  String? aahRemarks;
  @JsonKey(name: 'aah_cus_ID')
  String? aahCusId;
  @JsonKey(name: 'aah_udp_ID')
  String? aahUdpId;
  @JsonKey(name: 'ast_Name')
  String? astName;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'CreatedDate')
  String? createdDate;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'Route')
  String? route;
  @JsonKey(name: 'rsn_Name')
  String? rsnName;
  @JsonKey(name: 'ast_Code')
  String? astCode;
  @JsonKey(name: 'Image')
  String? image;
  @JsonKey(name: 'UserID')
  String? userID;
  @JsonKey(name: 'rotID')
  String? rotID;

  AssetAddRequestHeaderModel(
      {this.aahId,
      this.aahAstId,
      this.aahSlno,
      this.aahName,
      this.aahRsnId,
      this.aahRemarks,
      this.aahCusId,
      this.aahUdpId,
      this.astName,
      this.cusCode,
      this.cusName,
      this.createdDate,
      this.rotCode,
      this.route,
      this.rsnName,
      this.astCode,
      this.image,
      this.rotID,
      this.userID});

  factory AssetAddRequestHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$AssetAddRequestHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AssetAddRequestHeaderModelToJson(this);
}
