// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merch_customer_request_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MerchCustomerRequestHeaderModel _$MerchCustomerRequestHeaderModelFromJson(
        Map<String, dynamic> json) =>
    MerchCustomerRequestHeaderModel(
      reqId: json['req_ID'] as String?,
      reqCode: json['req_Code'] as String?,
      reqTransId: json['req_TransID'] as String?,
      rotCode: json['rot_Code'] as String?,
      rotName: json['rot_Name'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      date: json['Date'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$MerchCustomerRequestHeaderModelToJson(
        MerchCustomerRequestHeaderModel instance) =>
    <String, dynamic>{
      'req_ID': instance.reqId,
      'req_Code': instance.reqCode,
      'req_TransID': instance.reqTransId,
      'rot_Code': instance.rotCode,
      'rot_Name': instance.rotName,
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'Date': instance.date,
      'status': instance.status,
    };
