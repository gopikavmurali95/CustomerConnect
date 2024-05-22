import 'dart:convert';

LoadReqInApprovalModel loadReqInApprovalModelFromJson(String str) => LoadReqInApprovalModel.fromJson(json.decode(str));
String loadReqInApprovalModelToJson(LoadReqInApprovalModel data) => json.encode(data.toJson());
class LoadReqInApprovalModel {
  LoadReqInApprovalModel({
      this.lrdPrdID, 
      this.lrdHQty, 
      this.lrdLQty, 
      this.lrdLUOM, 
      this.lrdHUOM, 
      this.lrdTotalQty, 
      this.txtApvHQty, 
      this.txtApvLQty, 
      this.lrdID, 
      this.userId, 
      this.reqID, 
      this.rotID,});

  LoadReqInApprovalModel.fromJson(dynamic json) {
    lrdPrdID = json['lrd_prd_ID'];
    lrdHQty = json['lrd_HQty'];
    lrdLQty = json['lrd_LQty'];
    lrdLUOM = json['lrd_LUOM'];
    lrdHUOM = json['lrd_HUOM'];
    lrdTotalQty = json['lrd_totalQty'];
    txtApvHQty = json['txt_apv_HQty'];
    txtApvLQty = json['txt_apv_LQty'];
    lrdID = json['lrd_ID'];
    userId = json['UserId'];
    reqID = json['ReqID'];
    rotID = json['RotID'];
  }
  String? lrdPrdID;
  String? lrdHQty;
  String? lrdLQty;
  String? lrdLUOM;
  String? lrdHUOM;
  String? lrdTotalQty;
  String? txtApvHQty;
  String? txtApvLQty;
  String? lrdID;
  String? userId;
  String? reqID;
  String? rotID;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lrd_prd_ID'] = lrdPrdID;
    map['lrd_HQty'] = lrdHQty;
    map['lrd_LQty'] = lrdLQty;
    map['lrd_LUOM'] = lrdLUOM;
    map['lrd_HUOM'] = lrdHUOM;
    map['lrd_totalQty'] = lrdTotalQty;
    map['txt_apv_HQty'] = txtApvHQty;
    map['txt_apv_LQty'] = txtApvLQty;
    map['lrd_ID'] = lrdID;
    map['UserId'] = userId;
    map['ReqID'] = reqID;
    map['RotID'] = rotID;
    return map;
  }

}