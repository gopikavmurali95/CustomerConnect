import 'package:json_annotation/json_annotation.dart';

part 'todays_delivery_in_paras.g.dart';

@JsonSerializable()
class TodaysDeliveryInParas {
  @JsonKey(name: 'UserID')
  String? userId;
  @JsonKey(name: 'FromDate')
  String? fromDate;
  @JsonKey(name: 'ToDate')
  String? toDate;
  @JsonKey(name: 'Mode')
  String? mode;
  @JsonKey(name: 'Route')
  String? route;
  @JsonKey(name: 'Area')
  String? area;
  @JsonKey(name: 'SubArea')
  String? subArea;
  @JsonKey(name: 'Customer')
  String? customer;
  @JsonKey(name: 'CustomerOutlet')
  String? customerOutlet;

  TodaysDeliveryInParas({
    this.userId,
    this.fromDate,
    this.toDate,
    this.mode,
    this.route,
    this.area,
    this.subArea,
    this.customer,
    this.customerOutlet,
  });

  factory TodaysDeliveryInParas.fromJson(Map<String, dynamic> json) {
    return _$TodaysDeliveryInParasFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TodaysDeliveryInParasToJson(this);
}
