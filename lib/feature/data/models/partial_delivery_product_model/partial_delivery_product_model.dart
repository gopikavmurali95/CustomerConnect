import 'package:json_annotation/json_annotation.dart';

part 'partial_delivery_product_model.g.dart';

@JsonSerializable()
class PartialDeliveryProductModel {
  @JsonKey(name: 'dad_ID')
  String? dadId;
  @JsonKey(name: 'Reason')
  String? reason;
  @JsonKey(name: 'Status')
  String? status;

  PartialDeliveryProductModel({this.dadId, this.reason, this.status});

  factory PartialDeliveryProductModel.fromJson(Map<String, dynamic> json) {
    return _$PartialDeliveryProductModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PartialDeliveryProductModelToJson(this);
}
