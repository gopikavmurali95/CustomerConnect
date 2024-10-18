import 'package:json_annotation/json_annotation.dart';

part 'free_sample_approval_resp_model.g.dart';

@JsonSerializable()
class FreeSampleApprovalRespModel {
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'Res')
  String? res;

  FreeSampleApprovalRespModel({this.status, this.res});

  factory FreeSampleApprovalRespModel.fromJson(Map<String, dynamic> json) {
    return _$FreeSampleApprovalRespModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FreeSampleApprovalRespModelToJson(this);
}
