import 'package:json_annotation/json_annotation.dart';

part 'load_transfer_approval_out_model.g.dart';

@JsonSerializable()
class LoadTransferApprovalOutModel {
  @JsonKey(name: 'Status')
  String? status;

  LoadTransferApprovalOutModel({this.status});

  factory LoadTransferApprovalOutModel.fromJson(Map<String, dynamic> json) {
    return _$LoadTransferApprovalOutModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoadTransferApprovalOutModelToJson(this);
}
