import 'package:json_annotation/json_annotation.dart';

part 'customer_insight_group_model.g.dart';

@JsonSerializable()
class CustomerInsightGroupModel {
  String? prdCode;
  String? prdName;

  CustomerInsightGroupModel({this.prdCode, this.prdName});

  factory CustomerInsightGroupModel.fromJson(Map<String, dynamic> json) {
    return _$CustomerInsightGroupModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerInsightGroupModelToJson(this);
}
