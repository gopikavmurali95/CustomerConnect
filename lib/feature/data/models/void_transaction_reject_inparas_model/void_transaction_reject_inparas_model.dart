import 'package:customer_connect/feature/data/models/void_transaction_reject_json_model/void_transaction_reject_json_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'void_transaction_reject_inparas_model.g.dart';

@JsonSerializable()
class VoidTransactionRejectInparasModel {
  @JsonKey(name: 'JSONString')
  List<VoidTransactionRejectJsonModel>? jsonString;

  VoidTransactionRejectInparasModel({
    this.jsonString,
  });

  factory VoidTransactionRejectInparasModel.fromJson(
      Map<String, dynamic> json) {
    return _$VoidTransactionRejectInparasModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$VoidTransactionRejectInparasModelToJson(this);
  }
}
