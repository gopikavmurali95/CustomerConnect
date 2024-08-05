import 'package:json_annotation/json_annotation.dart';

part 'target_details_graph_amt_model.g.dart';

@JsonSerializable()
class TargetDetailsGraphAmtModel {
  @JsonKey(name: 'TotalAmt')
  String? totalAmt;
  @JsonKey(name: 'AchAmt')
  String? achAmt;
  @JsonKey(name: 'MTDGapAmt')
  String? mtdGapAmt;
  @JsonKey(name: 'MonthGapAmt')
  String? monthGapAmt;

  TargetDetailsGraphAmtModel({
    this.totalAmt,
    this.achAmt,
    this.mtdGapAmt,
    this.monthGapAmt,
  });

  factory TargetDetailsGraphAmtModel.fromJson(Map<String, dynamic> json) {
    return _$TargetDetailsGraphAmtModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TargetDetailsGraphAmtModelToJson(this);
}
