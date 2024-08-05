import 'package:json_annotation/json_annotation.dart';

part 'chart_actual_visit_model.g.dart';

@JsonSerializable()
class ChartActualVisitModel {
  @JsonKey(name: 'Planned')
  String? planned;
  @JsonKey(name: 'Unplanned')
  String? unplanned;
  @JsonKey(name: 'Total')
  String? total;

  ChartActualVisitModel({this.planned, this.unplanned, this.total});

  factory ChartActualVisitModel.fromJson(Map<String, dynamic> json) {
    return _$ChartActualVisitModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChartActualVisitModelToJson(this);
}
