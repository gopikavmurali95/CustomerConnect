import 'package:json_annotation/json_annotation.dart';

part 'ar_total_in_model.g.dart';

@JsonSerializable()
class ArTotalInModel {
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

  ArTotalInModel({
    this.userId,
    this.fromDate,
    this.toDate,
    this.area,
    this.subArea,
    this.route,
    this.customer,
    this.outlet,
  });

  factory ArTotalInModel.fromJson(Map<String, dynamic> json) {
    return _$ArTotalInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ArTotalInModelToJson(this);
}
