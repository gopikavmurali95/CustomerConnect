// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cus_ins_customers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CusInsCustomersModel _$CusInsCustomersModelFromJson(
        Map<String, dynamic> json) =>
    CusInsCustomersModel(
      cusId: json['cus_ID'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      headerCode: json['Header_Code'] as String?,
      headerName: json['Header_Name'] as String?,
      areaName: json['Area_Name'] as String?,
      className: json['Class_Name'] as String?,
      cusType: json['Cus_Type'] as String?,
      rotId: json['rot_ID'] as String?,
      rotCode: json['rot_Code'] as String?,
      rotName: json['rot_Name'] as String?,
    );

Map<String, dynamic> _$CusInsCustomersModelToJson(
        CusInsCustomersModel instance) =>
    <String, dynamic>{
      'cus_ID': instance.cusId,
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'Header_Code': instance.headerCode,
      'Header_Name': instance.headerName,
      'Area_Name': instance.areaName,
      'Class_Name': instance.className,
      'Cus_Type': instance.cusType,
      'rot_ID': instance.rotId,
      'rot_Code': instance.rotCode,
      'rot_Name': instance.rotName,
    };
