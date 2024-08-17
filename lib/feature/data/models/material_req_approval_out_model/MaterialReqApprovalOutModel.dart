import 'dart:convert';

MaterialReqApprovalOutModel materialReqApprovalOutModelFromJson(String str) =>
    MaterialReqApprovalOutModel.fromJson(json.decode(str));
String materialReqApprovalOutModelToJson(MaterialReqApprovalOutModel data) =>
    json.encode(data.toJson());

class MaterialReqApprovalOutModel {
  MaterialReqApprovalOutModel({
    this.status,
    this.arstatus,
  });

  MaterialReqApprovalOutModel.fromJson(dynamic json) {
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
