import 'package:json_annotation/json_annotation.dart';

part 'inventory_reconfirm_approval_resp_model.g.dart';

@JsonSerializable()
class InventoryReconfirmApprovalRespModel {
  @JsonKey(name: 'Status')
  String? status;

  InventoryReconfirmApprovalRespModel({this.status});

  factory InventoryReconfirmApprovalRespModel.fromJson(
      Map<String, dynamic> json) {
    return _$InventoryReconfirmApprovalRespModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$InventoryReconfirmApprovalRespModelToJson(this);
  }
}
