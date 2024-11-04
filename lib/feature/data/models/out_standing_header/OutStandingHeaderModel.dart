import 'dart:convert';

OutStandingHeaderModel outStandingHeaderModelFromJson(String str) =>
    OutStandingHeaderModel.fromJson(json.decode(str));
String outStandingHeaderModelToJson(OutStandingHeaderModel data) =>
    json.encode(data.toJson());

class OutStandingHeaderModel {
  OutStandingHeaderModel(
      {this.userID,
      this.fromDate,
      this.toDate,
      this.area,
      this.subArea,
      this.route,
      this.customer,
      this.outlet,
      this.pageNum,
      this.searchQuery,
      this.statusValue});

  OutStandingHeaderModel.fromJson(dynamic json) {
    userID = json['UserID'];
    fromDate = json['FromDate'];
    toDate = json['ToDate'];
    area = json['Area'];
    subArea = json['SubArea'];
    route = json['Route'];
    customer = json['Customer'];
    outlet = json['Outlet'];
    pageNum = json['Pagenum'];
    searchQuery = json['SearchString'];
    statusValue = json['Status_Value'];
  }
  String? userID;
  String? fromDate;
  String? toDate;
  String? area;
  String? subArea;
  String? route;
  String? customer;
  String? outlet;
  String? pageNum;
  String? searchQuery;
  String? statusValue;
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['UserID'] = userID;
    map['FromDate'] = fromDate;
    map['ToDate'] = toDate;
    map['Area'] = area;
    map['SubArea'] = subArea;
    map['Route'] = route;
    map['Customer'] = customer;
    map['Outlet'] = outlet;
    map['Pagenum'] = pageNum;
    map['SearchString'] = searchQuery;
    map['Status_Value'] = statusValue;

    return map;
  }
}
