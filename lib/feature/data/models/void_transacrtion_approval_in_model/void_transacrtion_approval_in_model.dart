import 'package:customer_connect/feature/data/models/void_transaction_json_model/void_transaction_json_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'void_transacrtion_approval_in_model.g.dart';

@JsonSerializable()
class VoidTransacrtionApprovalInModel {
  @JsonKey(name: 'JSONString')
  List<VoidTransactionJsonModel>? jsonString;

  VoidTransacrtionApprovalInModel({this.jsonString});

  factory VoidTransacrtionApprovalInModel.fromJson(Map<String, dynamic> json) {
    return _$VoidTransacrtionApprovalInModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$VoidTransacrtionApprovalInModelToJson(this);
  }
}
