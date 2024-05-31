import 'dart:convert';

import 'package:customer_connect/feature/data/models/matrial_apr_req_prd_model/matrial_apr_req_prd_model.dart';

MaterialReqRejectionInModel materialReqRejectionInModelFromJson(String str) =>
    MaterialReqRejectionInModel.fromJson(json.decode(str));
String materialReqRejectionInModelToJson(MaterialReqRejectionInModel data) =>
    json.encode(data.toJson());

class MaterialReqRejectionInModel {
  MaterialReqRejectionInModel(
      {this.userId, this.reqID, this.remark, this.products});

  MaterialReqRejectionInModel.fromJson(dynamic json) {
    userId = json['UserId'];
    reqID = json['ReqID'];
    remark = json['Remark'];
  }

  String? userId;
  String? reqID;
  String? remark;
  List<MatrialAprReqPrdModel?>? products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};

    map['UserId'] = userId;
    map['ReqID'] = reqID;
    map['Remark'] = remark;
    return map;
  }
}
