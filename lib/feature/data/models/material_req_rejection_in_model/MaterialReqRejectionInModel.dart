import 'dart:convert';

MaterialReqRejectionInModel materialReqRejectionInModelFromJson(String str) =>
    MaterialReqRejectionInModel.fromJson(json.decode(str));
String materialReqRejectionInModelToJson(MaterialReqRejectionInModel data) =>
    json.encode(data.toJson());

class MaterialReqRejectionInModel {
  MaterialReqRejectionInModel({
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
    this.remark,
  });

  MaterialReqRejectionInModel.fromJson(dynamic json) {
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
    remark = json['Remark'];
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
  String? remark;

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
    map['Remark'] = remark;
    return map;
  }
}
