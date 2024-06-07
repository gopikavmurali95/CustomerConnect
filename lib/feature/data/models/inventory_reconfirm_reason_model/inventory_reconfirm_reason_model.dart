import 'package:json_annotation/json_annotation.dart';

part 'inventory_reconfirm_reason_model.g.dart';

@JsonSerializable()
class InventoryReconfirmReasonModel {
  @JsonKey(name: 'rsn_ID')
  String? rsnId;
  @JsonKey(name: 'rsn_Name')
  String? rsnName;

  InventoryReconfirmReasonModel({this.rsnId, this.rsnName});

  factory InventoryReconfirmReasonModel.fromJson(Map<String, dynamic> json) {
    return _$InventoryReconfirmReasonModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InventoryReconfirmReasonModelToJson(this);
}
