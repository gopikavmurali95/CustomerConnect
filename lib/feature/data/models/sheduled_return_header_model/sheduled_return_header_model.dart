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
  @JsonKey(name: 'UserID')
  String? userID;
  @JsonKey(name: 'rotID')
  String? rotID;
  @JsonKey(name: 'Arcus_Name')
  String? arcusName;
  @JsonKey(name: 'Arusr_Name')
  String? arusrName;
  @JsonKey(name: 'Arrrh_ReturnType')
  String? arrrhReturnType;
  @JsonKey(name: 'Arrrh_Type')
  String? arrrhType;
  @JsonKey(name: 'ArStatus')
  String? arStatus;
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
    this.userID,
    this.rotID,
    this.arStatus,
    this.arcusName,
    this.arrrhReturnType,
    this.arrrhType,
    this.arusrName,
  });

  factory SheduledReturnHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$SheduledReturnHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SheduledReturnHeaderModelToJson(this);
}
