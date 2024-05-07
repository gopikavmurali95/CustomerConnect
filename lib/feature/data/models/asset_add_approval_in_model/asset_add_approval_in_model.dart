import 'package:json_annotation/json_annotation.dart';

part 'asset_add_approval_in_model.g.dart';

@JsonSerializable()
class AssetAddApprovalInModel {
  @JsonKey(name: 'ReqID')
  String? reqId;
  @JsonKey(name: 'UserID')
  String? userId;
  @JsonKey(name: 'SerialNum')
  String? serialNum;

  AssetAddApprovalInModel({this.reqId, this.userId, this.serialNum});

  factory AssetAddApprovalInModel.fromJson(Map<String, dynamic> json) {
    return _$AssetAddApprovalInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AssetAddApprovalInModelToJson(this);
}
