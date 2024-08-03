// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_header_count_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TargetHeaderCountModel _$TargetHeaderCountModelFromJson(
        Map<String, dynamic> json) =>
    TargetHeaderCountModel(
      totalTargetAmt: json['TotalTargetAmt'] as String?,
      totalAchAmt: json['TotalAchAmt'] as String?,
      totalGapAmt: json['TotalGapAmt'] as String?,
      totalTargetQty: json['TotalTargetQty'] as String?,
      totalAchQty: json['TotalAchQty'] as String?,
      totalGapQty: json['TotalGapQty'] as String?,
    );

Map<String, dynamic> _$TargetHeaderCountModelToJson(
        TargetHeaderCountModel instance) =>
    <String, dynamic>{
      'TotalTargetAmt': instance.totalTargetAmt,
      'TotalAchAmt': instance.totalAchAmt,
      'TotalGapAmt': instance.totalGapAmt,
      'TotalTargetQty': instance.totalTargetQty,
      'TotalAchQty': instance.totalAchQty,
      'TotalGapQty': instance.totalGapQty,
    };
