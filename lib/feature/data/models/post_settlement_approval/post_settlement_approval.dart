import 'package:json_annotation/json_annotation.dart';

part 'post_settlement_approval.g.dart';

@JsonSerializable()
class PostSettlementApprovalModel {
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'Res')
  String? res;

  PostSettlementApprovalModel({this.status, this.res});

  factory PostSettlementApprovalModel.fromJson(Map<String, dynamic> json) {
    return _$PostSettlementApprovalModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PostSettlementApprovalModelToJson(this);
}
