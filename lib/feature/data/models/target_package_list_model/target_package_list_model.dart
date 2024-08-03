import 'package:json_annotation/json_annotation.dart';

part 'target_package_list_model.g.dart';

@JsonSerializable()
class TargetPackageListModel {
  @JsonKey(name: 'prdID')
  String? prdId;
  String? prdCode;
  String? prdName;
  @JsonKey(name: 'AchAmt')
  String? achAmt;
  @JsonKey(name: 'AchQty')
  String? achQty;

  TargetPackageListModel({
    this.prdId,
    this.prdCode,
    this.prdName,
    this.achAmt,
    this.achQty,
  });

  factory TargetPackageListModel.fromJson(Map<String, dynamic> json) {
    return _$TargetPackageListModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TargetPackageListModelToJson(this);
}
