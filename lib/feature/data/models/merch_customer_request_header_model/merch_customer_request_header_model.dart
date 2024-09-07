import 'package:json_annotation/json_annotation.dart';

part 'merch_customer_request_header_model.g.dart';

@JsonSerializable()
class MerchCustomerRequestHeaderModel {
  @JsonKey(name: 'req_ID')
  String? reqId;
  @JsonKey(name: 'req_Code')
  String? reqCode;
  @JsonKey(name: 'req_TransID')
  String? reqTransId;
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

  MerchCustomerRequestHeaderModel({
    this.reqId,
    this.reqCode,
    this.reqTransId,
    this.rotCode,
    this.rotName,
    this.cusCode,
    this.cusName,
    this.date,
    this.status,
  });

  factory MerchCustomerRequestHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$MerchCustomerRequestHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MerchCustomerRequestHeaderModelToJson(this);
  }
}
