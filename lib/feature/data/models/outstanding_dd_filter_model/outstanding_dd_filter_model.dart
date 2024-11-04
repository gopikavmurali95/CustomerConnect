import 'package:json_annotation/json_annotation.dart';

part 'outstanding_dd_filter_model.g.dart';

@JsonSerializable()
class OutstandingDdFilterModel {
  @JsonKey(name: 'statusName')
  String? statusName;
  @JsonKey(name: 'Status_Value')
  String? statusValue;

  OutstandingDdFilterModel({this.statusName, this.statusValue});

  factory OutstandingDdFilterModel.fromJson(Map<String, dynamic> json) {
    return _$OutstandingDdFilterModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OutstandingDdFilterModelToJson(this);
}
