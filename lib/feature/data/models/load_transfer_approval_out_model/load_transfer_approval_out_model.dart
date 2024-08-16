import 'package:json_annotation/json_annotation.dart';

part 'load_transfer_approval_out_model.g.dart';

@JsonSerializable()
class LoadTransferApprovalOutModel {
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'ArStatus')
  String? arStatus;
  LoadTransferApprovalOutModel({this.status, this.arStatus});

  factory LoadTransferApprovalOutModel.fromJson(Map<String, dynamic> json) {
    return _$LoadTransferApprovalOutModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoadTransferApprovalOutModelToJson(this);
}
