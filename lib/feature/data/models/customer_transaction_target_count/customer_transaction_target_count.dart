import 'package:json_annotation/json_annotation.dart';

part 'customer_transaction_target_count.g.dart';

@JsonSerializable()
class CustomerTransactionTargetCount {
  String? dailyTargetAmount;
  String? dailyTargetAchievedPercentage;
  String? dailyRemainingAchievedAmount;

  CustomerTransactionTargetCount({
    this.dailyTargetAmount,
    this.dailyTargetAchievedPercentage,
    this.dailyRemainingAchievedAmount,
  });

  factory CustomerTransactionTargetCount.fromJson(Map<String, dynamic> json) {
    return _$CustomerTransactionTargetCountFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CustomerTransactionTargetCountToJson(this);
  }
}
