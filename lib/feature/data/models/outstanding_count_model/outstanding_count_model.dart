import 'package:json_annotation/json_annotation.dart';

part 'outstanding_count_model.g.dart';

@JsonSerializable()
class OutstandingCountModel {
  @JsonKey(name: 'DueCount')
  String? dueCount;
  @JsonKey(name: 'DueAmount')
  String? dueAmount;
  @JsonKey(name: 'OverDueCount')
  String? overDueCount;
  @JsonKey(name: 'OverDueAmount')
  String? overDueAmount;
  @JsonKey(name: 'TotCount')
  String? totCount;
  @JsonKey(name: 'TotAmount')
  String? totAmount;

  OutstandingCountModel({
    this.dueCount,
    this.dueAmount,
    this.overDueCount,
    this.overDueAmount,
    this.totCount,
    this.totAmount,
  });

  factory OutstandingCountModel.fromJson(Map<String, dynamic> json) {
    return _$OutstandingCountModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OutstandingCountModelToJson(this);
}
