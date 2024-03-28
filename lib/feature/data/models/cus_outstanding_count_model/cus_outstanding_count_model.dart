import 'package:json_annotation/json_annotation.dart';

part 'cus_outstanding_count_model.g.dart';

@JsonSerializable()
class CusOutstandingCountModel {
  @JsonKey(name: 'DueCount')
  String? dueCount;
  @JsonKey(name: 'DueAmount')
  String? dueAmount;
  @JsonKey(name: 'OverDueCount')
  String? overDueCount;
  @JsonKey(name: 'OverDueAmount')
  String? overDueAmount;
  String? totCount;
  String? totAmount;

  CusOutstandingCountModel({
    this.dueCount,
    this.dueAmount,
    this.overDueCount,
    this.overDueAmount,
    this.totCount,
    this.totAmount,
  });

  factory CusOutstandingCountModel.fromJson(Map<String, dynamic> json) {
    return _$CusOutstandingCountModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CusOutstandingCountModelToJson(this);
}
