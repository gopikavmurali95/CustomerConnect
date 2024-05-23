import 'dart:convert';

LoadRequestApprovalOutModel loadRequestApprovalOutModelFromJson(String str) => LoadRequestApprovalOutModel.fromJson(json.decode(str));
String loadRequestApprovalOutModelToJson(LoadRequestApprovalOutModel data) => json.encode(data.toJson());
class LoadRequestApprovalOutModel {
  LoadRequestApprovalOutModel({
      this.status,});

  LoadRequestApprovalOutModel.fromJson(dynamic json) {
    status = json['Status'];
  }
  String? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Status'] = status;
    return map;
  }

}