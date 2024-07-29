import 'package:json_annotation/json_annotation.dart';

part 'settlemenet_approval_paymode_detail_model.g.dart';

@JsonSerializable()
class SettlemenetApprovalPaymodeDetailModel {
  @JsonKey(name: 'Mode')
  String? mode;
  @JsonKey(name: 'ExpectedAmount')
  String? expectedAmount;
  @JsonKey(name: 'CollectedAmount')
  String? collectedAmount;
  @JsonKey(name: 'Variance')
  String? variance;

  SettlemenetApprovalPaymodeDetailModel({
    this.mode,
    this.expectedAmount,
    this.collectedAmount,
    this.variance,
  });

  factory SettlemenetApprovalPaymodeDetailModel.fromJson(
      Map<String, dynamic> json) {
    return _$SettlemenetApprovalPaymodeDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SettlemenetApprovalPaymodeDetailModelToJson(this);
  }
}
