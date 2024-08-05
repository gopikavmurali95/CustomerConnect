// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_details_graph_qty_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TargetDetailsGraphQtyModel _$TargetDetailsGraphQtyModelFromJson(
        Map<String, dynamic> json) =>
    TargetDetailsGraphQtyModel(
      totalQty: json['TotalQty'] as String?,
      achQty: json['AchQty'] as String?,
      mtdGapQty: json['MTDGapQty'] as String?,
      monthGapQty: json['MonthGapQty'] as String?,
    );

Map<String, dynamic> _$TargetDetailsGraphQtyModelToJson(
        TargetDetailsGraphQtyModel instance) =>
    <String, dynamic>{
      'TotalQty': instance.totalQty,
      'AchQty': instance.achQty,
      'MTDGapQty': instance.mtdGapQty,
      'MonthGapQty': instance.monthGapQty,
    };
