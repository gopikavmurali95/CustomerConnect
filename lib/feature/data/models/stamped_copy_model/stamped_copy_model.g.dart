// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stamped_copy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StampedCopyModel _$StampedCopyModelFromJson(Map<String, dynamic> json) =>
    StampedCopyModel(
      stamped: json['Stamped'] as String?,
      transId: json['TransID'] as String?,
    );

Map<String, dynamic> _$StampedCopyModelToJson(StampedCopyModel instance) =>
    <String, dynamic>{
      'Stamped': instance.stamped,
      'TransID': instance.transId,
    };
