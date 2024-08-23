import 'package:json_annotation/json_annotation.dart';

part 'merch_customer_activities_model.g.dart';

@JsonSerializable()
class MerchCustomerActivitiesModel {
  @JsonKey(name: 'ActName')
  String? actName;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'StartDate')
  String? startDate;
  @JsonKey(name: 'EndDate')
  String? endDate;
  @JsonKey(name: 'Status')
  String? status;
   @JsonKey(name: 'Act_ArName')
  String? actArName;
   @JsonKey(name: 'cus_ArName')
  String? cusrName;
   @JsonKey(name: 'ArStatus')
  String? arstatus;

  MerchCustomerActivitiesModel({
    this.actName,
    this.cusCode,
    this.cusName,
    this.startDate,
    this.endDate,
    this.status,
  });

  factory MerchCustomerActivitiesModel.fromJson(Map<String, dynamic> json) {
    return _$MerchCustomerActivitiesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MerchCustomerActivitiesModelToJson(this);
}
