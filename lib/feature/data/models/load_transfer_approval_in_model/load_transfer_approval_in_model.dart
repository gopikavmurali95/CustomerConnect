import 'package:customer_connect/feature/data/models/load_transfer_prd_model/load_transfer_prd_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'load_transfer_approval_in_model.g.dart';

@JsonSerializable()
class LoadTransferApprovalInModel {
  List<LoadTransferPrdModel?>? products;
  @JsonKey(name: 'UserId')
  String? userId;
  @JsonKey(name: 'ReqID')
  String? reqId;

  LoadTransferApprovalInModel({
    this.products,
    this.userId,
    this.reqId,
  });

  factory LoadTransferApprovalInModel.fromJson(Map<String, dynamic> json) {
    return _$LoadTransferApprovalInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoadTransferApprovalInModelToJson(this);
}
