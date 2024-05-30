import 'dart:convert';

LoadReqDetailModel loadReqDetailModelFromJson(String str) =>
    LoadReqDetailModel.fromJson(json.decode(str));
String loadReqDetailModelToJson(LoadReqDetailModel data) =>
    json.encode(data.toJson());

class LoadReqDetailModel {
  LoadReqDetailModel({
    this.lrdID,
    this.lrdPrdID,
    this.prdCode,
    this.prdName,
    this.lrdHQty,
    this.lrdLQty,
    this.prdNameArabic,
    this.lrdLUOM,
    this.lrdHUOM,
    this.lrdTotalQty,
    this.lrdApvHQty,
    this.lrdApvLQty,
    this.lrdApvHUOM,
    this.lrdApvLUOM,
    this.lrdApvTotalQty,
    this.createdDate,
    this.status,
  });

  LoadReqDetailModel.fromJson(dynamic json) {
    lrdID = json['lrd_ID'];
    lrdPrdID = json['lrd_prd_ID'];
    prdCode = json['prd_Code'];
    prdName = json['prd_Name'];
    lrdHQty = json['lrd_HQty'];
    lrdLQty = json['lrd_LQty'];
    prdNameArabic = json['prd_NameArabic'];
    lrdLUOM = json['lrd_LUOM'];
    lrdHUOM = json['lrd_HUOM'];
    lrdTotalQty = json['lrd_totalQty'];
    lrdApvHQty = json['lrd_apv_HQty'];
    lrdApvLQty = json['lrd_apv_LQty'];
    lrdApvHUOM = json['lrd_apv_HUOM'];
    lrdApvLUOM = json['lrd_apv_LUOM'];
    lrdApvTotalQty = json['lrd_apv_totalQty'];
    createdDate = json['CreatedDate'];
    status = json['Status'];
  }
  String? lrdID;
  String? lrdPrdID;
  String? prdCode;
  String? prdName;
  String? lrdHQty;
  String? lrdLQty;
  String? prdNameArabic;
  String? lrdLUOM;
  String? lrdHUOM;
  String? lrdTotalQty;
  String? lrdApvHQty;
  String? lrdApvLQty;
  String? lrdApvHUOM;
  String? lrdApvLUOM;
  String? lrdApvTotalQty;
  String? createdDate;
  String? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lrd_ID'] = lrdID;
    map['lrd_prd_ID'] = lrdPrdID;
    map['prd_Code'] = prdCode;
    map['prd_Name'] = prdName;
    map['lrd_HQty'] = lrdHQty;
    map['lrd_LQty'] = lrdLQty;
    map['prd_NameArabic'] = prdNameArabic;
    map['lrd_LUOM'] = lrdLUOM;
    map['lrd_HUOM'] = lrdHUOM;
    map['lrd_totalQty'] = lrdTotalQty;
    map['lrd_apv_HQty'] = lrdApvHQty;
    map['lrd_apv_LQty'] = lrdApvLQty;
    map['lrd_apv_HUOM'] = lrdApvHUOM;
    map['lrd_apv_LUOM'] = lrdApvLUOM;
    map['lrd_apv_totalQty'] = lrdApvTotalQty;
    map['CreatedDate'] = createdDate;
    map['Status'] = status;
    return map;
  }
}
