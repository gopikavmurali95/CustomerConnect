import 'package:json_annotation/json_annotation.dart';

part 'sales_oder_count_model.g.dart';

@JsonSerializable()
class SalesOderCountModel {
  @JsonKey(name: 'TotalOrders')
  String? totalOrders;
  @JsonKey(name: 'TodayDel')
  String? todayDel;
  @JsonKey(name: 'TodayDelTot')
  String? todayDelTot;
  @JsonKey(name: 'TotalOrdersAmount')
  String? totalOrdersAmount;
  @JsonKey(name: 'TodayDelAmount')
  String? todayDelAmount;

  SalesOderCountModel({
    this.totalOrders,
    this.todayDel,
    this.todayDelTot,
    this.totalOrdersAmount,
    this.todayDelAmount,
  });

  factory SalesOderCountModel.fromJson(Map<String, dynamic> json) {
    return _$SalesOderCountModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SalesOderCountModelToJson(this);
}
