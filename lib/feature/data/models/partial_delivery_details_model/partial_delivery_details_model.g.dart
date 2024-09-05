// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partial_delivery_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartialDeliveryDetailsModel _$PartialDeliveryDetailsModelFromJson(
        Map<String, dynamic> json) =>
    PartialDeliveryDetailsModel(
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
      arprdName: json['Arprd_Name'] as String?,
      arrsnName: json['Arrsn_Name'] as String?,
      arrsnType: json['Arrsn_Type'] as String?,
      prdArabicDescription: json['prd_ArabicDescription'] as String?,
    )
      ..status = json['Status'] as String?
      ..detStatus = json['DetStatus'] as String?
      ..reason = json['Reason'] as String?
      ..arReason = json['ArReason'] as String?;

Map<String, dynamic> _$PartialDeliveryDetailsModelToJson(
        PartialDeliveryDetailsModel instance) =>
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
      'Arprd_Name': instance.arprdName,
      'Arrsn_Name': instance.arrsnName,
      'prd_ArabicDescription': instance.prdArabicDescription,
      'Arrsn_Type': instance.arrsnType,
      'Status': instance.status,
      'DetStatus': instance.detStatus,
      'Reason': instance.reason,
      'ArReason': instance.arReason,
    };
