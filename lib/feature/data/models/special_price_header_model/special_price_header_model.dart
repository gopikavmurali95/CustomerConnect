import 'package:json_annotation/json_annotation.dart';

part 'special_price_header_model.g.dart';

@JsonSerializable()
class SpecialPriceHeaderModel {
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
  @JsonKey(name: 'Outlet')
  String? outlet;
  @JsonKey(name: 'Mode')
  String? mode;

  SpecialPriceHeaderModel({
    this.userId,
    this.fromDate,
    this.toDate,
    this.area,
    this.subArea,
    this.route,
    this.customer,
    this.outlet,
    this.mode,
  });

  factory SpecialPriceHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$SpecialPriceHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SpecialPriceHeaderModelToJson(this);
}
