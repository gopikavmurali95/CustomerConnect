import 'package:json_annotation/json_annotation.dart';

part 'inventory_reconfirm_detail_model.g.dart';

@JsonSerializable()
class InventoryReconfirmDetailModel {
  @JsonKey(name: 'iad_ID')
  String? iadId;
  @JsonKey(name: 'iad_prd_ID')
  String? iadPrdId;
  @JsonKey(name: 'iad_HigherQty')
  String? iadHigherQty;
  @JsonKey(name: 'iad_LowerQty')
  String? iadLowerQty;
  @JsonKey(name: 'iad_PhysicalHQty')
  String? iadPhysicalHQty;
  @JsonKey(name: 'iad_PhysicalLQty')
  String? iadPhysicalLQty;
  @JsonKey(name: 'iad_DescHQty')
  String? iadDescHQty;
  @JsonKey(name: 'iad_DescLQty')
  String? iadDescLQty;
  @JsonKey(name: 'iad_HigherUOM')
  String? iadHigherUom;
  @JsonKey(name: 'iad_LowerUOM')
  String? iadLowerUom;
  @JsonKey(name: 'iad_PhysicalHUOM')
  String? iadPhysicalHuom;
  @JsonKey(name: 'iad_DescHUOM')
  String? iadDescHuom;
  @JsonKey(name: 'iad_DescLUOM')
  String? iadDescLuom;
  @JsonKey(name: 'prd_Code')
  String? prdCode;
  @JsonKey(name: 'prd_Name')
  String? prdName;
  @JsonKey(name: 'Arprd_Name')
  String? arprdName;

  InventoryReconfirmDetailModel({
    this.iadId,
    this.iadPrdId,
    this.iadHigherQty,
    this.iadLowerQty,
    this.iadPhysicalHQty,
    this.iadPhysicalLQty,
    this.iadDescHQty,
    this.iadDescLQty,
    this.iadHigherUom,
    this.iadLowerUom,
    this.iadPhysicalHuom,
    this.iadDescHuom,
    this.iadDescLuom,
    this.prdCode,
    this.prdName,
  });

  factory InventoryReconfirmDetailModel.fromJson(Map<String, dynamic> json) {
    return _$InventoryReconfirmDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InventoryReconfirmDetailModelToJson(this);
}
