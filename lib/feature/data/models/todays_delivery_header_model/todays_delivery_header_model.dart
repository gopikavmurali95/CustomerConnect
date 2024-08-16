import 'package:json_annotation/json_annotation.dart';

part 'todays_delivery_header_model.g.dart';

@JsonSerializable()
class TodaysDeliveryHeaderModel {
  @JsonKey(name: 'OrderID')
  String? orderId;
  @JsonKey(name: 'rot_ID')
  String? rotId;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'cusName')
  String? cusName;
  @JsonKey(name: 'cusCode')
  String? cusCode;
  @JsonKey(name: 'cusOutName')
  String? cusOutName;
  @JsonKey(name: 'cusOutCode')
  String? cusOutCode;
  @JsonKey(name: 'salesman')
  String? salesman;
  @JsonKey(name: 'Date')
  String? date;
  @JsonKey(name: 'Time')
  String? time;
  @JsonKey(name: 'ID')
  String? id;
  @JsonKey(name: 'SubTotal')
  String? subTotal;
  @JsonKey(name: 'VAT')
  String? vat;
  @JsonKey(name: 'GrandTotal')
  String? grandTotal;
  @JsonKey(name: 'ArcusName')
  String? arcusName;
  @JsonKey(name: 'ArStatus')
  String? arStatus;
  @JsonKey(name: 'ArcusOutName')
  String? arcusOutName;
  @JsonKey(name: 'Arsalesman')
  String? arsalesman;

  TodaysDeliveryHeaderModel({
    this.orderId,
    this.rotId,
    this.rotCode,
    this.rotName,
    this.status,
    this.cusName,
    this.cusCode,
    this.cusOutName,
    this.cusOutCode,
    this.salesman,
    this.date,
    this.time,
    this.id,
    this.subTotal,
    this.vat,
    this.grandTotal,
    this.arStatus,
    this.arcusName,
    this.arcusOutName,
    this.arsalesman,
  });

  factory TodaysDeliveryHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$TodaysDeliveryHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TodaysDeliveryHeaderModelToJson(this);
}
