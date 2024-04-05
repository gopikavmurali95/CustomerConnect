import 'package:json_annotation/json_annotation.dart';

part 'special_price_details_model.g.dart';

@JsonSerializable()
class SpecialPriceDetailsModel {
  @JsonKey(name: 'pld_ID')
  String? pldId;
  @JsonKey(name: 'pld_prh_ID')
  String? pldPrhId;
  @JsonKey(name: 'pld_VATPerc')
  String? pldVatPerc;
  @JsonKey(name: 'prd_ID')
  String? prdId;
  @JsonKey(name: 'prd_Code')
  String? prdCode;
  @JsonKey(name: 'prd_Name')
  String? prdName;
  @JsonKey(name: 'prd_NameArabic')
  String? prdNameArabic;
  @JsonKey(name: 'prd_Description')
  String? prdDescription;
  @JsonKey(name: 'UOM')
  String? uom;
  @JsonKey(name: 'StdPrice')
  String? stdPrice;
  @JsonKey(name: 'SpecialPrice')
  String? specialPrice;
  @JsonKey(name: 'pld_ReturnPrice')
  String? pldReturnPrice;

  SpecialPriceDetailsModel({
    this.pldId,
    this.pldPrhId,
    this.pldVatPerc,
    this.prdId,
    this.prdCode,
    this.prdName,
    this.prdNameArabic,
    this.prdDescription,
    this.uom,
    this.stdPrice,
    this.specialPrice,
    this.pldReturnPrice,
  });

  factory SpecialPriceDetailsModel.fromJson(Map<String, dynamic> json) {
    return _$SpecialPriceDetailsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SpecialPriceDetailsModelToJson(this);
}
