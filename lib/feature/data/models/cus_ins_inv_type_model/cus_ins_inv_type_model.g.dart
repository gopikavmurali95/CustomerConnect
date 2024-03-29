// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cus_ins_inv_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CusInsInvTypeModel _$CusInsInvTypeModelFromJson(Map<String, dynamic> json) =>
    CusInsInvTypeModel(
      type: json['Type'] as String?,
      discount: json['Discount'] as String?,
      vat: json['VAT'] as String?,
      value: json['Value'] as String?,
      subTotal: json['SubTotal'] as String?,
    );

Map<String, dynamic> _$CusInsInvTypeModelToJson(CusInsInvTypeModel instance) =>
    <String, dynamic>{
      'Type': instance.type,
      'Discount': instance.discount,
      'VAT': instance.vat,
      'Value': instance.value,
      'SubTotal': instance.subTotal,
    };
