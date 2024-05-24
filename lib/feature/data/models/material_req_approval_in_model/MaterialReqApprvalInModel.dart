import 'dart:convert';

MaterialReqApprovalInModel materialReqApprvalInModelFromJson(String str) =>
    MaterialReqApprovalInModel.fromJson(json.decode(str));
String materialReqApprvalInModelToJson(MaterialReqApprovalInModel data) =>
    json.encode(data.toJson());

class MaterialReqApprovalInModel {
  MaterialReqApprovalInModel({
    this.mrdID,
    this.prdID,
    this.reqHUOM,
    this.reqLUOM,
    this.requestedHQty,
    this.requestedLQty,
    this.hqty,
    this.lqty,
    this.userId,
    this.reqID,
    this.mode,
    this.warehouse,
  });

  MaterialReqApprovalInModel.fromJson(dynamic json) {
    mrdID = json['mrd_ID'];
    prdID = json['prd_ID'];
    reqHUOM = json['ReqHUOM'];
    reqLUOM = json['ReqLUOM'];
    requestedHQty = json['RequestedHQty'];
    requestedLQty = json['RequestedLQty'];
    hqty = json['HQTY'];
    lqty = json['LQTY'];
    userId = json['UserId'];
    reqID = json['ReqID'];
    mode = json['Mode'];
    warehouse = json['Warehouse'];
  }
  String? mrdID;
  String? prdID;
  String? reqHUOM;
  String? reqLUOM;
  String? requestedHQty;
  String? requestedLQty;
  String? hqty;
  String? lqty;
  String? userId;
  String? reqID;
  String? mode;
  String? warehouse;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mrd_ID'] = mrdID;
    map['prd_ID'] = prdID;
    map['ReqHUOM'] = reqHUOM;
    map['ReqLUOM'] = reqLUOM;
    map['RequestedHQty'] = requestedHQty;
    map['RequestedLQty'] = requestedLQty;
    map['HQTY'] = hqty;
    map['LQTY'] = lqty;
    map['UserId'] = userId;
    map['ReqID'] = reqID;
    map['Mode'] = mode;
    map['Warehouse'] = warehouse;
    return map;
  }
}
