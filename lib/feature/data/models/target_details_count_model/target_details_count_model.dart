import 'package:json_annotation/json_annotation.dart';

part 'target_details_count_model.g.dart';

@JsonSerializable()
class TargetDetailsCountModel {
  @JsonKey(name: 'Month')
  String? month;
  @JsonKey(name: 'ArMonth')
  String? arMonth;
  @JsonKey(name: 'TotWorkingDays')
  String? totWorkingDays;
  @JsonKey(name: 'CompletedDays')
  String? completedDays;

  TargetDetailsCountModel({
    this.month,
    this.totWorkingDays,
    this.completedDays,
  });

  factory TargetDetailsCountModel.fromJson(Map<String, dynamic> json) {
    return _$TargetDetailsCountModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TargetDetailsCountModelToJson(this);
}
