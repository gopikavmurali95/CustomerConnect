import 'package:json_annotation/json_annotation.dart';

part 'activity_review_sales_model.g.dart';

@JsonSerializable()
class ActivityReviewSalesModel {
  @JsonKey(name: 'SalesAmt')
  String? salesAmt;
  @JsonKey(name: 'TotVisits')
  String? totVisits;
  @JsonKey(name: 'ProdVisits')
  String? prodVisits;

  ActivityReviewSalesModel({
    this.salesAmt,
    this.totVisits,
    this.prodVisits,
  });

  factory ActivityReviewSalesModel.fromJson(Map<String, dynamic> json) {
    return _$ActivityReviewSalesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ActivityReviewSalesModelToJson(this);
}
