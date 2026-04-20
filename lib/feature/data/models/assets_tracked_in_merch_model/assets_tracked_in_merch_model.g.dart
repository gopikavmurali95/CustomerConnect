// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assets_tracked_in_merch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssetsTrackedInMerchModel _$AssetsTrackedInMerchModelFromJson(
        Map<String, dynamic> json) =>
    AssetsTrackedInMerchModel(
      totalAssetCount: (json['TotalAssetCount'] as num?)?.toInt(),
      totalAssetTrackedCount: (json['TotalAssetTrackedCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AssetsTrackedInMerchModelToJson(
        AssetsTrackedInMerchModel instance) =>
    <String, dynamic>{
      'TotalAssetCount': instance.totalAssetCount,
      'TotalAssetTrackedCount': instance.totalAssetTrackedCount,
    };
