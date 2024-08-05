// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_details_graph_amt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TargetDetailsGraphAmtModel _$TargetDetailsGraphAmtModelFromJson(
        Map<String, dynamic> json) =>
    TargetDetailsGraphAmtModel(
      totalAmt: json['TotalAmt'] as String?,
      achAmt: json['AchAmt'] as String?,
      mtdGapAmt: json['MTDGapAmt'] as String?,
      monthGapAmt: json['MonthGapAmt'] as String?,
    );

Map<String, dynamic> _$TargetDetailsGraphAmtModelToJson(
        TargetDetailsGraphAmtModel instance) =>
    <String, dynamic>{
      'TotalAmt': instance.totalAmt,
      'AchAmt': instance.achAmt,
      'MTDGapAmt': instance.mtdGapAmt,
      'MonthGapAmt': instance.monthGapAmt,
    };
