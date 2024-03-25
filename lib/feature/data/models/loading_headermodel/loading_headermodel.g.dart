// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loading_headermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoadingHeadermodel _$LoadingHeadermodelFromJson(Map<String, dynamic> json) =>
    LoadingHeadermodel(
      transactionCode: json['TransactionCode'] as String?,
      rotId: json['rot_ID'] as String?,
      rotCode: json['rot_Code'] as String?,
      rotName: json['rot_Name'] as String?,
      status: json['Status'] as String?,
      id: json['ID'] as String?,
      date: json['Date'] as String?,
    );

Map<String, dynamic> _$LoadingHeadermodelToJson(LoadingHeadermodel instance) =>
    <String, dynamic>{
      'TransactionCode': instance.transactionCode,
      'rot_ID': instance.rotId,
      'rot_Code': instance.rotCode,
      'rot_Name': instance.rotName,
      'Status': instance.status,
      'ID': instance.id,
      'Date': instance.date,
    };
