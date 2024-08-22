// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_approval_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReturnApprovalDetailModel _$ReturnApprovalDetailModelFromJson(
        Map<String, dynamic> json) =>
    ReturnApprovalDetailModel(
      radId: json['rad_ID'] as String?,
      radPrdId: json['rad_prd_ID'] as String?,
      prdCode: json['prd_Code'] as String?,
      prdName: json['prd_Name'] as String?,
      requestedHQty: json['RequestedHQty'] as String?,
      huom: json['HUOM'] as String?,
      requestedLQty: json['RequestedLQty'] as String?,
      rluom: json['RLUOM'] as String?,
      returnHQty: json['ReturnHQty'] as String?,
      returnedHuom: json['ReturnedHUOM'] as String?,
      returnLQty: json['ReturnLQty'] as String?,
      luom: json['LUOM'] as String?,
      adjustedHQty: json['AdjustedHQty'] as String?,
      adjustedLQty: json['AdjustedLQty'] as String?,
      excessHQty: json['ExcessHQty'] as String?,
      excessLQty: json['ExcessLQty'] as String?,
      zsnName: json['zsn_Name'] as String?,
      invInvoiceId: json['inv_InvoiceID'] as String?,
      radApprovalStatus: json['rad_ApprovalStatus'] as String?,
      arprdName: json['Arprd_Name'] as String?,
      arrsnName: json['Arrsn_NameArprd_Name'] as String?,
    );

Map<String, dynamic> _$ReturnApprovalDetailModelToJson(
        ReturnApprovalDetailModel instance) =>
    <String, dynamic>{
      'rad_ID': instance.radId,
      'rad_prd_ID': instance.radPrdId,
      'prd_Code': instance.prdCode,
      'prd_Name': instance.prdName,
      'RequestedHQty': instance.requestedHQty,
      'HUOM': instance.huom,
      'RequestedLQty': instance.requestedLQty,
      'RLUOM': instance.rluom,
      'ReturnHQty': instance.returnHQty,
      'ReturnedHUOM': instance.returnedHuom,
      'ReturnLQty': instance.returnLQty,
      'LUOM': instance.luom,
      'AdjustedHQty': instance.adjustedHQty,
      'AdjustedLQty': instance.adjustedLQty,
      'ExcessHQty': instance.excessHQty,
      'ExcessLQty': instance.excessLQty,
      'zsn_Name': instance.zsnName,
      'inv_InvoiceID': instance.invInvoiceId,
      'rad_ApprovalStatus': instance.radApprovalStatus,
      'Arprd_Name': instance.arprdName,
      'Arrsn_NameArprd_Name': instance.arrsnName,
    };
