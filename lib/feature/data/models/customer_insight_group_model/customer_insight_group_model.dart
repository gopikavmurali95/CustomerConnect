import 'package:json_annotation/json_annotation.dart';

part 'customer_insight_group_model.g.dart';

@JsonSerializable()
class CustomerInsightGroupModel {
  String? prdCode;
  String? prdName;
  @JsonKey(name: 'prd_ArName')
  String? prdArName;

  CustomerInsightGroupModel({this.prdCode, this.prdName, this.prdArName});

  factory CustomerInsightGroupModel.fromJson(Map<String, dynamic> json) {
    return _$CustomerInsightGroupModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerInsightGroupModelToJson(this);
}
