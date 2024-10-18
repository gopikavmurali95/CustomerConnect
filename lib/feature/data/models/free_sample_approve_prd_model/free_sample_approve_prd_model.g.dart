// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'free_sample_approve_prd_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FreeSampleApprovePrdModel _$FreeSampleApprovePrdModelFromJson(
        Map<String, dynamic> json) =>
    FreeSampleApprovePrdModel(
      reasonId: json['reasonId'] as String?,
      status: json['Status'] as String?,
      fsaId: json['fsa_ID'] as String?,
    );

Map<String, dynamic> _$FreeSampleApprovePrdModelToJson(
        FreeSampleApprovePrdModel instance) =>
    <String, dynamic>{
      'reasonId': instance.reasonId,
      'Status': instance.status,
      'fsa_ID': instance.fsaId,
    };
