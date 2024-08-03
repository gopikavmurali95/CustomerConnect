// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'void_transaction_reject_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoidTransactionRejectModel _$VoidTransactionRejectModelFromJson(
        Map<String, dynamic> json) =>
    VoidTransactionRejectModel(
      status: json['Status'] as String?,
      res: json['Res'] as String?,
    );

Map<String, dynamic> _$VoidTransactionRejectModelToJson(
        VoidTransactionRejectModel instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'Res': instance.res,
    };
