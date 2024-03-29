import 'package:json_annotation/json_annotation.dart';

part 'ar_total_collection_model.g.dart';

@JsonSerializable()
class ArTotalCollectionModel {
  @JsonKey(name: 'Total_Count')
  String? totalCount;
  @JsonKey(name: 'Total_Amount')
  String? totalAmount;
  @JsonKey(name: 'HC_Count')
  String? hcCount;
  @JsonKey(name: 'HC_Amount')
  String? hcAmount;
  @JsonKey(name: 'OP_Count')
  String? opCount;
  @JsonKey(name: 'OP_Amount')
  String? opAmount;
  @JsonKey(name: 'POS_Count')
  String? posCount;
  @JsonKey(name: 'POS_Amount')
  String? posAmount;
  @JsonKey(name: 'Cheque_Count')
  String? chequeCount;
  @JsonKey(name: 'Cheque_Amount')
  String? chequeAmount;

  ArTotalCollectionModel({
    this.totalCount,
    this.totalAmount,
    this.hcCount,
    this.hcAmount,
    this.opCount,
    this.opAmount,
    this.posCount,
    this.posAmount,
    this.chequeCount,
    this.chequeAmount,
  });

  factory ArTotalCollectionModel.fromJson(Map<String, dynamic> json) {
    return _$ArTotalCollectionModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ArTotalCollectionModelToJson(this);
}
