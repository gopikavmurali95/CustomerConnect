import 'package:json_annotation/json_annotation.dart';

part 'cus_ins_onv_detail_model.g.dart';

@JsonSerializable()
class CusInsOnvDetailModel {
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
  @JsonKey(name: 'Amount')
  String? amount;
  @JsonKey(name: 'prd_Type')
  String? prdtype;

  CusInsOnvDetailModel({
    this.prdId,
    this.prdCode,
    this.prdName,
    this.lowerUom,
    this.higherUom,
    this.lowerQty,
    this.higherQty,
    this.amount,
    this.prdtype,
  });

  factory CusInsOnvDetailModel.fromJson(Map<String, dynamic> json) {
    return _$CusInsOnvDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CusInsOnvDetailModelToJson(this);
}
