import 'package:json_annotation/json_annotation.dart';

part 'partial_delivery_header_model.g.dart';

@JsonSerializable()
class PartialDeliveryHeaderModel {
  @JsonKey(name: 'dah_ID')
  String? dahId;
  @JsonKey(name: 'OrderID')
  String? orderId;
  @JsonKey(name: 'ExpectedDelDate')
  String? expectedDelDate;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'Type')
  String? type;
  @JsonKey(name: 'CreatedDate')
  String? createdDate;
  @JsonKey(name: 'dah_ApprovalStatus')
  String? dahApprovalStatus;

  PartialDeliveryHeaderModel({
    this.dahId,
    this.orderId,
    this.expectedDelDate,
    this.cusCode,
    this.cusName,
    this.rotName,
    this.type,
    this.createdDate,
    this.dahApprovalStatus,
  });

  factory PartialDeliveryHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$PartialDeliveryHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PartialDeliveryHeaderModelToJson(this);
}
