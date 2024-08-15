import 'package:json_annotation/json_annotation.dart';

part 'settlemenet_approval_pay_mode_detail_model.g.dart';

@JsonSerializable()
class SettlemenetApprovalPayModeDetailModel {
  @JsonKey(name: 'Mode')
  String? mode;
  @JsonKey(name: 'ExpectedAmount')
  String? expectedAmount;
  @JsonKey(name: 'CollectedAmount')
  String? collectedAmount;
  @JsonKey(name: 'Variance')
  String? variance;
  @JsonKey(name: 'ExpectedAmountTotal')
  String? expectedAmountTotal;
  @JsonKey(name: 'CollectedAmountTotal')
  String? collectedAmountTotal;
  @JsonKey(name: 'VarianceTotal')
  String? varianceTotal;
  @JsonKey(name: 'VarianceLimit')
  String? varianceLimit;
  @JsonKey(name: 'ArMode')
  String? arMode;

  SettlemenetApprovalPayModeDetailModel({
    this.mode,
    this.expectedAmount,
    this.collectedAmount,
    this.variance,
    this.expectedAmountTotal,
    this.collectedAmountTotal,
    this.varianceTotal,
    this.varianceLimit,
    this.arMode,
  });

  factory SettlemenetApprovalPayModeDetailModel.fromJson(
      Map<String, dynamic> json) {
    return _$SettlemenetApprovalPayModeDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SettlemenetApprovalPayModeDetailModelToJson(this);
  }
}
