// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merch_customer_activities_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MerchCustomerActivitiesModel _$MerchCustomerActivitiesModelFromJson(
        Map<String, dynamic> json) =>
    MerchCustomerActivitiesModel(
      actName: json['ActName'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      startDate: json['StartDate'] as String?,
      endDate: json['EndDate'] as String?,
      status: json['Status'] as String?,
    )
      ..actArName = json['Act_ArName'] as String?
      ..cusrName = json['cus_ArName'] as String?
      ..arstatus = json['ArStatus'] as String?;

Map<String, dynamic> _$MerchCustomerActivitiesModelToJson(
        MerchCustomerActivitiesModel instance) =>
    <String, dynamic>{
      'ActName': instance.actName,
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'StartDate': instance.startDate,
      'EndDate': instance.endDate,
      'Status': instance.status,
      'Act_ArName': instance.actArName,
      'cus_ArName': instance.cusrName,
      'ArStatus': instance.arstatus,
    };
