import 'package:json_annotation/json_annotation.dart';

part 'sheduled_return_header_model.g.dart';

@JsonSerializable()
class SheduledReturnHeaderModel {
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'rrh_inv_ID')
  String? rrhInvId;
  @JsonKey(name: 'rrh_RequestNumber')
  String? rrhRequestNumber;
  @JsonKey(name: 'usr_Name')
  String? usrName;
  @JsonKey(name: 'rrh_ID')
  String? rrhId;
  @JsonKey(name: 'rrh_Type')
  String? rrhType;
  @JsonKey(name: 'rrh_ReturnType')
  String? rrhReturnType;
  @JsonKey(name: 'CreatedDate')
  String? createdDate;
  @JsonKey(name: 'Status')
  String? status;

  SheduledReturnHeaderModel({
    this.cusCode,
    this.cusName,
    this.rrhInvId,
    this.rrhRequestNumber,
    this.usrName,
    this.rrhId,
    this.rrhType,
    this.rrhReturnType,
    this.createdDate,
    this.status,
  });

  factory SheduledReturnHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$SheduledReturnHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SheduledReturnHeaderModelToJson(this);
}
