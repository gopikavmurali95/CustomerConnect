// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_order_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesOrderDetailsModel _$SalesOrderDetailsModelFromJson(
        Map<String, dynamic> json) =>
    SalesOrderDetailsModel(
      prdCode: json['Prd_Code'] as String?,
      prdName: json['Prd_Name'] as String?,
      prdNameArabic: json['Prd_NameArabic'] as String?,
      oddHigherUOM: json['Odd_HigherUOM'] as String?,
      oddLowerUOM: json['Odd_LowerUOM'] as String?,
      oddHigherQty: json['Odd_HigherQty'] as String?,
      oddLowerQty: json['Odd_LowerQty'] as String?,
      oddHigherPrice: json['Odd_HigherPrice'] as String?,
      oddLowerPrice: json['Odd_LowerPrice'] as String?,
      oddVATAmount: json['Odd_VATAmount'] as String?,
      oddVATPercent: json['Odd_VATPercent'] as String?,
      oddDiscount: json['Odd_Discount'] as String?,
      oddSubTotal: json['Odd_SubTotal'] as String?,
      oddGrandTotal: json['Odd_GrandTotal'] as String?,
      oddTotalQty: json['Odd_TotalQty'] as String?,
      oddPrice: json['Odd_Price'] as String?,
      oddTransType: json['Odd_TransType'] as String?,
      status: json['Status'] as String?,
      createdDate: json['CreatedDate'] as String?,
    );

Map<String, dynamic> _$SalesOrderDetailsModelToJson(
        SalesOrderDetailsModel instance) =>
    <String, dynamic>{
      'Prd_Code': instance.prdCode,
      'Prd_Name': instance.prdName,
      'Prd_NameArabic': instance.prdNameArabic,
      'Odd_HigherUOM': instance.oddHigherUOM,
      'Odd_LowerUOM': instance.oddLowerUOM,
      'Odd_HigherQty': instance.oddHigherQty,
      'Odd_LowerQty': instance.oddLowerQty,
      'Odd_HigherPrice': instance.oddHigherPrice,
      'Odd_LowerPrice': instance.oddLowerPrice,
      'Odd_VATAmount': instance.oddVATAmount,
      'Odd_VATPercent': instance.oddVATPercent,
      'Odd_Discount': instance.oddDiscount,
      'Odd_SubTotal': instance.oddSubTotal,
      'Odd_GrandTotal': instance.oddGrandTotal,
      'Odd_TotalQty': instance.oddTotalQty,
      'Odd_Price': instance.oddPrice,
      'Odd_TransType': instance.oddTransType,
      'Status': instance.status,
      'CreatedDate': instance.createdDate,
    };
