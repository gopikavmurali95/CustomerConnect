import 'dart:convert';

MaterialReqrejectionOutModel materialReqrejectionOutModelFromJson(String str) =>
    MaterialReqrejectionOutModel.fromJson(json.decode(str));
String materialReqrejectionOutModelToJson(MaterialReqrejectionOutModel data) =>
    json.encode(data.toJson());

class MaterialReqrejectionOutModel {
  MaterialReqrejectionOutModel({
    this.status,
  });

  MaterialReqrejectionOutModel.fromJson(dynamic json) {
    status = json['Status'];
  }
  String? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Status'] = status;
    return map;
  }
}
