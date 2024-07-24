// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'void_transaction_json_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoidTransactionJsonModel _$VoidTransactionJsonModelFromJson(
        Map<String, dynamic> json) =>
    VoidTransactionJsonModel(
      vtaId: json['vta_ID'] as String?,
      status: json['Status'] as String?,
      type: json['type'] as String?,
      trnNumber: json['trn_Number'] as String?,
      udpId: json['udpID'] as String?,
      userId: json['userID'] as String?,
    );

Map<String, dynamic> _$VoidTransactionJsonModelToJson(
        VoidTransactionJsonModel instance) =>
    <String, dynamic>{
      'vta_ID': instance.vtaId,
      'Status': instance.status,
      'type': instance.type,
      'trn_Number': instance.trnNumber,
      'udpID': instance.udpId,
      'userID': instance.userId,
    };
