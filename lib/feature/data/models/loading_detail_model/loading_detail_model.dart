import 'package:json_annotation/json_annotation.dart';

part 'loading_detail_model.g.dart';

@JsonSerializable()
class LoadingDetailModel {
  @JsonKey(name: 'prd_ID')
  String? prdId;
  @JsonKey(name: 'prd_Code')
  String? prdCode;
  @JsonKey(name: 'prd_Name')
  String? prdName;
  @JsonKey(name: 'LowerUOM')
  String? lowerUom;
  @JsonKey(name: 'HigherUOM')
  String? higherUom;
  @JsonKey(name: 'LowerQty')
  String? lowerQty;
  @JsonKey(name: 'HigherQty')
  String? higherQty;
  @JsonKey(name: 'LiHigherUom')
  String? liHigherUom;
  @JsonKey(name: 'LiLowerUom')
  String? liLowerUom;

  LoadingDetailModel({
    this.prdId,
    this.prdCode,
    this.prdName,
    this.lowerUom,
    this.higherUom,
    this.lowerQty,
    this.higherQty,
    this.liHigherUom,
    this.liLowerUom,
  });

  factory LoadingDetailModel.fromJson(Map<String, dynamic> json) {
    return _$LoadingDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoadingDetailModelToJson(this);
}
