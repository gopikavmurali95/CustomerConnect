import 'package:json_annotation/json_annotation.dart';

part 'todays_delivery_details_model.g.dart';

@JsonSerializable()
class TodaysDeliveryDetailsModel {
  @JsonKey(name: 'prh_ID')
  String? prhId;
  @JsonKey(name: 'prh_Code')
  String? prhCode;
  @JsonKey(name: 'prh_Name')
  String? prhName;
  @JsonKey(name: 'StartDate')
  String? startDate;
  @JsonKey(name: 'EndDate')
  String? endDate;
  @JsonKey(name: 'prh_PayMode')
  String? prhPayMode;

  TodaysDeliveryDetailsModel({
    this.prhId,
    this.prhCode,
    this.prhName,
    this.startDate,
    this.endDate,
    this.prhPayMode,
  });

  factory TodaysDeliveryDetailsModel.fromJson(Map<String, dynamic> json) {
    return _$TodaysDeliveryDetailsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TodaysDeliveryDetailsModelToJson(this);
}
