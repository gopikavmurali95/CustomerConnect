import 'package:json_annotation/json_annotation.dart';

part 'price_change_details_model.g.dart';

@JsonSerializable()
class PriceChangeDetailsModel {
  @JsonKey(name: 'pcd_ID')
  String? pcdId;
  @JsonKey(name: 'pcd_pch_ID')
  String? pcdPchId;
  @JsonKey(name: 'pcd_prd_ID')
  String? pcdPrdId;
  @JsonKey(name: 'prd_Name')
  String? prdName;
  @JsonKey(name: 'prd_Code')
  String? prdCode;
  @JsonKey(name: 'pcd_HigherQty')
  String? pcdHigherQty;
  @JsonKey(name: 'pcd_HigherUOM')
  String? pcdHigherUom;
  @JsonKey(name: 'pcd_LowerQty')
  String? pcdLowerQty;
  @JsonKey(name: 'pcd_LowerUOM')
  String? pcdLowerUom;
  @JsonKey(name: 'pcd_stdHPrice')
  String? pcdStdHPrice;
  @JsonKey(name: 'pcd_changedHPrice')
  String? pcdChangedHPrice;
  @JsonKey(name: 'pcd_stdLPrice')
  String? pcdStdLPrice;
  @JsonKey(name: 'pcd_changedLprice')
  String? pcdChangedLprice;
  @JsonKey(name: 'pcd_HigherLimitPercent')
  String? pcdHigherLimitPercent;
  @JsonKey(name: 'pcd_LowerLimtPercent')
  String? pcdLowerLimtPercent;
  String? maxHigherlimit;
  @JsonKey(name: 'MinHigherLimit')
  String? minHigherLimit;
  @JsonKey(name: 'MinLowerLimit')
  String? minLowerLimit;
  String? maxLowerlimit;
  @JsonKey(name: 'pcd_ApprovalStatus')
  String? pcdApprovalStatus;

  @JsonKey(name: 'Arprd_Name')
  String? arprdName;
  @JsonKey(name: 'Arpcd_ApprovalStatus')
  String? arpcdApprovalStatus;

  PriceChangeDetailsModel({
    this.pcdId,
    this.pcdPchId,
    this.pcdPrdId,
    this.prdName,
    this.prdCode,
    this.pcdHigherQty,
    this.pcdHigherUom,
    this.pcdLowerQty,
    this.pcdLowerUom,
    this.pcdStdHPrice,
    this.pcdChangedHPrice,
    this.pcdStdLPrice,
    this.pcdChangedLprice,
    this.pcdHigherLimitPercent,
    this.pcdLowerLimtPercent,
    this.maxHigherlimit,
    this.minHigherLimit,
    this.minLowerLimit,
    this.maxLowerlimit,
    this.pcdApprovalStatus,
    this.arpcdApprovalStatus,
    this.arprdName,
  });

  factory PriceChangeDetailsModel.fromJson(Map<String, dynamic> json) {
    return _$PriceChangeDetailsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PriceChangeDetailsModelToJson(this);
}
