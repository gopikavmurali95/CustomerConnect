// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'void_transacrtion_approval_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoidTransacrtionApprovalInModel _$VoidTransacrtionApprovalInModelFromJson(
        Map<String, dynamic> json) =>
    VoidTransacrtionApprovalInModel(
      jsonString: (json['JSONString'] as List<dynamic>?)
          ?.map((e) =>
              VoidTransactionJsonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VoidTransacrtionApprovalInModelToJson(
        VoidTransacrtionApprovalInModel instance) =>
    <String, dynamic>{
      'JSONString': instance.jsonString,
    };
