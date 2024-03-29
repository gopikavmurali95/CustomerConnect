import 'package:json_annotation/json_annotation.dart';

part 'cu_ins_ar_total_model.g.dart';

@JsonSerializable()
class CuInsArTotalModel {
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

  CuInsArTotalModel({
    this.userId,
    this.fromDate,
    this.toDate,
    this.area,
    this.subArea,
    this.route,
    this.cusId,
  });

  factory CuInsArTotalModel.fromJson(Map<String, dynamic> json) {
    return _$CuInsArTotalModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CuInsArTotalModelToJson(this);
}
