import 'dart:convert';

PickingOutModel pickingOutModelFromJson(String str) =>
    PickingOutModel.fromJson(json.decode(str));
String pickingOutModelToJson(PickingOutModel data) =>
    json.encode(data.toJson());

class PickingOutModel {
  PickingOutModel({
    this.pickingID,
    this.pickingNumber,
    this.rotID,
    this.rotCode,
    this.rotName,
    this.rsnID,
    this.rsnName,
    this.date,
    this.time,
  });

  PickingOutModel.fromJson(dynamic json) {
    pickingID = json['PickingID'];
    pickingNumber = json['PickingNumber'];
    rotID = json['rot_ID'];
    rotCode = json['rot_Code'];
    rotName = json['rot_Name'];
    rsnID = json['rsn_ID'];
    rsnName = json['rsn_Name'];
    date = json['Date'];
    time = json['Time'];
  }
  String? pickingID;
  String? pickingNumber;
  String? rotID;
  String? rotCode;
  String? rotName;
  String? rsnID;
  String? rsnName;
  String? date;
  String? time;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['PickingID'] = pickingID;
    map['PickingNumber'] = pickingNumber;
    map['rot_ID'] = rotID;
    map['rot_Code'] = rotCode;
    map['rot_Name'] = rotName;
    map['rsn_ID'] = rsnID;
    map['rsn_Name'] = rsnName;
    map['Date'] = date;
    map['Time'] = time;
    return map;
  }
}
