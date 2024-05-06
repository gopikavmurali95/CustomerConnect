import 'package:json_annotation/json_annotation.dart';

part 'asset_removal_approve_out_model.g.dart';

@JsonSerializable()
class AssetRemovalApproveOutModel {
  @JsonKey(name: 'Status')
  String? status;

  AssetRemovalApproveOutModel({this.status});

  factory AssetRemovalApproveOutModel.fromJson(Map<String, dynamic> json) {
    return _$AssetRemovalApproveOutModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AssetRemovalApproveOutModelToJson(this);
}
