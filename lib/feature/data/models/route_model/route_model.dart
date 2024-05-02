import 'package:json_annotation/json_annotation.dart';

part 'route_model.g.dart';

@JsonSerializable()
class RouteModel {
  @JsonKey(name: 'rot_ID')
  String? rotId;
  @JsonKey(name: 'rot_Name')
  String? rotName;

  RouteModel({this.rotId, this.rotName});

  factory RouteModel.fromJson(Map<String, dynamic> json) {
    return _$RouteModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RouteModelToJson(this);
}
