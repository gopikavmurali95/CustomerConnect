import 'package:json_annotation/json_annotation.dart';

part 'approve_price_changein_model.g.dart';

@JsonSerializable()
class ApprovePriceChangeinModel {
  @JsonKey(name: 'PriceID')
  String? priceId;
  @JsonKey(name: 'UserId')
  String? userId;
  @JsonKey(name: 'pcd_ID')
  String? pcdId;
  @JsonKey(name: 'Reason')
  String? reason;
  @JsonKey(name: 'Status')
  String? status;
  String? aprvdHprice;
  String? aprvdLprice;

  ApprovePriceChangeinModel({
    this.priceId,
    this.userId,
    this.pcdId,
    this.reason,
    this.status,
    this.aprvdHprice,
    this.aprvdLprice,
  });

  factory ApprovePriceChangeinModel.fromJson(Map<String, dynamic> json) {
    return _$ApprovePriceChangeinModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApprovePriceChangeinModelToJson(this);
}
