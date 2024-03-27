// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ar_total_collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArTotalCollectionModel _$ArTotalCollectionModelFromJson(
        Map<String, dynamic> json) =>
    ArTotalCollectionModel(
      totalCount: json['Total_Count'] as String?,
      totalAmount: json['Total_Amount'] as String?,
      hcCount: json['HC_Count'] as String?,
      hcAmount: json['HC_Amount'] as String?,
      opCount: json['OP_Count'] as String?,
      opAmount: json['OP_Amount'] as String?,
      posCount: json['POS_Count'] as String?,
      posAmount: json['POS_Amount'] as String?,
      chequeCount: json['Cheque_Count'] as String?,
      chequeAmount: json['Cheque_Amount'] as String?,
    );

Map<String, dynamic> _$ArTotalCollectionModelToJson(
        ArTotalCollectionModel instance) =>
    <String, dynamic>{
      'Total_Count': instance.totalCount,
      'Total_Amount': instance.totalAmount,
      'HC_Count': instance.hcCount,
      'HC_Amount': instance.hcAmount,
      'OP_Count': instance.opCount,
      'OP_Amount': instance.opAmount,
      'POS_Count': instance.posCount,
      'POS_Amount': instance.posAmount,
      'Cheque_Count': instance.chequeCount,
      'Cheque_Amount': instance.chequeAmount,
    };
