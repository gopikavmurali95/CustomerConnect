import 'package:customer_connect/feature/data/models/van_to_van_product_model/van_to_van_product_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'van_to_van_approval_in_paras.g.dart';

@JsonSerializable()
class VanToVanApprovalInParas {
  List<VanToVanProductModel?>? products;

  @JsonKey(name: 'UserId')
  String? userID;
  @JsonKey(name: 'ReqID')
  String? reqID;

  VanToVanApprovalInParas({this.products, this.userID, this.reqID});

  factory VanToVanApprovalInParas.fromJson(Map<String, dynamic> json) {
    return _$VanToVanApprovalInParasFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VanToVanApprovalInParasToJson(this);
}
