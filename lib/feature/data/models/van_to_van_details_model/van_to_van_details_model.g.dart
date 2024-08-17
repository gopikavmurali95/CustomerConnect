// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'van_to_van_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VanToVanDetailsModel _$VanToVanDetailsModelFromJson(
        Map<String, dynamic> json) =>
    VanToVanDetailsModel(
      vvdId: json['vvd_ID'] as String?,
      prdCode: json['prd_Code'] as String?,
      prdName: json['prd_Name'] as String?,
      vvdHuom: json['vvd_HUOM'] as String?,
      vvdLuom: json['vvd_LUOM'] as String?,
      vvdHQty: json['vvd_HQty'] as String?,
      vvdLQty: json['vvd_LQty'] as String?,
      vvdConfirmHQty: json['vvd_ConfirmHQty'] as String?,
      vvdConfirmLQty: json['vvd_ConfirmLQty'] as String?,
      vvdConfirmHuom: json['vvd_ConfirmHUOM'] as String?,
      vvdConfirmLuom: json['vvd_ConfirmLUOM'] as String?,
      adjHQty: json['AdjHQty'] as String?,
      adjLQty: json['AdjLQty'] as String?,
      status: json['Status'] as String?,
      arStatus: json['ArStatus'] as String?,
      prdArName: json['prd_ArName'] as String?,
    );

Map<String, dynamic> _$VanToVanDetailsModelToJson(
        VanToVanDetailsModel instance) =>
    <String, dynamic>{
      'vvd_ID': instance.vvdId,
      'prd_Code': instance.prdCode,
      'prd_Name': instance.prdName,
      'vvd_HUOM': instance.vvdHuom,
      'vvd_LUOM': instance.vvdLuom,
      'vvd_HQty': instance.vvdHQty,
      'vvd_LQty': instance.vvdLQty,
      'vvd_ConfirmHQty': instance.vvdConfirmHQty,
      'vvd_ConfirmLQty': instance.vvdConfirmLQty,
      'vvd_ConfirmHUOM': instance.vvdConfirmHuom,
      'vvd_ConfirmLUOM': instance.vvdConfirmLuom,
      'AdjHQty': instance.adjHQty,
      'AdjLQty': instance.adjLQty,
      'Status': instance.status,
      'prd_ArName': instance.prdArName,
      'ArStatus': instance.arStatus,
    };
