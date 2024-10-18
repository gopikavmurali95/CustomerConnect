import 'package:json_annotation/json_annotation.dart';

part 'customer_foc_approve_and_reject_model.g.dart';

@JsonSerializable()
class CustomerFocApproveAndRejectModel {
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'Res')
  String? res;

  CustomerFocApproveAndRejectModel({this.status, this.res});

  factory CustomerFocApproveAndRejectModel.fromJson(Map<String, dynamic> json) {
    return _$CustomerFocApproveAndRejectModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CustomerFocApproveAndRejectModelToJson(this);
  }
}
