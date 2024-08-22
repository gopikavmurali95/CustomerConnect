import 'package:json_annotation/json_annotation.dart';

part 'merch_return_request_model.g.dart';

@JsonSerializable()
class MerchReturnRequestModel {
  @JsonKey(name: 'rrh_ID')
  String? rrhId;
  @JsonKey(name: 'rrh_RequestNumber')
  String? rrhRequestNumber;
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
  @JsonKey(name: ' Arcus_Name')
  String? arcusName;
  @JsonKey(name: ' Arstatus')
  String? arStatus;

  MerchReturnRequestModel({
    this.rrhId,
    this.rrhRequestNumber,
    this.rotCode,
    this.rotName,
    this.cusCode,
    this.cusName,
    this.date,
    this.status,
  });

  factory MerchReturnRequestModel.fromJson(Map<String, dynamic> json) {
    return _$MerchReturnRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MerchReturnRequestModelToJson(this);
}
