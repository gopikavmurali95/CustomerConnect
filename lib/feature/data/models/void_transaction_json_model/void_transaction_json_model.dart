import 'package:json_annotation/json_annotation.dart';

part 'void_transaction_json_model.g.dart';

@JsonSerializable()
class VoidTransactionJsonModel {
  @JsonKey(name: 'vta_ID')
  String? vtaId;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'trn_Number')
  String? trnNumber;
  @JsonKey(name: 'udpID')
  String? udpId;
  @JsonKey(name: 'userID')
  String? userId;

  VoidTransactionJsonModel({
    this.vtaId,
    this.status,
    this.type,
    this.trnNumber,
    this.udpId,
    this.userId,
  });

  factory VoidTransactionJsonModel.fromJson(Map<String, dynamic> json) {
    return _$VoidTransactionJsonModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VoidTransactionJsonModelToJson(this);
}
