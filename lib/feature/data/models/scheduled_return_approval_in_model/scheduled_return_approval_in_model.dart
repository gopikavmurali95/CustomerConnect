import 'package:customer_connect/feature/data/models/scheduled_return_prd_model/scheduled_return_prd_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'scheduled_return_approval_in_model.g.dart';

@JsonSerializable()
class ScheduledReturnApprovalInModel {
  @JsonKey(name: 'UserId')
  String? userId;
  @JsonKey(name: 'ReturnID')
  String? returnId;
  @JsonKey(name: 'RouteId')
  String? routeId;
  List<ScheduledReturnPrdModel?>? products;

  ScheduledReturnApprovalInModel({
    this.userId,
    this.returnId,
    this.routeId,
    this.products,
  });

  factory ScheduledReturnApprovalInModel.fromJson(Map<String, dynamic> json) {
    return _$ScheduledReturnApprovalInModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ScheduledReturnApprovalInModelToJson(this);
  }
}
