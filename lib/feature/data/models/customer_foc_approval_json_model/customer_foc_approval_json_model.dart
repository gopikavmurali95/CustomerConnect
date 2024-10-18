import 'package:json_annotation/json_annotation.dart';

part 'customer_foc_approval_json_model.g.dart';

@JsonSerializable()
class CustomerFocApprovalJsonModel {
  @JsonKey(name: 'cfh_ID')
  String? cfhId;

  CustomerFocApprovalJsonModel({this.cfhId});

  factory CustomerFocApprovalJsonModel.fromJson(Map<String, dynamic> json) {
    return _$CustomerFocApprovalJsonModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerFocApprovalJsonModelToJson(this);
}
