import 'package:json_annotation/json_annotation.dart';

part 'promotion_header_in_paras.g.dart';

@JsonSerializable()
class PromotionHeaderInParas {
  @JsonKey(name: 'UserID')
  String? userId;
  @JsonKey(name: 'FromDate')
  String? fromDate;
  @JsonKey(name: 'ToDate')
  String? toDate;
  @JsonKey(name: 'Area')
  String? area;
  @JsonKey(name: 'SubArea')
  String? subArea;
  @JsonKey(name: 'Route')
  String? route;
  @JsonKey(name: 'Customer')
  String? customer;
  @JsonKey(name: 'CusOutlet')
  String? cusOutlet;

  PromotionHeaderInParas({
    this.userId,
    this.fromDate,
    this.toDate,
    this.area,
    this.subArea,
    this.route,
    this.customer,
    this.cusOutlet,

  });

  factory PromotionHeaderInParas.fromJson(Map<String, dynamic> json) {
    return _$PromotionHeaderInParasFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PromotionHeaderInParasToJson(this);
}
