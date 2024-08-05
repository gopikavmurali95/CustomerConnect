import 'package:json_annotation/json_annotation.dart';

part 'target_details_graph_qty_model.g.dart';

@JsonSerializable()
class TargetDetailsGraphQtyModel {
  @JsonKey(name: 'TotalQty')
  String? totalQty;
  @JsonKey(name: 'AchQty')
  String? achQty;
  @JsonKey(name: 'MTDGapQty')
  String? mtdGapQty;
  @JsonKey(name: 'MonthGapQty')
  String? monthGapQty;

  TargetDetailsGraphQtyModel({
    this.totalQty,
    this.achQty,
    this.mtdGapQty,
    this.monthGapQty,
  });

  factory TargetDetailsGraphQtyModel.fromJson(Map<String, dynamic> json) {
    return _$TargetDetailsGraphQtyModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TargetDetailsGraphQtyModelToJson(this);
}
