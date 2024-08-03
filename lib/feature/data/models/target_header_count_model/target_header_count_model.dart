import 'package:json_annotation/json_annotation.dart';

part 'target_header_count_model.g.dart';

@JsonSerializable()
class TargetHeaderCountModel {
  @JsonKey(name: 'TotalTargetAmt')
  String? totalTargetAmt;
  @JsonKey(name: 'TotalAchAmt')
  String? totalAchAmt;
  @JsonKey(name: 'TotalGapAmt')
  String? totalGapAmt;
  @JsonKey(name: 'TotalTargetQty')
  String? totalTargetQty;
  @JsonKey(name: 'TotalAchQty')
  String? totalAchQty;
  @JsonKey(name: 'TotalGapQty')
  String? totalGapQty;

  TargetHeaderCountModel({
    this.totalTargetAmt,
    this.totalAchAmt,
    this.totalGapAmt,
    this.totalTargetQty,
    this.totalAchQty,
    this.totalGapQty,
  });

  factory TargetHeaderCountModel.fromJson(Map<String, dynamic> json) {
    return _$TargetHeaderCountModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TargetHeaderCountModelToJson(this);
}
