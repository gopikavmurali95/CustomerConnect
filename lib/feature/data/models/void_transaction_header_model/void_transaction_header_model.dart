import 'package:json_annotation/json_annotation.dart';

part 'void_transaction_header_model.g.dart';

@JsonSerializable()
class VoidTransactionHeaderModel {
  @JsonKey(name: 'vta_ID')
  String? vtaId;
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

  VoidTransactionHeaderModel({
    this.vtaId,
    this.type,
    this.trnNumber,
    this.rotCode,
    this.rotName,
    this.cusCode,
    this.cusName,
    this.createdDate,
  });

  factory VoidTransactionHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$VoidTransactionHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VoidTransactionHeaderModelToJson(this);
}
