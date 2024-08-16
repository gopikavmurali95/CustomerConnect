// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'must_sell_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MustSellHeaderModel _$MustSellHeaderModelFromJson(Map<String, dynamic> json) =>
    MustSellHeaderModel(
      msaId: json['msa_id'] as String?,
      msaTransId: json['msa_TransID'] as String?,
      msaUsrId: json['msa_usr_id'] as String?,
      userName: json['userName'] as String?,
      rotCode: json['rot_Code'] as String?,
      rotName: json['rot_Name'] as String?,
      createdDate: json['CreatedDate'] as String?,
      msaRotId: json['msa_rot_id'] as String?,
      ordNumber: json['OrdNumber'] as String?,
      salNumber: json['salNumber'] as String?,
      status: json['Status'] as String?,
      createdBy: json['CreatedBy'] as String?,
      cuscode: json['cus_Code'] as String?,
      cusname: json['cus_Name'] as String?,
      type: json['type'] as String?,
      artype: json['Artype'] as String?,
      rotArName: json['rot_ArName'] as String?,
      cusArName: json['cus_ArName'] as String?,
      arStatus: json['ArStatus'] as String?,
    );

Map<String, dynamic> _$MustSellHeaderModelToJson(
        MustSellHeaderModel instance) =>
    <String, dynamic>{
      'msa_id': instance.msaId,
      'msa_TransID': instance.msaTransId,
      'msa_usr_id': instance.msaUsrId,
      'userName': instance.userName,
      'rot_Code': instance.rotCode,
      'rot_Name': instance.rotName,
      'CreatedDate': instance.createdDate,
      'msa_rot_id': instance.msaRotId,
      'OrdNumber': instance.ordNumber,
      'salNumber': instance.salNumber,
      'Status': instance.status,
      'CreatedBy': instance.createdBy,
      'type': instance.type,
      'cus_Code': instance.cuscode,
      'cus_Name': instance.cusname,
      'Artype': instance.artype,
      'rot_ArName': instance.rotArName,
      'cus_ArName': instance.cusArName,
      'ArStatus': instance.arStatus,
    };
