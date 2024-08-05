import 'package:json_annotation/json_annotation.dart';

part 'target_details_list_model.g.dart';

@JsonSerializable()
class TargetDetailsListModel {
  @JsonKey(name: 'pkgID')
  String? pkgId;
  @JsonKey(name: 'pkgName')
  String? pkgName;
  @JsonKey(name: 'TargetAmt')
  String? targetAmt;
  @JsonKey(name: 'TargetQty')
  String? targetQty;
  @JsonKey(name: 'AchAmt')
  String? achAmt;
  @JsonKey(name: 'AchQty')
  String? achQty;
  @JsonKey(name: 'AchAmtPerc')
  String? achAmtPerc;
  @JsonKey(name: 'AchQtyPerc')
  String? achQtyPerc;
  @JsonKey(name: 'MTDGapAmt')
  String? mTDGapAmt;
  @JsonKey(name: 'MTDGapQty')
  String? mTDGapQty;
  @JsonKey(name: 'MonthGapAmt')
  String? monthGapAmt;
  @JsonKey(name: 'MonthGapQty')
  String? monthGapQty;
  @JsonKey(name: 'MonthGapAmtPerc')
  String? monthGapAmtPerc;
  @JsonKey(name: 'MonthGapQtyPerc')
  String? monthGapQtyPerc;

  TargetDetailsListModel(
      {this.pkgId,
      this.pkgName,
      this.targetAmt,
      this.targetQty,
      this.achAmt,
      this.achQty,
      this.achAmtPerc,
      this.achQtyPerc,
      this.mTDGapAmt,
      this.mTDGapQty,
      this.monthGapAmt,
      this.monthGapAmtPerc,
      this.monthGapQty,
      this.monthGapQtyPerc});

  factory TargetDetailsListModel.fromJson(Map<String, dynamic> json) {
    return _$TargetDetailsListModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TargetDetailsListModelToJson(this);
}
