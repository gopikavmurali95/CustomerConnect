import 'package:customer_connect/feature/data/models/customer_foc_approval_json_model/customer_foc_approval_json_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer_foc_approval_in_model.g.dart';

@JsonSerializable()
class CustomerFocApprovalInModel {

  @JsonKey(name: 'remarks')
  String? remarks;
  @JsonKey(name: 'userId')
  String? userId;
  @JsonKey(name: 'HeaderId')
  String? headerId;
  @JsonKey(name: 'JSONString')
  List<CustomerFocApprovalJsonModel>? jsonString;

  CustomerFocApprovalInModel({this.remarks, this.userId, this.headerId,this.jsonString});

  factory CustomerFocApprovalInModel.fromJson(Map<String, dynamic> json) {
    return _$CustomerFocApprovalInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerFocApprovalInModelToJson(this);
}
