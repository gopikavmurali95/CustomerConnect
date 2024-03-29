import 'package:json_annotation/json_annotation.dart';

part 'cus_items_model.g.dart';

@JsonSerializable()
class CusItemsModel {
  @JsonKey(name: 'crp_prh_ID')
  String? crpPrhId;
  @JsonKey(name: 'prd_ID')
  String? prdId;
  @JsonKey(name: 'pld_uom_ID')
  String? pldUomId;
  @JsonKey(name: 'pld_Price')
  String? pldPrice;
  @JsonKey(name: 'pld_ReturnPrice')
  String? pldReturnPrice;
  @JsonKey(name: 'prd_Code')
  String? prdCode;
  @JsonKey(name: 'prd_Name')
  String? prdName;
  @JsonKey(name: 'uom_Name')
  String? uomName;

  CusItemsModel({
    this.crpPrhId,
    this.prdId,
    this.pldUomId,
    this.pldPrice,
    this.pldReturnPrice,
    this.prdCode,
    this.prdName,
    this.uomName,
  });

  factory CusItemsModel.fromJson(Map<String, dynamic> json) {
    return _$CusItemsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CusItemsModelToJson(this);
}
