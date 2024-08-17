import 'dart:convert';

LoadRequestApprovalOutModel loadRequestApprovalOutModelFromJson(String str) =>
    LoadRequestApprovalOutModel.fromJson(json.decode(str));
String loadRequestApprovalOutModelToJson(LoadRequestApprovalOutModel data) =>
    json.encode(data.toJson());

class LoadRequestApprovalOutModel {
  LoadRequestApprovalOutModel({
    this.status,
    this.arstatus,
  });

  LoadRequestApprovalOutModel.fromJson(dynamic json) {
    status = json['Status'];
    arstatus = json['ArStatus'];
  }
  String? status;
  String? arstatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Status'] = status;
    map['ArStatus'] = arstatus;
    return map;
  }
}
