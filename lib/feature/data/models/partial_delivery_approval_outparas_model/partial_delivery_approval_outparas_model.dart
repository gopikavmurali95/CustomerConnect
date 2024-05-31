import 'package:json_annotation/json_annotation.dart';

part 'partial_delivery_approval_outparas_model.g.dart';

@JsonSerializable()
class PartialDeliveryApprovalOutparasModel {
  @JsonKey(name: 'Status')
  String? status;

  PartialDeliveryApprovalOutparasModel({this.status});

  factory PartialDeliveryApprovalOutparasModel.fromJson(
      Map<String, dynamic> json) {
    return _$PartialDeliveryApprovalOutparasModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PartialDeliveryApprovalOutparasModelToJson(this);
  }
}
