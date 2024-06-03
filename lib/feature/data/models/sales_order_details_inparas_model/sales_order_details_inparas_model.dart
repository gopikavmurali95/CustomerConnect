import 'package:json_annotation/json_annotation.dart';

part 'sales_order_details_inparas_model.g.dart';

@JsonSerializable()
class SalesOrderDetailsInparasModel {
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

  SalesOrderDetailsInparasModel({
    this.userId,
    this.fromDate,
    this.toDate,
    this.area,
    this.subArea,
    this.route,
    this.cusId,
  });

  factory SalesOrderDetailsInparasModel.fromJson(Map<String, dynamic> json) {
    return _$SalesOrderDetailsInparasModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SalesOrderDetailsInparasModelToJson(this);
}
