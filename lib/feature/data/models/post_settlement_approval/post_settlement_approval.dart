import 'package:json_annotation/json_annotation.dart';

import 'res.dart';

part 'post_settlement_approval.g.dart';

@JsonSerializable()
class PostSettlementApproval {
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'Res')
  Res? res;

  PostSettlementApproval({this.status, this.res});

  factory PostSettlementApproval.fromJson(Map<String, dynamic> json) {
    return _$PostSettlementApprovalFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PostSettlementApprovalToJson(this);
}
