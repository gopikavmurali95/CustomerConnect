import 'package:json_annotation/json_annotation.dart';

part 'un_scheduled_approval_resp_model.g.dart';

@JsonSerializable()
class UnScheduledApprovalRespModel {
  @JsonKey(name: 'Descr')
  String? descr;
  @JsonKey(name: 'Res')
  String? res;
  @JsonKey(name: 'Title')
  String? title;

  UnScheduledApprovalRespModel({this.descr, this.res, this.title});

  factory UnScheduledApprovalRespModel.fromJson(Map<String, dynamic> json) {
    return _$UnScheduledApprovalRespModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UnScheduledApprovalRespModelToJson(this);
}
