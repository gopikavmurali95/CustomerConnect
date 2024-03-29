import 'package:json_annotation/json_annotation.dart';

part 'cus_ins_ar_header_in_model.g.dart';

@JsonSerializable()
class CusInsArHeaderInModel {
  @JsonKey(name: 'UserID')
  String? userId;
  @JsonKey(name: 'From_Date')
  String? fromDate;
  @JsonKey(name: 'To_Date')
  String? toDate;
  @JsonKey(name: 'Area')
  String? area;
  @JsonKey(name: 'SubArea')
  String? subArea;
  @JsonKey(name: 'Route')
  String? route;
  @JsonKey(name: 'cus_ID')
  String? cusId;

  CusInsArHeaderInModel({
    this.userId,
    this.fromDate,
    this.toDate,
    this.area,
    this.subArea,
    this.route,
    this.cusId,
  });

  factory CusInsArHeaderInModel.fromJson(Map<String, dynamic> json) {
    return _$CusInsArHeaderInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CusInsArHeaderInModelToJson(this);
}
