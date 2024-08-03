// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_target_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivityTargetModel _$ActivityTargetModelFromJson(Map<String, dynamic> json) =>
    ActivityTargetModel(
      totTargetAmt: json['TotTargetAmt'] as String?,
      mtdWrkDays: json['MTDWrkDays'] as String?,
      totWrkDays: json['TotWrkDays'] as String?,
      proRateTarget: json['ProRateTarget'] as String?,
      salPerDay: json['SalPerDay'] as String?,
      mtdSales: json['MTDSales'] as String?,
      excShtg: json['ExcShtg'] as String?,
    );

Map<String, dynamic> _$ActivityTargetModelToJson(
        ActivityTargetModel instance) =>
    <String, dynamic>{
      'TotTargetAmt': instance.totTargetAmt,
      'MTDWrkDays': instance.mtdWrkDays,
      'TotWrkDays': instance.totWrkDays,
      'ProRateTarget': instance.proRateTarget,
      'SalPerDay': instance.salPerDay,
      'MTDSales': instance.mtdSales,
      'ExcShtg': instance.excShtg,
    };
