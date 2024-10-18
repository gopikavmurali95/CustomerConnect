import 'package:json_annotation/json_annotation.dart';

part 'free_sample_header_model.g.dart';

@JsonSerializable()
class FreeSampleHeaderModel {
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
  @JsonKey(name: 'fsh_ID')
  String? fshId;
  @JsonKey(name: 'fshReqID')
  String? fshReqId;
  @JsonKey(name: 'CreatedBy')
  String? createdBy;
  @JsonKey(name: 'CreatedDate')
  String? createdDate;
  @JsonKey(name: 'ModifiedBy')
  String? modifiedBy;
  @JsonKey(name: 'ModifiedDate')
  String? modifiedDate;
  @JsonKey(name: 'ApprovalStatus')
  String? approvalStatus;

  FreeSampleHeaderModel({
    this.cusCode,
    this.cusName,
    this.rotName,
    this.rotCode,
    this.usrName,
    this.fshId,
    this.fshReqId,
    this.createdBy,
    this.createdDate,
    this.modifiedBy,
    this.modifiedDate,
    this.approvalStatus,
  });

  factory FreeSampleHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$FreeSampleHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FreeSampleHeaderModelToJson(this);
}
