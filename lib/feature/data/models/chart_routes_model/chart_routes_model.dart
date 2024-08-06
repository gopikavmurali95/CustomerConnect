import 'package:json_annotation/json_annotation.dart';

part 'chart_routes_model.g.dart';

@JsonSerializable()
class ChartRoutesModel {
  @JsonKey(name: 'Active')
  String? active;
  @JsonKey(name: 'DaysStarted')
  String? daysStarted;
  @JsonKey(name: 'DaysNotStarted')
  String? daysNotStarted;

  ChartRoutesModel({this.active, this.daysStarted, this.daysNotStarted});

  factory ChartRoutesModel.fromJson(Map<String, dynamic> json) {
    return _$ChartRoutesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChartRoutesModelToJson(this);
}
