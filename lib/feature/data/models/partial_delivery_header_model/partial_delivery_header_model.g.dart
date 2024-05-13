// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partial_delivery_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartialDeliveryHeaderModel _$PartialDeliveryHeaderModelFromJson(
        Map<String, dynamic> json) =>
    PartialDeliveryHeaderModel(
      dahId: json['dah_ID'] as String?,
      orderId: json['OrderID'] as String?,
      expectedDelDate: json['ExpectedDelDate'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      rotName: json['rot_Name'] as String?,
      type: json['Type'] as String?,
      createdDate: json['CreatedDate'] as String?,
      dahApprovalStatus: json['dah_ApprovalStatus'] as String?,
    );

Map<String, dynamic> _$PartialDeliveryHeaderModelToJson(
        PartialDeliveryHeaderModel instance) =>
    <String, dynamic>{
      'dah_ID': instance.dahId,
      'OrderID': instance.orderId,
      'ExpectedDelDate': instance.expectedDelDate,
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'rot_Name': instance.rotName,
      'Type': instance.type,
      'CreatedDate': instance.createdDate,
      'dah_ApprovalStatus': instance.dahApprovalStatus,
    };
