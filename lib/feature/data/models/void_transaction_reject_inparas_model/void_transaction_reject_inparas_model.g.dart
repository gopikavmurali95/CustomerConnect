// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'void_transaction_reject_inparas_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoidTransactionRejectInparasModel _$VoidTransactionRejectInparasModelFromJson(
        Map<String, dynamic> json) =>
    VoidTransactionRejectInparasModel(
      jsonString: (json['JSONString'] as List<dynamic>?)
          ?.map((e) => VoidTransactionRejectJsonModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VoidTransactionRejectInparasModelToJson(
        VoidTransactionRejectInparasModel instance) =>
    <String, dynamic>{
      'JSONString': instance.jsonString,
    };
