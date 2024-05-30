import 'package:json_annotation/json_annotation.dart';

part 'price_change_prd_model.g.dart';

@JsonSerializable()
class PriceChangePrdModel {
  @JsonKey(name: 'pcd_ID')
  String? pcdId;
  @JsonKey(name: 'Reason')
  String? reason;
  @JsonKey(name: 'Status')
  String? status;
  String? aprvdHprice;
  String? aprvdLprice;

  PriceChangePrdModel({
    this.pcdId,
    this.reason,
    this.status,
    this.aprvdHprice,
    this.aprvdLprice,
  });

  factory PriceChangePrdModel.fromJson(Map<String, dynamic> json) {
    return _$PriceChangePrdModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PriceChangePrdModelToJson(this);
}
