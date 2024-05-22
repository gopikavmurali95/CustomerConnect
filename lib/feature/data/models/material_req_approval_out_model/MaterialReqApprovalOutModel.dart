import 'dart:convert';

MaterialReqApprovalOutModel materialReqApprovalOutModelFromJson(String str) => MaterialReqApprovalOutModel.fromJson(json.decode(str));
String materialReqApprovalOutModelToJson(MaterialReqApprovalOutModel data) => json.encode(data.toJson());
class MaterialReqApprovalOutModel {
  MaterialReqApprovalOutModel({
      this.status,});

  MaterialReqApprovalOutModel.fromJson(dynamic json) {
    status = json['Status'];
  }
  String? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Status'] = status;
    return map;
  }

}