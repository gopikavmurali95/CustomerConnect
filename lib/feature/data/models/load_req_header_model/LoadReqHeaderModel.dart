import 'dart:convert';

LoadReqHeaderModel loadReqHeaderModelFromJson(String str) =>
    LoadReqHeaderModel.fromJson(json.decode(str));
String loadReqHeaderModelToJson(LoadReqHeaderModel data) =>
    json.encode(data.toJson());

class LoadReqHeaderModel {
  LoadReqHeaderModel(
      {this.lrhID,
      this.lrhNumber,
      this.lrhUsrID,
      this.usrName,
      this.usrArabicName,
      this.createdDate,
      this.lrhLoadReqDate,
      this.lrhUdpID,
      this.status,
      this.rotName,
      this.rotCode,
      this.rotArabicName,
      this.lrhRemarks,
      this.stagingIntegStatus,
      this.stagingIntegRemarks,
      this.stagingIntegTime,
      this.rotID,
      this.userID});

  LoadReqHeaderModel.fromJson(dynamic json) {
    lrhID = json['lrh_ID'];
    lrhNumber = json['lrh_Number'];
    lrhUsrID = json['lrh_usr_ID'];
    usrName = json['usr_Name'];
    usrArabicName = json['usr_ArabicName'];
    createdDate = json['CreatedDate'];
    lrhLoadReqDate = json['lrh_LoadReqDate'];
    lrhUdpID = json['lrh_udp_ID'];
    status = json['Status'];
    rotName = json['rot_Name'];
    rotCode = json['rot_Code'];
    rotArabicName = json['rot_ArabicName'];
    lrhRemarks = json['lrh_Remarks'];
    stagingIntegStatus = json['StagingIntegStatus'];
    stagingIntegRemarks = json['StagingIntegRemarks'];
    stagingIntegTime = json['StagingIntegTime'];
    stagingIntegTime = json['rotID'];
    stagingIntegTime = json['UserID'];
  }
  String? lrhID;
  String? lrhNumber;
  String? lrhUsrID;
  String? usrName;
  String? usrArabicName;
  String? createdDate;
  String? lrhLoadReqDate;
  String? lrhUdpID;
  String? status;
  String? rotName;
  String? rotCode;
  String? rotArabicName;
  String? lrhRemarks;
  String? stagingIntegStatus;
  String? stagingIntegRemarks;
  String? stagingIntegTime;
  String? userID;
  String? rotID;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lrh_ID'] = lrhID;
    map['lrh_Number'] = lrhNumber;
    map['lrh_usr_ID'] = lrhUsrID;
    map['usr_Name'] = usrName;
    map['usr_ArabicName'] = usrArabicName;
    map['CreatedDate'] = createdDate;
    map['lrh_LoadReqDate'] = lrhLoadReqDate;
    map['lrh_udp_ID'] = lrhUdpID;
    map['Status'] = status;
    map['rot_Name'] = rotName;
    map['rot_Code'] = rotCode;
    map['rot_ArabicName'] = rotArabicName;
    map['lrh_Remarks'] = lrhRemarks;
    map['StagingIntegStatus'] = stagingIntegStatus;
    map['StagingIntegRemarks'] = stagingIntegRemarks;
    map['StagingIntegTime'] = stagingIntegTime;
    map['rotID'] = stagingIntegTime;
    map['UserID'] = stagingIntegTime;
    return map;
  }
}
