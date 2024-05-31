import 'package:customer_connect/feature/data/models/partial_delivery_product_model/partial_delivery_product_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'partial_delivery_approval_model.g.dart';

@JsonSerializable()
class PartialDeliveryApprovalModel {
  @JsonKey(name: 'ReturnID')
  String? returnId;
  @JsonKey(name: 'UserId')
  String? userId;
  List<PartialDeliveryProductModel?>? products;

  PartialDeliveryApprovalModel({this.returnId, this.userId, this.products});

  factory PartialDeliveryApprovalModel.fromJson(Map<String, dynamic> json) {
    return _$PartialDeliveryApprovalModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PartialDeliveryApprovalModelToJson(this);
}
