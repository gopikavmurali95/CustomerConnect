import 'dart:convert';

ReturnApprovalProductModel returnApprovalProductModelFromJson(String str) => ReturnApprovalProductModel.fromJson(json.decode(str));
String returnApprovalProductModelToJson(ReturnApprovalProductModel data) => json.encode(data.toJson());
class ReturnApprovalProductModel {
  ReturnApprovalProductModel({
      this.radID, 
      this.reason, 
      this.status,});

  ReturnApprovalProductModel.fromJson(dynamic json) {
    radID = json['rad_ID'];
    reason = json['Reason'];
    status = json['Status'];
  }
  String? radID;
  String? reason;
  String? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rad_ID'] = radID;
    map['Reason'] = reason;
    map['Status'] = status;
    return map;
  }

}