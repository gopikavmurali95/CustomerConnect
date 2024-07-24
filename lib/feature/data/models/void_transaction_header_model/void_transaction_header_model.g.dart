// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'void_transaction_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoidTransactionHeaderModel _$VoidTransactionHeaderModelFromJson(
        Map<String, dynamic> json) =>
    VoidTransactionHeaderModel(
      vtaId: json['vta_ID'] as String?,
      type: json['type'] as String?,
      trnNumber: json['trn_Number'] as String?,
      rotCode: json['rot_Code'] as String?,
      rotName: json['rot_Name'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      createdDate: json['CreatedDate'] as String?,
    );

Map<String, dynamic> _$VoidTransactionHeaderModelToJson(
        VoidTransactionHeaderModel instance) =>
    <String, dynamic>{
      'vta_ID': instance.vtaId,
      'type': instance.type,
      'trn_Number': instance.trnNumber,
      'rot_Code': instance.rotCode,
      'rot_Name': instance.rotName,
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'CreatedDate': instance.createdDate,
    };
