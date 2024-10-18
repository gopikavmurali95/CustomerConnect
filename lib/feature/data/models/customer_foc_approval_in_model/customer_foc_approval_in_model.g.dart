// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_foc_approval_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerFocApprovalInModel _$CustomerFocApprovalInModelFromJson(
        Map<String, dynamic> json) =>
    CustomerFocApprovalInModel(
      remarks: json['remarks'] as String?,
      userId: json['userId'] as String?,
      headerId: json['HeaderId'] as String?,
      jsonString: (json['JSONString'] as List<dynamic>?)
          ?.map((e) =>
              CustomerFocApprovalJsonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CustomerFocApprovalInModelToJson(
        CustomerFocApprovalInModel instance) =>
    <String, dynamic>{
      'remarks': instance.remarks,
      'userId': instance.userId,
      'HeaderId': instance.headerId,
      'JSONString': instance.jsonString,
    };
