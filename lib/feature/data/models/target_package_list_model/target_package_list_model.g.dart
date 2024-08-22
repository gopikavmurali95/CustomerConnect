// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_package_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TargetPackageListModel _$TargetPackageListModelFromJson(
        Map<String, dynamic> json) =>
    TargetPackageListModel(
      prdId: json['prdID'] as String?,
      prdCode: json['prdCode'] as String?,
      prdName: json['prdName'] as String?,
      achAmt: json['AchAmt'] as String?,
      achQty: json['AchQty'] as String?,
    )..arprdName = json['ArprdName'] as String?;

Map<String, dynamic> _$TargetPackageListModelToJson(
        TargetPackageListModel instance) =>
    <String, dynamic>{
      'prdID': instance.prdId,
      'prdCode': instance.prdCode,
      'prdName': instance.prdName,
      'ArprdName': instance.arprdName,
      'AchAmt': instance.achAmt,
      'AchQty': instance.achQty,
    };
