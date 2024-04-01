import 'package:json_annotation/json_annotation.dart';

part 'cus_sp_price_in_model.g.dart';

@JsonSerializable()
class CusSpPriceInModel {
  @JsonKey(name: 'UserID')
  String? userId;
  @JsonKey(name: 'FromDate')
  String? fromDate;
  @JsonKey(name: 'ToDate')
  String? toDate;
  @JsonKey(name: 'CusID')
  String? cusId;
  @JsonKey(name: 'Route')
  String? route;
  @JsonKey(name: 'Area')
  String? area;
  @JsonKey(name: 'SubArea')
  String? subArea;

  CusSpPriceInModel({
    this.userId,
    this.fromDate,
    this.toDate,
    this.cusId,
    this.route,
    this.area,
    this.subArea,
  });

  factory CusSpPriceInModel.fromJson(Map<String, dynamic> json) {
    return _$CusSpPriceInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CusSpPriceInModelToJson(this);
}
