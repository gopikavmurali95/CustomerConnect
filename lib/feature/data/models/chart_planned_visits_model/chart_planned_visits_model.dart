import 'package:json_annotation/json_annotation.dart';

part 'chart_planned_visits_model.g.dart';

@JsonSerializable()
class ChartPlannedVisitsModel {
  @JsonKey(name: 'Planned')
  String? planned;
  @JsonKey(name: 'Visited')
  String? visited;
  @JsonKey(name: 'Pending')
  String? pending;

  ChartPlannedVisitsModel({this.planned, this.visited, this.pending});

  factory ChartPlannedVisitsModel.fromJson(Map<String, dynamic> json) {
    return _$ChartPlannedVisitsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChartPlannedVisitsModelToJson(this);
}
