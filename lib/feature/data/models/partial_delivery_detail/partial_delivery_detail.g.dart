// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partial_delivery_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartialDeliveryDetail _$PartialDeliveryDetailFromJson(
        Map<String, dynamic> json) =>
    PartialDeliveryDetail(
      dadId: json['dad_ID'] as String?,
      dadPrdId: json['dad_prd_ID'] as String?,
      prdCode: json['prd_Code'] as String?,
      prdName: json['prd_Name'] as String?,
      orderedHQty: json['OrderedHQty'] as String?,
      orderedLQty: json['OrderedLQty'] as String?,
      deliveringHQty: json['deliveringHQty'] as String?,
      deliveringLQty: json['DeliveringLQty'] as String?,
      rsnName: json['rsn_Name'] as String?,
      prdDescription: json['prd_Description'] as String?,
      rsnId: json['rsn_ID'] as String?,
      rsnType: json['rsn_Type'] as String?,
    );

Map<String, dynamic> _$PartialDeliveryDetailToJson(
        PartialDeliveryDetail instance) =>
    <String, dynamic>{
      'dad_ID': instance.dadId,
      'dad_prd_ID': instance.dadPrdId,
      'prd_Code': instance.prdCode,
      'prd_Name': instance.prdName,
      'OrderedHQty': instance.orderedHQty,
      'OrderedLQty': instance.orderedLQty,
      'deliveringHQty': instance.deliveringHQty,
      'DeliveringLQty': instance.deliveringLQty,
      'rsn_Name': instance.rsnName,
      'prd_Description': instance.prdDescription,
      'rsn_ID': instance.rsnId,
      'rsn_Type': instance.rsnType,
    };
