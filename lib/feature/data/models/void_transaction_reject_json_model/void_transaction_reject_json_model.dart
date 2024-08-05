import 'package:json_annotation/json_annotation.dart';

part 'void_transaction_reject_json_model.g.dart';

@JsonSerializable()
class VoidTransactionRejectJsonModel {
  @JsonKey(name: 'vta_ID')
  String? vtaId;
  @JsonKey(name: 'Status')
  String? status;
  String? type;
  @JsonKey(name: 'trn_Number')
  String? trnNumber;
  @JsonKey(name: 'udpID')
  String? udpId;
  @JsonKey(name: 'userID')
  String? userId;

  VoidTransactionRejectJsonModel({
    this.vtaId,
    this.status,
    this.type,
    this.trnNumber,
    this.udpId,
    this.userId,
  });

  factory VoidTransactionRejectJsonModel.fromJson(Map<String, dynamic> json) {
    return _$VoidTransactionRejectJsonModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$VoidTransactionRejectJsonModelToJson(this);
  }
}
