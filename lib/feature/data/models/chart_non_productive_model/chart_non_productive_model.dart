import 'package:json_annotation/json_annotation.dart';

part 'chart_non_productive_model.g.dart';

@JsonSerializable()
class ChartNonProductiveModel {
  @JsonKey(name: 'Planned')
  String? planned;
  @JsonKey(name: 'Unplanned')
  String? unplanned;
  @JsonKey(name: 'Total')
  String? total;

  ChartNonProductiveModel({this.planned, this.unplanned, this.total});

  factory ChartNonProductiveModel.fromJson(Map<String, dynamic> json) {
    return _$ChartNonProductiveModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChartNonProductiveModelToJson(this);
}
