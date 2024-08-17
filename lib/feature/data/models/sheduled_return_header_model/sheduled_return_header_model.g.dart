// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sheduled_return_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SheduledReturnHeaderModel _$SheduledReturnHeaderModelFromJson(
        Map<String, dynamic> json) =>
    SheduledReturnHeaderModel(
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      rrhInvId: json['rrh_inv_ID'] as String?,
      rrhRequestNumber: json['rrh_RequestNumber'] as String?,
      usrName: json['usr_Name'] as String?,
      rrhId: json['rrh_ID'] as String?,
      rrhType: json['rrh_Type'] as String?,
      rrhReturnType: json['rrh_ReturnType'] as String?,
      createdDate: json['CreatedDate'] as String?,
      status: json['Status'] as String?,
      userID: json['UserID'] as String?,
      rotID: json['rotID'] as String?,
      arStatus: json['ArStatus'] as String?,
      arcusName: json['Arcus_Name'] as String?,
      arrrhReturnType: json['Arrrh_ReturnType'] as String?,
      arrrhType: json['Arrrh_Type'] as String?,
      arusrName: json['Arusr_Name'] as String?,
    );

Map<String, dynamic> _$SheduledReturnHeaderModelToJson(
        SheduledReturnHeaderModel instance) =>
    <String, dynamic>{
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'rrh_inv_ID': instance.rrhInvId,
      'rrh_RequestNumber': instance.rrhRequestNumber,
      'usr_Name': instance.usrName,
      'rrh_ID': instance.rrhId,
      'rrh_Type': instance.rrhType,
      'rrh_ReturnType': instance.rrhReturnType,
      'CreatedDate': instance.createdDate,
      'Status': instance.status,
      'UserID': instance.userID,
      'rotID': instance.rotID,
      'Arcus_Name': instance.arcusName,
      'Arusr_Name': instance.arusrName,
      'Arrrh_ReturnType': instance.arrrhReturnType,
      'Arrrh_Type': instance.arrrhType,
      'ArStatus': instance.arStatus,
    };
