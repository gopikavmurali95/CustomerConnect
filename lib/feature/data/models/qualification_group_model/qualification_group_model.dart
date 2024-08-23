import 'package:json_annotation/json_annotation.dart';

part 'qualification_group_model.g.dart';

@JsonSerializable()
class QualificationGroupModel {
  String? prdCode;
  String? prdName;
  @JsonKey(name:'ArprdName')
  String? arprdName;

  QualificationGroupModel({this.prdCode, this.prdName});

  factory QualificationGroupModel.fromJson(Map<String, dynamic> json) {
    return _$QualificationGroupModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$QualificationGroupModelToJson(this);
}
