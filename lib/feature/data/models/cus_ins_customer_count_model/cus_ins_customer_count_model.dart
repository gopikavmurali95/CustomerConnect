import 'package:json_annotation/json_annotation.dart';

part 'cus_ins_customer_count_model.g.dart';

@JsonSerializable()
class CusInsCustomerCountModel {
  @JsonKey(name: 'Total_Count')
  String? totalCount;

  CusInsCustomerCountModel({this.totalCount});

  factory CusInsCustomerCountModel.fromJson(Map<String, dynamic> json) {
    return _$CusInsCustomerCountModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CusInsCustomerCountModelToJson(this);
}
