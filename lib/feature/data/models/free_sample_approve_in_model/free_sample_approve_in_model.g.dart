// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'free_sample_approve_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FreeSampleApproveInModel _$FreeSampleApproveInModelFromJson(
        Map<String, dynamic> json) =>
    FreeSampleApproveInModel(
      userId: json['UserId'] as String?,
      headerId: json['HeaderID'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) =>
              FreeSampleApprovePrdModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FreeSampleApproveInModelToJson(
        FreeSampleApproveInModel instance) =>
    <String, dynamic>{
      'UserId': instance.userId,
      'HeaderID': instance.headerId,
      'products': instance.products,
    };
