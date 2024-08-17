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
  @JsonKey(name: 'UserID')
  String? userID;
  @JsonKey(name: 'rotID')
  String? rotID;
  @JsonKey(name: 'Arcus_Name')
  String? arcusName;
  @JsonKey(name: 'Ardah_ApprovalStatus')
  String? ardahApprovalStatus;
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
    this.rotID,
    this.userID,
    this.arcusName,
    this.ardahApprovalStatus,
  });

  factory PartialDeliveryHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$PartialDeliveryHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PartialDeliveryHeaderModelToJson(this);
}
