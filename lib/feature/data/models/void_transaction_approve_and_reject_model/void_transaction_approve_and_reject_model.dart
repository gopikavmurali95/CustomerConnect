import 'package:json_annotation/json_annotation.dart';

part 'void_transaction_approve_and_reject_model.g.dart';

@JsonSerializable()
class VoidTransactionApproveAndRejectModel {
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'Res')
  String? res;

  VoidTransactionApproveAndRejectModel({this.status, this.res});

  factory VoidTransactionApproveAndRejectModel.fromJson(
      Map<String, dynamic> json) {
    return _$VoidTransactionApproveAndRejectModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$VoidTransactionApproveAndRejectModelToJson(this);
  }
}
