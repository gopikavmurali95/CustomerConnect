// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_header_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TargetHeaderListModel _$TargetHeaderListModelFromJson(
        Map<String, dynamic> json) =>
    TargetHeaderListModel(
      rotID: json['rot_ID'] as String?,
      rotCode: json['rot_Code'] as String?,
      rotName: json['rot_Name'] as String?,
      targetAmt: json['TargetAmt'] as String?,
      targetQty: json['TargetQty'] as String?,
      achAmt: json['AchAmt'] as String?,
      achQty: json['AchQty'] as String?,
    );

Map<String, dynamic> _$TargetHeaderListModelToJson(
        TargetHeaderListModel instance) =>
    <String, dynamic>{
      'rot_ID': instance.rotID,
      'rot_Code': instance.rotCode,
      'rot_Name': instance.rotName,
      'TargetAmt': instance.targetAmt,
      'TargetQty': instance.targetQty,
      'AchAmt': instance.achAmt,
      'AchQty': instance.achQty,
    };
