// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'must_sell_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MustSellDetailModel _$MustSellDetailModelFromJson(Map<String, dynamic> json) =>
    MustSellDetailModel(
      msdId: json['msd_id'] as String?,
      msdMsaId: json['msd_msa_id'] as String?,
      msdPrdId: json['msd_prd_id'] as String?,
      prdCode: json['prd_Code'] as String?,
      prdName: json['prd_Name'] as String?,
      msdHQty: json['msd_HQty'] as String?,
      huom: json['HUOM'] as String?,
      msdLQty: json['msd_LQty'] as String?,
      luom: json['LUOM'] as String?,
      status: json['Status'] as String?,
    );

Map<String, dynamic> _$MustSellDetailModelToJson(
        MustSellDetailModel instance) =>
    <String, dynamic>{
      'msd_id': instance.msdId,
      'msd_msa_id': instance.msdMsaId,
      'msd_prd_id': instance.msdPrdId,
      'prd_Code': instance.prdCode,
      'prd_Name': instance.prdName,
      'msd_HQty': instance.msdHQty,
      'HUOM': instance.huom,
      'msd_LQty': instance.msdLQty,
      'LUOM': instance.luom,
      'Status': instance.status,
    };
