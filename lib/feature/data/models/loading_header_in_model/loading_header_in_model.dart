import 'package:json_annotation/json_annotation.dart';

part 'loading_header_in_model.g.dart';

@JsonSerializable()
class LoadingHeaderInModel {
  @JsonKey(name: 'UserID')
  String? userId;
  @JsonKey(name: 'FromDate')
  String? fromDate;
  @JsonKey(name: 'ToDate')
  String? toDate;
  @JsonKey(name: 'Mode')
  String? mode;
  @JsonKey(name: 'Route')
  String? route;
  @JsonKey(name: 'Area')
  String? area;
  @JsonKey(name: 'SubArea')
  String? subArea;

  LoadingHeaderInModel({
    this.userId,
    this.fromDate,
    this.toDate,
    this.mode,
    this.route,
    this.area,
    this.subArea,
  });

  factory LoadingHeaderInModel.fromJson(Map<String, dynamic> json) {
    return _$LoadingHeaderInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoadingHeaderInModelToJson(this);
}
