import 'package:json_annotation/json_annotation.dart';

part 'target_header_list_model.g.dart';

@JsonSerializable()
class TargetHeaderListModel {
  @JsonKey(name: 'rot_ID')
  String? rotID;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'Arrot_Name')
  String? arrotName;
  @JsonKey(name: 'TargetAmt')
  String? targetAmt;
  @JsonKey(name: 'TargetQty')
  String? targetQty;
  @JsonKey(name: 'AchAmt')
  String? achAmt;
  @JsonKey(name: 'AchQty')
  String? achQty;

  TargetHeaderListModel({
    this.rotID,
    this.rotCode,
    this.rotName,
    this.targetAmt,
    this.targetQty,
    this.achAmt,
    this.achQty,
  });

  factory TargetHeaderListModel.fromJson(Map<String, dynamic> json) {
    return _$TargetHeaderListModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TargetHeaderListModelToJson(this);
}
