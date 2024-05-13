import 'package:json_annotation/json_annotation.dart';

part 'load_transfer_approval_in_model.g.dart';

@JsonSerializable()
class LoadTransferApprovalInModel {
  @JsonKey(name: 'ldr_ID')
  String? ldrId;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'UserId')
  String? userId;
  @JsonKey(name: 'ReqID')
  String? reqId;

  LoadTransferApprovalInModel({
    this.ldrId,
    this.status,
    this.userId,
    this.reqId,
  });

  factory LoadTransferApprovalInModel.fromJson(Map<String, dynamic> json) {
    return _$LoadTransferApprovalInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoadTransferApprovalInModelToJson(this);
}
