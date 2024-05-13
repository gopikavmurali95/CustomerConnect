import 'package:json_annotation/json_annotation.dart';

part 'van_to_van_approval_in_paras.g.dart';

@JsonSerializable()
class VanToVanApprovalInParas {
  @JsonKey(name: 'vvd_ID')
  String? vvdId;
  @JsonKey(name: 'HQTY')
  String? hqty;
  @JsonKey(name: 'LQTY')
  String? lqty;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'UserId')
  String? userID;
  @JsonKey(name: 'ReqID')
  String? reqID;

  VanToVanApprovalInParas(
      {this.vvdId, this.hqty, this.lqty, this.status, this.userID, this.reqID});

  factory VanToVanApprovalInParas.fromJson(Map<String, dynamic> json) {
    return _$VanToVanApprovalInParasFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VanToVanApprovalInParasToJson(this);
}
