import 'package:json_annotation/json_annotation.dart';

part 'customer_foc_header_model.g.dart';

@JsonSerializable()
class CustomerFocHeaderModel {
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'usr_Name')
  String? usrName;
  @JsonKey(name: 'cfh_ID')
  String? cfhId;
  @JsonKey(name: 'cfh_RtnId')
  String? cfhRtnId;
  @JsonKey(name: 'CreatedDate')
  String? createdDate;
  @JsonKey(name: 'CreatedBy')
  String? createdBy;
  @JsonKey(name: 'ApprovalStatus')
  String? approvalStatus;
  @JsonKey(name: 'ModifiedDate')
  String? modifiedDate;
  @JsonKey(name: 'ModifiedBy')
  String? modifiedBy;
  @JsonKey(name: 'rsn_Name')
  String? rsnName;

  CustomerFocHeaderModel({
    this.cusCode,
    this.cusName,
    this.rotName,
    this.rotCode,
    this.usrName,
    this.cfhId,
    this.cfhRtnId,
    this.createdDate,
    this.createdBy,
    this.approvalStatus,
    this.modifiedDate,
    this.modifiedBy,
    this.rsnName,
  });

  factory CustomerFocHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$CustomerFocHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerFocHeaderModelToJson(this);
}
