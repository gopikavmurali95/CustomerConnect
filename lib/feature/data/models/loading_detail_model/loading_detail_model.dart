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
  @JsonKey(name: 'Arprd_name')
  String? arprdname;
  @JsonKey(name: 'Arprd_desc')
  String? arprddesc;
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
    this.arprddesc,
    this.arprdname,
  });

  factory LoadingDetailModel.fromJson(Map<String, dynamic> json) {
    return _$LoadingDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoadingDetailModelToJson(this);
}
