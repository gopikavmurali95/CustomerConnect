import 'package:customer_connect/feature/data/models/inventory_reconfirm_prd_model/inventory_reconfirm_prd_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inventory_reconfirm_approve_in_model.g.dart';

@JsonSerializable()
class InventoryReconfirmApproveInModel {
  @JsonKey(name: 'ReqID')
  String? reqId;
  @JsonKey(name: 'UserId')
  String? userId;

  List<InventoryReconfirmPrdModel?>? products;

  InventoryReconfirmApproveInModel({this.reqId, this.userId, this.products});

  factory InventoryReconfirmApproveInModel.fromJson(Map<String, dynamic> json) {
    return _$InventoryReconfirmApproveInModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$InventoryReconfirmApproveInModelToJson(this);
  }
}
