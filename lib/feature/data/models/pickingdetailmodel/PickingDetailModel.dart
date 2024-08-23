import 'dart:convert';

PickingDetailModel pickingDetailModelFromJson(String str) =>
    PickingDetailModel.fromJson(json.decode(str));
String pickingDetailModelToJson(PickingDetailModel data) =>
    json.encode(data.toJson());

class PickingDetailModel {
  PickingDetailModel(
      {this.pkdID,
      this.pkdPkhID,
      this.prdID,
      this.prdCode,
      this.prdName,
      this.prdNameArabic,
      this.prdDescription,
      this.pkdHigherUom,
      this.pkdLowerUom,
      this.pkdPickedHQty,
      this.pkdPickedLQty,
      this.pkdRequestedHQty,
      this.pkdRequestedLQty,
      this.pkdTransType,
      this.prdArDescr,
      this.prdArname});

  PickingDetailModel.fromJson(dynamic json) {
    pkdID = json['pkd_ID'];
    pkdPkhID = json['pkd_pkh_ID'];
    prdID = json['prd_ID'];
    prdCode = json['prd_Code'];
    prdName = json['prd_Name'];
    prdNameArabic = json['prd_NameArabic'];
    prdDescription = json['prd_Description'];
    pkdHigherUom = json['pkd_Higher_uom'];
    pkdLowerUom = json['pkd_Lower_uom'];
    pkdPickedHQty = json['pkd_PickedHQty'];
    pkdPickedLQty = json['pkd_PickedLQty'];
    pkdRequestedHQty = json['pkd_RequestedHQty'];
    pkdRequestedLQty = json['pkd_RequestedLQty'];
    pkdTransType = json['pkd_TransType'];
    prdArname = json['prd_NameArabic'];
    prdArDescr = json['prd_ArabicDescription'];
  }
  String? pkdID;
  String? pkdPkhID;
  String? prdID;
  String? prdCode;
  String? prdName;
  String? prdNameArabic;
  String? prdDescription;
  String? pkdHigherUom;
  String? pkdLowerUom;
  String? pkdPickedHQty;
  String? pkdPickedLQty;
  String? pkdRequestedHQty;
  String? pkdRequestedLQty;
  String? pkdTransType;
  String? prdArname;
  String? prdArDescr;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pkd_ID'] = pkdID;
    map['pkd_pkh_ID'] = pkdPkhID;
    map['prd_ID'] = prdID;
    map['prd_Code'] = prdCode;
    map['prd_Name'] = prdName;
    map['prd_NameArabic'] = prdNameArabic;
    map['prd_Description'] = prdDescription;
    map['pkd_Higher_uom'] = pkdHigherUom;
    map['pkd_Lower_uom'] = pkdLowerUom;
    map['pkd_PickedHQty'] = pkdPickedHQty;
    map['pkd_PickedLQty'] = pkdPickedLQty;
    map['pkd_RequestedHQty'] = pkdRequestedHQty;
    map['pkd_RequestedLQty'] = pkdRequestedLQty;
    map['pkd_TransType'] = pkdTransType;
    map['prd_ArabicDescription'] = pkdRequestedLQty;
    map['prd_NameArabic'] = pkdTransType;
    return map;
  }
}
