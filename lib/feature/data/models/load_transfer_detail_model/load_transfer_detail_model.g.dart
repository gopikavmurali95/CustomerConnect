// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_transfer_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoadTransferDetailModel _$LoadTransferDetailModelFromJson(
        Map<String, dynamic> json) =>
    LoadTransferDetailModel(
      ldrId: json['ldr_ID'] as String?,
      ldrPrdId: json['ldr_prd_ID'] as String?,
      ldrCurrentStockHQty: json['ldr_CurrentStockHQty'] as String?,
      ldrCurrentStockLQty: json['ldr_CurrentStockLQty'] as String?,
      ldrBalanceHQty: json['ldr_BalanceHQty'] as String?,
      ldrBalanceLQty: json['ldr_BalanceLQty'] as String?,
      ldrOffloadHQty: json['ldr_OffloadHQty'] as String?,
      ldrOffloadLQty: json['ldr_OffloadLQty'] as String?,
      ldrHigherPrice: json['ldr_HigherPrice'] as String?,
      ldrLowerPrice: json['ldr_LowerPrice'] as String?,
      ldrCurrentStockHuom: json['ldr_CurrentStockHUOM'] as String?,
      ldrCurrentStockLuom: json['ldr_CurrentStockLUOM'] as String?,
      ldrBalanceHuom: json['ldr_BalanceHUOM'] as String?,
      ldrOffloadHuom: json['ldr_OffloadHUOM'] as String?,
      ldrOffloadLuom: json['ldr_OffloadLUOM'] as String?,
      prdCode: json['prd_Code'] as String?,
      prdName: json['prd_Name'] as String?,
      prdArName: json['prd_ArName'] as String?,
    )..status = json['Status'] as String?;

Map<String, dynamic> _$LoadTransferDetailModelToJson(
        LoadTransferDetailModel instance) =>
    <String, dynamic>{
      'ldr_ID': instance.ldrId,
      'ldr_prd_ID': instance.ldrPrdId,
      'ldr_CurrentStockHQty': instance.ldrCurrentStockHQty,
      'ldr_CurrentStockLQty': instance.ldrCurrentStockLQty,
      'ldr_BalanceHQty': instance.ldrBalanceHQty,
      'ldr_BalanceLQty': instance.ldrBalanceLQty,
      'ldr_OffloadHQty': instance.ldrOffloadHQty,
      'ldr_OffloadLQty': instance.ldrOffloadLQty,
      'ldr_HigherPrice': instance.ldrHigherPrice,
      'ldr_LowerPrice': instance.ldrLowerPrice,
      'ldr_CurrentStockHUOM': instance.ldrCurrentStockHuom,
      'ldr_CurrentStockLUOM': instance.ldrCurrentStockLuom,
      'ldr_BalanceHUOM': instance.ldrBalanceHuom,
      'ldr_OffloadHUOM': instance.ldrOffloadHuom,
      'ldr_OffloadLUOM': instance.ldrOffloadLuom,
      'prd_Code': instance.prdCode,
      'prd_Name': instance.prdName,
      'prd_ArName': instance.prdArName,
      'Status': instance.status,
    };
