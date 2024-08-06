import 'package:json_annotation/json_annotation.dart';

part 'activity_target_model.g.dart';

@JsonSerializable()
class ActivityTargetModel {
  @JsonKey(name: 'TotTargetAmt')
  String? totTargetAmt;
  @JsonKey(name: 'MTDWrkDays')
  String? mtdWrkDays;
  @JsonKey(name: 'TotWrkDays')
  String? totWrkDays;
  @JsonKey(name: 'ProRateTarget')
  String? proRateTarget;
  @JsonKey(name: 'SalPerDay')
  String? salPerDay;
  @JsonKey(name: 'MTDSales')
  String? mtdSales;
  @JsonKey(name: 'ExcShtg')
  String? excShtg;

  ActivityTargetModel({
    this.totTargetAmt,
    this.mtdWrkDays,
    this.totWrkDays,
    this.proRateTarget,
    this.salPerDay,
    this.mtdSales,
    this.excShtg,
  });

  factory ActivityTargetModel.fromJson(Map<String, dynamic> json) {
    return _$ActivityTargetModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ActivityTargetModelToJson(this);
}
