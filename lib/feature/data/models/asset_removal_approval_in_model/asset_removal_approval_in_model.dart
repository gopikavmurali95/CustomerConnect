import 'package:json_annotation/json_annotation.dart';

part 'asset_removal_approval_in_model.g.dart';

@JsonSerializable()
class AssetRemovalApprovalInModel {
  @JsonKey(name: 'arq_ID')
  String? arqId;
  @JsonKey(name: 'asc_ID')
  String? ascId;
  @JsonKey(name: 'UserID')
  String? userId;

  AssetRemovalApprovalInModel({this.arqId, this.ascId, this.userId});

  factory AssetRemovalApprovalInModel.fromJson(Map<String, dynamic> json) {
    return _$AssetRemovalApprovalInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AssetRemovalApprovalInModelToJson(this);
}
