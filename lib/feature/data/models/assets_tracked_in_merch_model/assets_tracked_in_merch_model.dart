import 'package:json_annotation/json_annotation.dart';

part 'assets_tracked_in_merch_model.g.dart';

@JsonSerializable()
class AssetsTrackedInMerchModel {
  @JsonKey(name: 'TotalAssetCount')
  int? totalAssetCount;
  @JsonKey(name: 'TotalAssetTrackedCount')
  int? totalAssetTrackedCount;

  AssetsTrackedInMerchModel({
    this.totalAssetCount,
    this.totalAssetTrackedCount,
  });

  factory AssetsTrackedInMerchModel.fromJson(Map<String, dynamic> json) {
    return _$AssetsTrackedInMerchModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AssetsTrackedInMerchModelToJson(this);
}
