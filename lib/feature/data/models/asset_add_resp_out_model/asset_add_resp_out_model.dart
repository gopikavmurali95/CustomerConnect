import 'package:json_annotation/json_annotation.dart';

part 'asset_add_resp_out_model.g.dart';

@JsonSerializable()
class AssetAddRespOutModel {
  @JsonKey(name: 'Status')
  String? status;

  AssetAddRespOutModel({this.status});

  factory AssetAddRespOutModel.fromJson(Map<String, dynamic> json) {
    return _$AssetAddRespOutModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AssetAddRespOutModelToJson(this);
}
