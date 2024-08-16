import 'package:json_annotation/json_annotation.dart';

part 'void_transaction_header_model.g.dart';

@JsonSerializable()
class VoidTransactionHeaderModel {
  @JsonKey(name: 'vta_ID')
  String? vtaId;
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'trn_Number')
  String? trnNumber;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'CreatedDate')
  String? createdDate;
  @JsonKey(name: 'udpID')
  String? udpID;
  @JsonKey(name: 'Status ')
  String? status;
  @JsonKey(name: 'rot_ArName')
  String? rotArName;
  @JsonKey(name: 'Artype')
  String? artype;

  VoidTransactionHeaderModel({
    this.vtaId,
    this.type,
    this.trnNumber,
    this.rotCode,
    this.rotName,
    this.cusCode,
    this.cusName,
    this.createdDate,
    this.status,
    this.rotArName,
    this.artype,
  });

  factory VoidTransactionHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$VoidTransactionHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VoidTransactionHeaderModelToJson(this);
}
