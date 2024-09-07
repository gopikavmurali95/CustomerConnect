import 'package:json_annotation/json_annotation.dart';

part 'activity_review_detail_list_model.g.dart';

@JsonSerializable()
class ActivityReviewDetailListModel {
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'StartTime')
  String? startTime;
  @JsonKey(name: 'EndTime')
  String? endTime;
  @JsonKey(name: 'Duration')
  String? duration;
  @JsonKey(name: 'SalesCS')
  String? salesCs;
  @JsonKey(name: 'SaleCR')
  String? saleCr;
  @JsonKey(name: 'ReturnCS')
  String? returnCs;
  @JsonKey(name: 'ReturnCR')
  String? returnCr;
  @JsonKey(name: 'CollectCS')
  String? collectCs;
  @JsonKey(name: 'CollectCR')
  String? collectCr;
  @JsonKey(name: 'TotSalesCS')
  String? totSalesCs;
  @JsonKey(name: 'TotSaleCR')
  String? totSaleCr;
  @JsonKey(name: 'TotReturnCS')
  String? totReturnCs;
  @JsonKey(name: 'TotReturnCR')
  String? totReturnCr;
  @JsonKey(name: 'TotCollectCS')
  String? totCollectCs;
  @JsonKey(name: 'TotCollectCR')
  String? totCollectCr;
  @JsonKey(name: 'cus_ArName')
  String? cusArname;

  ActivityReviewDetailListModel({
    this.cusCode,
    this.cusName,
    this.startTime,
    this.endTime,
    this.duration,
    this.salesCs,
    this.saleCr,
    this.returnCs,
    this.returnCr,
    this.collectCs,
    this.collectCr,
    this.totSalesCs,
    this.totSaleCr,
    this.totReturnCs,
    this.totReturnCr,
    this.totCollectCs,
    this.totCollectCr,
  });

  factory ActivityReviewDetailListModel.fromJson(Map<String, dynamic> json) {
    return _$ActivityReviewDetailListModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ActivityReviewDetailListModelToJson(this);
}
