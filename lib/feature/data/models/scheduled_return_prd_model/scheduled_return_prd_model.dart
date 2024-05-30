import 'package:json_annotation/json_annotation.dart';

part 'scheduled_return_prd_model.g.dart';

@JsonSerializable()
class ScheduledReturnPrdModel {
  @JsonKey(name: 'rrd_ID')
  String? rrdId;
  @JsonKey(name: 'Reason')
  String? reason;
  @JsonKey(name: 'Status')
  String? status;

  ScheduledReturnPrdModel({this.rrdId, this.reason, this.status});

  factory ScheduledReturnPrdModel.fromJson(Map<String, dynamic> json) {
    return _$ScheduledReturnPrdModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ScheduledReturnPrdModelToJson(this);
}
