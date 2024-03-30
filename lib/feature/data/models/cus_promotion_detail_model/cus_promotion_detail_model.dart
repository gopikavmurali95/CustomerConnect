import 'package:json_annotation/json_annotation.dart';

part 'cus_promotion_detail_model.g.dart';

@JsonSerializable()
class CusPromotionDetailModel {
  String? minQty;
  String? maxQty;
  @JsonKey(name: 'Qty')
  String? qty;

  CusPromotionDetailModel({this.minQty, this.maxQty, this.qty});

  factory CusPromotionDetailModel.fromJson(Map<String, dynamic> json) {
    return _$CusPromotionDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CusPromotionDetailModelToJson(this);
}
