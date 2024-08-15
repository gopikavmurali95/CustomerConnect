import 'package:json_annotation/json_annotation.dart';

part 'field_service_detail_model.g.dart';

@JsonSerializable()
class FieldServiceDetailModel {
  @JsonKey(name: 'sad_ID')
  String? sadId;
  @JsonKey(name: 'prd_ID')
  String? prdId;
  @JsonKey(name: 'prd_Code')
  String? prdCode;
  @JsonKey(name: 'prd_Name')
  String? prdName;
  @JsonKey(name: 'sad_UOM')
  String? sadUom;
  @JsonKey(name: 'sad_Qty')
  String? sadQty;
  @JsonKey(name: 'sad_Price')
  String? sadPrice;
  @JsonKey(name: 'sad_Discount')
  String? sadDiscount;
  @JsonKey(name: 'sad_LineTotal')
  String? sadLineTotal;
  @JsonKey(name: 'Arprd_Name')
  String? arprdName;

  FieldServiceDetailModel(
      {this.sadId,
      this.prdId,
      this.prdCode,
      this.prdName,
      this.sadUom,
      this.sadQty,
      this.sadPrice,
      this.sadDiscount,
      this.sadLineTotal,
      this.arprdName});

  factory FieldServiceDetailModel.fromJson(Map<String, dynamic> json) {
    return _$FieldServiceDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FieldServiceDetailModelToJson(this);
}
