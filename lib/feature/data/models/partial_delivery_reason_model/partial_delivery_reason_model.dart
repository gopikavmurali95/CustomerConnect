import 'package:json_annotation/json_annotation.dart';

part 'partial_delivery_reason_model.g.dart';

@JsonSerializable()
class PartialDeliveryReasonModel {
  @JsonKey(name: 'rsn_ID')
  String? rsnId;
  @JsonKey(name: 'rsn_Name')
  String? rsnName;

  PartialDeliveryReasonModel({this.rsnId, this.rsnName});

  factory PartialDeliveryReasonModel.fromJson(Map<String, dynamic> json) {
    return _$PartialDeliveryReasonModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PartialDeliveryReasonModelToJson(this);
}
