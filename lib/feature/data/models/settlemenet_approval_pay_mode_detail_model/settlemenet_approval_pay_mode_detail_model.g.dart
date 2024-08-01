// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settlemenet_approval_pay_mode_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettlemenetApprovalPayModeDetailModel
    _$SettlemenetApprovalPayModeDetailModelFromJson(
            Map<String, dynamic> json) =>
        SettlemenetApprovalPayModeDetailModel(
          mode: json['Mode'] as String?,
          expectedAmount: json['ExpectedAmount'] as String?,
          collectedAmount: json['CollectedAmount'] as String?,
          variance: json['Variance'] as String?,
          expectedAmountTotal: json['ExpectedAmountTotal'] as String?,
          collectedAmountTotal: json['CollectedAmountTotal'] as String?,
          varianceTotal: json['VarianceTotal'] as String?,
          varianceLimit: json['VarianceLimit'] as String?,
        );

Map<String, dynamic> _$SettlemenetApprovalPayModeDetailModelToJson(
        SettlemenetApprovalPayModeDetailModel instance) =>
    <String, dynamic>{
      'Mode': instance.mode,
      'ExpectedAmount': instance.expectedAmount,
      'CollectedAmount': instance.collectedAmount,
      'Variance': instance.variance,
      'ExpectedAmountTotal': instance.expectedAmountTotal,
      'CollectedAmountTotal': instance.collectedAmountTotal,
      'VarianceTotal': instance.varianceTotal,
      'VarianceLimit': instance.varianceLimit,
    };
