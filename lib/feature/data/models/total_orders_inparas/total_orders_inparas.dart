import 'package:json_annotation/json_annotation.dart';

part 'total_orders_inparas.g.dart';

@JsonSerializable()
class TotalOrdersInparas {
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

  TotalOrdersInparas({
    this.userId,
    this.fromDate,
    this.toDate,
    this.area,
    this.subArea,
    this.route,
    this.customer,
    this.outlet,
  });

  factory TotalOrdersInparas.fromJson(Map<String, dynamic> json) {
    return _$TotalOrdersInparasFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TotalOrdersInparasToJson(this);
}
