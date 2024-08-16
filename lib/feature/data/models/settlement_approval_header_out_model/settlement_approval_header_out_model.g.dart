// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settlement_approval_header_out_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettlementApprovalHeaderOutModel _$SettlementApprovalHeaderOutModelFromJson(
        Map<String, dynamic> json) =>
    SettlementApprovalHeaderOutModel(
      staId: json['sta_ID'] as String?,
      udpId: json['udp_ID'] as String?,
      rotType: json['rot_Type'] as String?,
      rotCode: json['rot_Code'] as String?,
      rotName: json['rot_Name'] as String?,
      createdDate: json['CreatedDate'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      usrName: json['usr_Name'] as String?,
      arrotName: json['Arrot_Name'] as String?,
      arusrName: json['Arusr_Name'] as String?,
      arrotType: json['Arrot_Type'] as String?,
    );

Map<String, dynamic> _$SettlementApprovalHeaderOutModelToJson(
        SettlementApprovalHeaderOutModel instance) =>
    <String, dynamic>{
      'sta_ID': instance.staId,
      'udp_ID': instance.udpId,
      'rot_Type': instance.rotType,
      'rot_Code': instance.rotCode,
      'rot_Name': instance.rotName,
      'CreatedDate': instance.createdDate,
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'usr_Name': instance.usrName,
      'Arrot_Name': instance.arrotName,
      'Arusr_Name': instance.arusrName,
      'Arrot_Type': instance.arrotType,
    };
