// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_details_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TargetDetailsListModel _$TargetDetailsListModelFromJson(
        Map<String, dynamic> json) =>
    TargetDetailsListModel(
      pkgId: json['pkgID'] as String?,
      pkgName: json['pkgName'] as String?,
      targetAmt: json['TargetAmt'] as String?,
      targetQty: json['TargetQty'] as String?,
      achAmt: json['AchAmt'] as String?,
      achQty: json['AchQty'] as String?,
      achAmtPerc: json['AchAmtPerc'] as String?,
      achQtyPerc: json['AchQtyPerc'] as String?,
      mTDGapAmt: json['MTDGapAmt'] as String?,
      mTDGapQty: json['MTDGapQty'] as String?,
      monthGapAmt: json['MonthGapAmt'] as String?,
      monthGapAmtPerc: json['MonthGapAmtPerc'] as String?,
      monthGapQty: json['MonthGapQty'] as String?,
      monthGapQtyPerc: json['MonthGapQtyPerc'] as String?,
    );

Map<String, dynamic> _$TargetDetailsListModelToJson(
        TargetDetailsListModel instance) =>
    <String, dynamic>{
      'pkgID': instance.pkgId,
      'pkgName': instance.pkgName,
      'TargetAmt': instance.targetAmt,
      'TargetQty': instance.targetQty,
      'AchAmt': instance.achAmt,
      'AchQty': instance.achQty,
      'AchAmtPerc': instance.achAmtPerc,
      'AchQtyPerc': instance.achQtyPerc,
      'MTDGapAmt': instance.mTDGapAmt,
      'MTDGapQty': instance.mTDGapQty,
      'MonthGapAmt': instance.monthGapAmt,
      'MonthGapQty': instance.monthGapQty,
      'MonthGapAmtPerc': instance.monthGapAmtPerc,
      'MonthGapQtyPerc': instance.monthGapQtyPerc,
    };
