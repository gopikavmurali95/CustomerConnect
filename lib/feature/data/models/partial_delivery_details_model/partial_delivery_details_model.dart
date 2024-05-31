import 'package:json_annotation/json_annotation.dart';

part 'partial_delivery_details_model.g.dart';

@JsonSerializable()
class PartialDeliveryDetailsModel {
  @JsonKey(name: 'dad_ID')
  String? dadId;
  @JsonKey(name: 'dad_prd_ID')
  String? dadPrdId;
  @JsonKey(name: 'prd_Code')
  String? prdCode;
  @JsonKey(name: 'prd_Name')
  String? prdName;
  @JsonKey(name: 'OrderedHQty')
  String? orderedHQty;
  @JsonKey(name: 'OrderedLQty')
  String? orderedLQty;
  String? deliveringHQty;
  @JsonKey(name: 'DeliveringLQty')
  String? deliveringLQty;
  @JsonKey(name: 'rsn_Name')
  String? rsnName;
  @JsonKey(name: 'prd_Description')
  String? prdDescription;
  @JsonKey(name: 'rsn_ID')
  String? rsnId;
  @JsonKey(name: 'rsn_Type')
  String? rsnType;

  PartialDeliveryDetailsModel({
    this.dadId,
    this.dadPrdId,
    this.prdCode,
    this.prdName,
    this.orderedHQty,
    this.orderedLQty,
    this.deliveringHQty,
    this.deliveringLQty,
    this.rsnName,
    this.prdDescription,
    this.rsnId,
    this.rsnType,
  });

  factory PartialDeliveryDetailsModel.fromJson(Map<String, dynamic> json) {
    return _$PartialDeliveryDetailsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PartialDeliveryDetailsModelToJson(this);
}
