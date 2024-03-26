// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cus_ins_tr_n_counts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CusInsTrNCounts _$CusInsTrNCountsFromJson(Map<String, dynamic> json) =>
    CusInsTrNCounts(
      invoice: json['Invoice'] as String?,
      ar: json['AR'] as String?,
      saleOrder: json['SaleOrder'] as String?,
      sarviceJob: json['SarviceJob'] as String?,
    );

Map<String, dynamic> _$CusInsTrNCountsToJson(CusInsTrNCounts instance) =>
    <String, dynamic>{
      'Invoice': instance.invoice,
      'AR': instance.ar,
      'SaleOrder': instance.saleOrder,
      'SarviceJob': instance.sarviceJob,
    };
