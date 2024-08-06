import 'package:json_annotation/json_annotation.dart';

part 'get_cus_actcount_model.g.dart';

@JsonSerializable()
class GetCusActcountModel {
  @JsonKey(name: 'Total')
  String? total;
  @JsonKey(name: 'ActionTaken')
  String? actionTaken;

  GetCusActcountModel({this.total, this.actionTaken});

  factory GetCusActcountModel.fromJson(Map<String, dynamic> json) {
    return _$GetCusActcountModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetCusActcountModelToJson(this);
}
