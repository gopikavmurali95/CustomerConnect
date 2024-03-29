import 'package:json_annotation/json_annotation.dart';

part 'sales_orders_in_model.g.dart';

@JsonSerializable()
class SalesOrdersInModel {
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
  @JsonKey(name: 'cus_ID')
  String? cusId;

  SalesOrdersInModel({
    this.userId,
    this.fromDate,
    this.toDate,
    this.area,
    this.subArea,
    this.route,
    this.cusId,
  });

  factory SalesOrdersInModel.fromJson(Map<String, dynamic> json) {
    return _$SalesOrdersInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SalesOrdersInModelToJson(this);
}
