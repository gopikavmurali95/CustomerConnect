import 'dart:convert';

MaterialReqDetailModel materialReqDetailModelFromJson(String str) =>
    MaterialReqDetailModel.fromJson(json.decode(str));
String materialReqDetailModelToJson(MaterialReqDetailModel data) =>
    json.encode(data.toJson());

class MaterialReqDetailModel {
  MaterialReqDetailModel({
    this.mrdID,
    this.mrdMrhID,
    this.prdID,
    this.prdCode,
    this.prdName,
    this.reqHUOM,
    this.reqLUOM,
    this.requestedHQty,
    this.requestedLQty,
    this.adjustedHQty,
    this.adjustedLQty,
  });

  MaterialReqDetailModel.fromJson(dynamic json) {
    mrdID = json['mrd_ID'];
    mrdMrhID = json['mrd_mrh_ID'];
    prdID = json['prd_ID'];
    prdCode = json['prd_Code'];
    prdName = json['prd_Name'];
    reqHUOM = json['ReqHUOM'];
    reqLUOM = json['ReqLUOM'];
    requestedHQty = json['RequestedHQty'];
    requestedLQty = json['RequestedLQty'];
    adjustedHQty = json['AdjustedHQty'];
    adjustedLQty = json['AdjustedLQty'];
  }
  String? mrdID;
  String? mrdMrhID;
  String? prdID;
  String? prdCode;
  String? prdName;
  String? reqHUOM;
  String? reqLUOM;
  String? requestedHQty;
  String? requestedLQty;
  String? adjustedHQty;
  String? adjustedLQty;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mrd_ID'] = mrdID;
    map['mrd_mrh_ID'] = mrdMrhID;
    map['prd_ID'] = prdID;
    map['prd_Code'] = prdCode;
    map['prd_Name'] = prdName;
    map['ReqHUOM'] = reqHUOM;
    map['ReqLUOM'] = reqLUOM;
    map['RequestedHQty'] = requestedHQty;
    map['RequestedLQty'] = requestedLQty;
    map['AdjustedHQty'] = adjustedHQty;
    map['AdjustedLQty'] = adjustedLQty;
    return map;
  }
}
