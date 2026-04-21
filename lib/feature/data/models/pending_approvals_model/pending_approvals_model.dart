import 'package:json_annotation/json_annotation.dart';

part 'pending_approvals_model.g.dart';

@JsonSerializable()
class PendingApprovalsModel {
  @JsonKey(name: 'ApprovalType')
  String? approvalType;
  @JsonKey(name: 'Customer')
  String? customer;
  @JsonKey(name: 'ApprovalID')
  String? approvalId;
  @JsonKey(name: 'HeaderID')
  String? headerId;
  @JsonKey(name: 'CreatedDate')
  String? createdDate;

  PendingApprovalsModel({
    this.approvalType,
    this.customer,
    this.approvalId,
    this.headerId,
    this.createdDate,
  });

  factory PendingApprovalsModel.fromJson(Map<String, dynamic> json) {
    return _$PendingApprovalsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PendingApprovalsModelToJson(this);
}
