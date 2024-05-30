import 'package:customer_connect/feature/data/models/price_change_prd_model/price_change_prd_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'approve_price_changein_model.g.dart';

@JsonSerializable()
class ApprovePriceChangeinModel {
  @JsonKey(name: 'PriceID')
  String? priceId;
  @JsonKey(name: 'UserId')
  String? userId;
  List<PriceChangePrdModel?>? products;

  ApprovePriceChangeinModel({
    this.priceId,
    this.userId,
    this.products,
  });

  factory ApprovePriceChangeinModel.fromJson(Map<String, dynamic> json) {
    return _$ApprovePriceChangeinModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApprovePriceChangeinModelToJson(this);
}
