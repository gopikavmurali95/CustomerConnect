// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_review_detail_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivityReviewDetailListModel _$ActivityReviewDetailListModelFromJson(
        Map<String, dynamic> json) =>
    ActivityReviewDetailListModel(
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      startTime: json['StartTime'] as String?,
      endTime: json['EndTime'] as String?,
      duration: json['Duration'] as String?,
      salesCs: json['SalesCS'] as String?,
      saleCr: json['SaleCR'] as String?,
      returnCs: json['ReturnCS'] as String?,
      returnCr: json['ReturnCR'] as String?,
      collectCs: json['CollectCS'] as String?,
      collectCr: json['CollectCR'] as String?,
      totSalesCs: json['TotSalesCS'] as String?,
      totSaleCr: json['TotSaleCR'] as String?,
      totReturnCs: json['TotReturnCS'] as String?,
      totReturnCr: json['TotReturnCR'] as String?,
      totCollectCs: json['TotCollectCS'] as String?,
      totCollectCr: json['TotCollectCR'] as String?,
    );

Map<String, dynamic> _$ActivityReviewDetailListModelToJson(
        ActivityReviewDetailListModel instance) =>
    <String, dynamic>{
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'StartTime': instance.startTime,
      'EndTime': instance.endTime,
      'Duration': instance.duration,
      'SalesCS': instance.salesCs,
      'SaleCR': instance.saleCr,
      'ReturnCS': instance.returnCs,
      'ReturnCR': instance.returnCr,
      'CollectCS': instance.collectCs,
      'CollectCR': instance.collectCr,
      'TotSalesCS': instance.totSalesCs,
      'TotSaleCR': instance.totSaleCr,
      'TotReturnCS': instance.totReturnCs,
      'TotReturnCR': instance.totReturnCr,
      'TotCollectCS': instance.totCollectCs,
      'TotCollectCR': instance.totCollectCr,
    };
