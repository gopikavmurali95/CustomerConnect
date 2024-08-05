import 'package:json_annotation/json_annotation.dart';

part 'chart_productive_visit_model.g.dart';

@JsonSerializable()
class ChartProductiveVisitModel {
  @JsonKey(name: 'Planned')
  String? planned;
  @JsonKey(name: 'Unplanned')
  String? unplanned;
  @JsonKey(name: 'Total')
  String? total;

  ChartProductiveVisitModel({this.planned, this.unplanned, this.total});

  factory ChartProductiveVisitModel.fromJson(Map<String, dynamic> json) {
    return _$ChartProductiveVisitModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChartProductiveVisitModelToJson(this);
}
