import 'package:json_annotation/json_annotation.dart';

part 'void_transaction_reject_model.g.dart';

@JsonSerializable()
class VoidTransactionRejectModel {
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'Res')
  String? res;

  VoidTransactionRejectModel({this.status, this.res});

  factory VoidTransactionRejectModel.fromJson(Map<String, dynamic> json) {
    return _$VoidTransactionRejectModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VoidTransactionRejectModelToJson(this);
}
