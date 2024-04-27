import 'package:json_annotation/json_annotation.dart';

part 'return_approve_out_model.g.dart';

@JsonSerializable()
class ReturnApproveOutModel {
  @JsonKey(name: 'Mode')
  String? mode;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'TransID')
  String? transId;

  ReturnApproveOutModel({this.mode, this.status, this.transId});

  factory ReturnApproveOutModel.fromJson(Map<String, dynamic> json) {
    return _$ReturnApproveOutModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ReturnApproveOutModelToJson(this);
}
