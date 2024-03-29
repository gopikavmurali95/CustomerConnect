import 'dart:convert';

PickingInModel pickingInModelFromJson(String str) => PickingInModel.fromJson(json.decode(str));
String pickingInModelToJson(PickingInModel data) => json.encode(data.toJson());
class PickingInModel {
  PickingInModel({
      this.userID, 
      this.mode, 
      this.fromDate, 
      this.toDate, 
      this.area, 
      this.subArea, 
      this.route, 
      this.customer, 
      this.outlet,});

  PickingInModel.fromJson(dynamic json) {
    userID = json['UserID'];
    mode = json['Mode'];
    fromDate = json['FromDate'];
    toDate = json['ToDate'];
    area = json['Area'];
    subArea = json['SubArea'];
    route = json['Route'];
    customer = json['Customer'];
    outlet = json['Outlet'];
  }
  String? userID;
  String? mode;
  String? fromDate;
  String? toDate;
  String? area;
  String? subArea;
  String? route;
  String? customer;
  String? outlet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['UserID'] = userID;
    map['Mode'] = mode;
    map['FromDate'] = fromDate;
    map['ToDate'] = toDate;
    map['Area'] = area;
    map['SubArea'] = subArea;
    map['Route'] = route;
    map['Customer'] = customer;
    map['Outlet'] = outlet;
    return map;
  }

}