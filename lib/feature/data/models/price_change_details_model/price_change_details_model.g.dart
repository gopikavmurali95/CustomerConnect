// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_change_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceChangeDetailsModel _$PriceChangeDetailsModelFromJson(
        Map<String, dynamic> json) =>
    PriceChangeDetailsModel(
      pcdId: json['pcd_ID'] as String?,
      pcdPchId: json['pcd_pch_ID'] as String?,
      pcdPrdId: json['pcd_prd_ID'] as String?,
      prdName: json['prd_Name'] as String?,
      prdCode: json['prd_Code'] as String?,
      pcdHigherQty: json['pcd_HigherQty'] as String?,
      pcdHigherUom: json['pcd_HigherUOM'] as String?,
      pcdLowerQty: json['pcd_LowerQty'] as String?,
      pcdLowerUom: json['pcd_LowerUOM'] as String?,
      pcdStdHPrice: json['pcd_stdHPrice'] as String?,
      pcdChangedHPrice: json['pcd_changedHPrice'] as String?,
      pcdStdLPrice: json['pcd_stdLPrice'] as String?,
      pcdChangedLprice: json['pcd_changedLprice'] as String?,
      pcdHigherLimitPercent: json['pcd_HigherLimitPercent'] as String?,
      pcdLowerLimtPercent: json['pcd_LowerLimtPercent'] as String?,
      maxHigherlimit: json['maxHigherlimit'] as String?,
      minHigherLimit: json['MinHigherLimit'] as String?,
      minLowerLimit: json['MinLowerLimit'] as String?,
      maxLowerlimit: json['maxLowerlimit'] as String?,
      pcdApprovalStatus: json['pcd_ApprovalStatus'] as String?,
      arpcdApprovalStatus: json['Arpcd_ApprovalStatus'] as String?,
      arprdName: json['Arprd_Name'] as String?,
    )..reason = json['Reason'] as String?;

Map<String, dynamic> _$PriceChangeDetailsModelToJson(
        PriceChangeDetailsModel instance) =>
    <String, dynamic>{
      'pcd_ID': instance.pcdId,
      'pcd_pch_ID': instance.pcdPchId,
      'pcd_prd_ID': instance.pcdPrdId,
      'prd_Name': instance.prdName,
      'prd_Code': instance.prdCode,
      'pcd_HigherQty': instance.pcdHigherQty,
      'pcd_HigherUOM': instance.pcdHigherUom,
      'pcd_LowerQty': instance.pcdLowerQty,
      'pcd_LowerUOM': instance.pcdLowerUom,
      'pcd_stdHPrice': instance.pcdStdHPrice,
      'pcd_changedHPrice': instance.pcdChangedHPrice,
      'pcd_stdLPrice': instance.pcdStdLPrice,
      'pcd_changedLprice': instance.pcdChangedLprice,
      'pcd_HigherLimitPercent': instance.pcdHigherLimitPercent,
      'pcd_LowerLimtPercent': instance.pcdLowerLimtPercent,
      'maxHigherlimit': instance.maxHigherlimit,
      'MinHigherLimit': instance.minHigherLimit,
      'MinLowerLimit': instance.minLowerLimit,
      'maxLowerlimit': instance.maxLowerlimit,
      'pcd_ApprovalStatus': instance.pcdApprovalStatus,
      'Arprd_Name': instance.arprdName,
      'Arpcd_ApprovalStatus': instance.arpcdApprovalStatus,
      'Reason': instance.reason,
    };
