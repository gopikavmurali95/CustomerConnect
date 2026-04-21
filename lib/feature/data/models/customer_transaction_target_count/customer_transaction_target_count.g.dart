// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_transaction_target_count.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerTransactionTargetCount _$CustomerTransactionTargetCountFromJson(
        Map<String, dynamic> json) =>
    CustomerTransactionTargetCount(
      dailyTargetAmount: json['dailyTargetAmount'] as String?,
      dailyTargetAchievedPercentage:
          json['dailyTargetAchievedPercentage'] as String?,
      dailyRemainingAchievedAmount:
          json['dailyRemainingAchievedAmount'] as String?,
    );

Map<String, dynamic> _$CustomerTransactionTargetCountToJson(
        CustomerTransactionTargetCount instance) =>
    <String, dynamic>{
      'dailyTargetAmount': instance.dailyTargetAmount,
      'dailyTargetAchievedPercentage': instance.dailyTargetAchievedPercentage,
      'dailyRemainingAchievedAmount': instance.dailyRemainingAchievedAmount,
    };
