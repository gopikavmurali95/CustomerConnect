import 'dart:convert';

MaterialReqHeaderModel materialReqHeaderModelFromJson(String str) =>
    MaterialReqHeaderModel.fromJson(json.decode(str));
String materialReqHeaderModelToJson(MaterialReqHeaderModel data) =>
    json.encode(data.toJson());

class MaterialReqHeaderModel {
  MaterialReqHeaderModel({
    this.mrhID,
    this.mrhNumber,
    this.mrhStrID,
    this.strName,
    this.mrhWarID,
    this.warName,
    this.mrhExpDate,
    this.createdDate,
    this.mrhRemarks,
    this.mrhStatus,
    this.status,
    this.mrhIsReOrder,
    this.mrhIntegrationStatus,
    this.rotID,
    this.userID,
    this.strArName,
    this.warArName,
  });

  MaterialReqHeaderModel.fromJson(dynamic json) {
    mrhID = json['mrh_ID'];
    mrhNumber = json['mrh_Number'];
    mrhStrID = json['mrh_str_ID'];
    strName = json['str_Name'];
    mrhWarID = json['mrh_war_ID'];
    warName = json['war_Name'];
    mrhExpDate = json['mrh_ExpDate'];
    createdDate = json['CreatedDate'];
    mrhRemarks = json['mrh_Remarks'];
    mrhStatus = json['mrh_Status'];
    status = json['Status'];
    mrhIsReOrder = json['mrh_IsReOrder'];
    mrhIntegrationStatus = json['mrh_IntegrationStatus'];
    mrhIntegrationStatus = json['rotID'];
    userID = json['UserID'];
    strArName = json['str_ArName'];
    warArName = json['war_ArName'];
  }
  String? mrhID;
  String? mrhNumber;
  String? mrhStrID;
  String? strName;
  String? mrhWarID;
  String? warName;
  String? mrhExpDate;
  String? createdDate;
  String? mrhRemarks;
  String? mrhStatus;
  String? status;
  String? mrhIsReOrder;
  String? mrhIntegrationStatus;
  String? userID;
  String? rotID;
  String? strArName;
  String? warArName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mrh_ID'] = mrhID;
    map['mrh_Number'] = mrhNumber;
    map['mrh_str_ID'] = mrhStrID;
    map['str_Name'] = strName;
    map['mrh_war_ID'] = mrhWarID;
    map['war_Name'] = warName;
    map['mrh_ExpDate'] = mrhExpDate;
    map['CreatedDate'] = createdDate;
    map['mrh_Remarks'] = mrhRemarks;
    map['mrh_Status'] = mrhStatus;
    map['Status'] = status;
    map['mrh_IsReOrder'] = mrhIsReOrder;
    map['mrh_IntegrationStatus'] = mrhIntegrationStatus;
    map['rotID'] = mrhIntegrationStatus;
    map['UserID'] = userID;
    map['str_ArName'] = strArName;
    map['war_ArName'] = warArName;
    return map;
  }
}
