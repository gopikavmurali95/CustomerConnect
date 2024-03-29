// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cus_documents_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CusDocumentsModel _$CusDocumentsModelFromJson(Map<String, dynamic> json) =>
    CusDocumentsModel(
      docName: json['DocName'] as String?,
      docUrl: json['DocUrl'] as String?,
      fromDate: json['FromDate'] as String?,
      endDate: json['EndDate'] as String?,
    );

Map<String, dynamic> _$CusDocumentsModelToJson(CusDocumentsModel instance) =>
    <String, dynamic>{
      'DocName': instance.docName,
      'DocUrl': instance.docUrl,
      'FromDate': instance.fromDate,
      'EndDate': instance.endDate,
    };
