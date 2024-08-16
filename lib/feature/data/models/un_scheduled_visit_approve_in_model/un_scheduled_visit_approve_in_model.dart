import 'package:json_annotation/json_annotation.dart';

part 'un_scheduled_visit_approve_in_model.g.dart';

@JsonSerializable()
class UnScheduledVisitApproveInModel {
  @JsonKey(name: 'uva_ID')
  String? uvaId;

  UnScheduledVisitApproveInModel({this.uvaId});

  factory UnScheduledVisitApproveInModel.fromJson(Map<String, dynamic> json) {
    return _$UnScheduledVisitApproveInModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$UnScheduledVisitApproveInModelToJson(this);
  }
}
