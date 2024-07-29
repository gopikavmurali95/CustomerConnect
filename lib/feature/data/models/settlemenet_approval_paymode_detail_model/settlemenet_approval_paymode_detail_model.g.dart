// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settlemenet_approval_paymode_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettlemenetApprovalPaymodeDetailModel
    _$SettlemenetApprovalPaymodeDetailModelFromJson(
            Map<String, dynamic> json) =>
        SettlemenetApprovalPaymodeDetailModel(
          mode: json['Mode'] as String?,
          expectedAmount: json['ExpectedAmount'] as String?,
          collectedAmount: json['CollectedAmount'] as String?,
          variance: json['Variance'] as String?,
        );

Map<String, dynamic> _$SettlemenetApprovalPaymodeDetailModelToJson(
        SettlemenetApprovalPaymodeDetailModel instance) =>
    <String, dynamic>{
      'Mode': instance.mode,
      'ExpectedAmount': instance.expectedAmount,
      'CollectedAmount': instance.collectedAmount,
      'Variance': instance.variance,
    };
