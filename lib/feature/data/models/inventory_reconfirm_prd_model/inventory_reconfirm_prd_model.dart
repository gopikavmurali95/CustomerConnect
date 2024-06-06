import 'package:json_annotation/json_annotation.dart';

part 'inventory_reconfirm_prd_model.g.dart';

@JsonSerializable()
class InventoryReconfirmPrdModel {
  @JsonKey(name: 'iad_ID')
  String? iadId;
  @JsonKey(name: 'Reason')
  String? reason;
  @JsonKey(name: 'Status')
  String? status;

  InventoryReconfirmPrdModel({this.iadId, this.reason, this.status});

  factory InventoryReconfirmPrdModel.fromJson(Map<String, dynamic> json) {
    return _$InventoryReconfirmPrdModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InventoryReconfirmPrdModelToJson(this);
}
