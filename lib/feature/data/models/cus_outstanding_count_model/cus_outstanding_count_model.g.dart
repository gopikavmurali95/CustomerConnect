// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cus_outstanding_count_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CusOutstandingCountModel _$CusOutstandingCountModelFromJson(
        Map<String, dynamic> json) =>
    CusOutstandingCountModel(
      dueCount: json['DueCount'] as String?,
      dueAmount: json['DueAmount'] as String?,
      overDueCount: json['OverDueCount'] as String?,
      overDueAmount: json['OverDueAmount'] as String?,
      totCount: json['totCount'] as String?,
      totAmount: json['totAmount'] as String?,
    );

Map<String, dynamic> _$CusOutstandingCountModelToJson(
        CusOutstandingCountModel instance) =>
    <String, dynamic>{
      'DueCount': instance.dueCount,
      'DueAmount': instance.dueAmount,
      'OverDueCount': instance.overDueCount,
      'OverDueAmount': instance.overDueAmount,
      'totCount': instance.totCount,
      'totAmount': instance.totAmount,
    };
