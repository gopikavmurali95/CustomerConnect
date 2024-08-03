import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'settelemet_approval_reject.g.dart';

@JsonSerializable()
class SettelemetApprovalReject {
  String? status;
  int? code;
  String? message;
  Data? data;

  SettelemetApprovalReject({
    this.status,
    this.code,
    this.message,
    this.data,
  });

  factory SettelemetApprovalReject.fromJson(Map<String, dynamic> json) {
    return _$SettelemetApprovalRejectFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SettelemetApprovalRejectToJson(this);
}
