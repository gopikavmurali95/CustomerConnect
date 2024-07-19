// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'must_sell_approve_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MustSellApproveInModel _$MustSellApproveInModelFromJson(
        Map<String, dynamic> json) =>
    MustSellApproveInModel(
      userId: json['UserId'] as String?,
      transId: json['TransID'] as String?,
      jsonString: (json['JSONString'] as List<dynamic>?)
          ?.map((e) => MustSellIJsonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MustSellApproveInModelToJson(
        MustSellApproveInModel instance) =>
    <String, dynamic>{
      'UserId': instance.userId,
      'TransID': instance.transId,
      'JSONString': instance.jsonString,
    };
