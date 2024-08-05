// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_review_sales_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivityReviewSalesModel _$ActivityReviewSalesModelFromJson(
        Map<String, dynamic> json) =>
    ActivityReviewSalesModel(
      salesAmt: json['SalesAmt'] as String?,
      totVisits: json['TotVisits'] as String?,
      prodVisits: json['ProdVisits'] as String?,
    );

Map<String, dynamic> _$ActivityReviewSalesModelToJson(
        ActivityReviewSalesModel instance) =>
    <String, dynamic>{
      'SalesAmt': instance.salesAmt,
      'TotVisits': instance.totVisits,
      'ProdVisits': instance.prodVisits,
    };
