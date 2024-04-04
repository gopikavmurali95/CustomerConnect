// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outstanding_count_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OutstandingCountModel _$OutstandingCountModelFromJson(
        Map<String, dynamic> json) =>
    OutstandingCountModel(
      dueCount: json['DueCount'] as String?,
      dueAmount: json['DueAmount'] as String?,
      overDueCount: json['OverDueCount'] as String?,
      overDueAmount: json['OverDueAmount'] as String?,
      totCount: json['TotCount'] as String?,
      totAmount: json['TotAmount'] as String?,
    );

Map<String, dynamic> _$OutstandingCountModelToJson(
        OutstandingCountModel instance) =>
    <String, dynamic>{
      'DueCount': instance.dueCount,
      'DueAmount': instance.dueAmount,
      'OverDueCount': instance.overDueCount,
      'OverDueAmount': instance.overDueAmount,
      'TotCount': instance.totCount,
      'TotAmount': instance.totAmount,
    };
