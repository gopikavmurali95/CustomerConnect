import 'package:customer_connect/feature/data/models/return_approval_product/ReturnApprovalProductModel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'return_approve_in_model.g.dart';

@JsonSerializable()
class ReturnApproveInModel {

  @JsonKey(name: 'UserId')
  String? userID;
  @JsonKey(name: 'ReturnID')
  String? returnID;
  List<ReturnApprovalProductModel?>? products;

  ReturnApproveInModel({
    this.products,
    this.userID,
    this.returnID,
  });

  factory ReturnApproveInModel.fromJson(Map<String, dynamic> json) {
    return _$ReturnApproveInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ReturnApproveInModelToJson(this);
}
