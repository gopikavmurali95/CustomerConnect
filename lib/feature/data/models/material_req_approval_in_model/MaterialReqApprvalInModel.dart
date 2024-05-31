import 'dart:convert';

import 'package:customer_connect/feature/data/models/matrial_apr_req_prd_model/matrial_apr_req_prd_model.dart';

MaterialReqApprovalInModel materialReqApprvalInModelFromJson(String str) =>
    MaterialReqApprovalInModel.fromJson(json.decode(str));
String materialReqApprvalInModelToJson(MaterialReqApprovalInModel data) =>
    json.encode(data.toJson());

class MaterialReqApprovalInModel {
  MaterialReqApprovalInModel({
    this.userId,
    this.reqID,
    this.mode,
    this.warehouse,
    this.products,
  });

  MaterialReqApprovalInModel.fromJson(dynamic json) {
    userId = json['UserId'];
    reqID = json['ReqID'];
    mode = json['Mode'];
    warehouse = json['Warehouse'];
  }

  String? userId;
  String? reqID;
  String? mode;
  String? warehouse;
  List<MatrialAprReqPrdModel?>? products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};

    map['UserId'] = userId;
    map['ReqID'] = reqID;
    map['Mode'] = mode;
    map['Warehouse'] = warehouse;
    return map;
  }
}
