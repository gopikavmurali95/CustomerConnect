import 'package:json_annotation/json_annotation.dart';

part 'cus_out_standing_in_model.g.dart';

@JsonSerializable()
class CusOutStandingInModel {
  @JsonKey(name: 'UserID')
  String? userId;
  @JsonKey(name: 'FromDate')
  String? fromDate;
  @JsonKey(name: 'ToDate')
  String? toDate;
  @JsonKey(name: 'Area')
  String? area;
  @JsonKey(name: 'SubArea')
  String? subArea;
  @JsonKey(name: 'Route')
  String? route;
  @JsonKey(name: 'cus_ID')
  String? cusId;

  CusOutStandingInModel({
    this.userId,
    this.fromDate,
    this.toDate,
    this.area,
    this.subArea,
    this.route,
    this.cusId,
  });

  factory CusOutStandingInModel.fromJson(Map<String, dynamic> json) {
    return _$CusOutStandingInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CusOutStandingInModelToJson(this);
}
