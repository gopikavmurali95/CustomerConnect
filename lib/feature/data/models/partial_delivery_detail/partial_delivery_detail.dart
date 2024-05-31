import 'package:json_annotation/json_annotation.dart';

part 'partial_delivery_detail.g.dart';

@JsonSerializable()
class PartialDeliveryDetail {
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

  PartialDeliveryDetail({
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

  factory PartialDeliveryDetail.fromJson(Map<String, dynamic> json) {
    return _$PartialDeliveryDetailFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PartialDeliveryDetailToJson(this);
}
