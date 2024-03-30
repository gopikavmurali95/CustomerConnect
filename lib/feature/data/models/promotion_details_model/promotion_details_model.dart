import 'package:json_annotation/json_annotation.dart';

part 'promotion_details_model.g.dart';

@JsonSerializable()
class PromotionDetailsModel {
  String? minQty;
  String? maxQty;
  @JsonKey(name: 'Qty')
  String? qty;

  PromotionDetailsModel({this.minQty, this.maxQty, this.qty});

  factory PromotionDetailsModel.fromJson(Map<String, dynamic> json) {
    return _$PromotionDetailsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PromotionDetailsModelToJson(this);
}
