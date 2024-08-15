// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'total_orders_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TotalOrdersDetailsModel _$TotalOrdersDetailsModelFromJson(
        Map<String, dynamic> json) =>
    TotalOrdersDetailsModel(
      oddId: json['odd_ID'] as String?,
      oddOrdId: json['odd_ord_ID'] as String?,
      prdId: json['prd_ID'] as String?,
      prdCode: json['prd_Code'] as String?,
      prdName: json['prd_Name'] as String?,
      prdNameArabic: json['prd_NameArabic'] as String?,
      prdDescription: json['prd_Description'] as String?,
      oddHigherUom: json['odd_HigherUOM'] as String?,
      oddLowerUom: json['odd_LowerUOM'] as String?,
      oddHigherQty: json['odd_HigherQty'] as String?,
      oddLowerQty: json['odd_LowerQty'] as String?,
      oddHigherPrice: json['odd_HigherPrice'] as String?,
      oddLowerPrice: json['odd_LowerPrice'] as String?,
      oddPrice: json['odd_Price'] as String?,
      oddTotalQty: json['odd_TotalQty'] as String?,
      oddVatPercent: json['odd_VATPercent'] as String?,
      oddDiscount: json['odd_Discount'] as String?,
      oddSubTotal: json['odd_SubTotal'] as String?,
      oddVatAmount: json['odd_VATAmount'] as String?,
      oddGrandTotal: json['odd_GrandTotal'] as String?,
      oddTransType: json['odd_TransType'] as String?,
      arprdName: json['Arprd_Name'] as String?,
    );

Map<String, dynamic> _$TotalOrdersDetailsModelToJson(
        TotalOrdersDetailsModel instance) =>
    <String, dynamic>{
      'odd_ID': instance.oddId,
      'odd_ord_ID': instance.oddOrdId,
      'prd_ID': instance.prdId,
      'prd_Code': instance.prdCode,
      'prd_Name': instance.prdName,
      'prd_NameArabic': instance.prdNameArabic,
      'prd_Description': instance.prdDescription,
      'odd_HigherUOM': instance.oddHigherUom,
      'odd_LowerUOM': instance.oddLowerUom,
      'odd_HigherQty': instance.oddHigherQty,
      'odd_LowerQty': instance.oddLowerQty,
      'odd_HigherPrice': instance.oddHigherPrice,
      'odd_LowerPrice': instance.oddLowerPrice,
      'odd_Price': instance.oddPrice,
      'odd_TotalQty': instance.oddTotalQty,
      'odd_VATPercent': instance.oddVatPercent,
      'odd_Discount': instance.oddDiscount,
      'odd_SubTotal': instance.oddSubTotal,
      'odd_VATAmount': instance.oddVatAmount,
      'odd_GrandTotal': instance.oddGrandTotal,
      'odd_TransType': instance.oddTransType,
      'Arprd_Name': instance.arprdName,
    };
