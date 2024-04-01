import 'package:json_annotation/json_annotation.dart';

part 'cus_promo_in_model.g.dart';

@JsonSerializable()
class CusPromoInModel {
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
  @JsonKey(name: 'CusID')
  String? cusId;

  CusPromoInModel({
    this.userId,
    this.fromDate,
    this.toDate,
    this.area,
    this.subArea,
    this.route,
    this.cusId,
  });

  factory CusPromoInModel.fromJson(Map<String, dynamic> json) {
    return _$CusPromoInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CusPromoInModelToJson(this);
}
