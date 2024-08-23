import 'package:json_annotation/json_annotation.dart';

part 'merch_dispute_request_model.g.dart';

@JsonSerializable()
class MerchDisputeRequestModel {
  @JsonKey(name: 'drh_ID')
  String? drhId;
  @JsonKey(name: 'drh_TransID')
  String? drhTransId;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'Date')
  String? date;
  String? status;
   @JsonKey(name: 'Arcus_Name')
  String? arcusName;
   @JsonKey(name: 'Arstatus')
  String? arstatus;

  MerchDisputeRequestModel({
    this.drhId,
    this.drhTransId,
    this.rotCode,
    this.rotName,
    this.cusCode,
    this.cusName,
    this.date,
    this.status,
  });

  factory MerchDisputeRequestModel.fromJson(Map<String, dynamic> json) {
    return _$MerchDisputeRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MerchDisputeRequestModelToJson(this);
}
