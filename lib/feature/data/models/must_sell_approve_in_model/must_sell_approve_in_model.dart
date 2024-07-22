import 'package:customer_connect/feature/data/models/must_sell_i_json_model/must_sell_i_json_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'must_sell_approve_in_model.g.dart';

@JsonSerializable()
class MustSellApproveInModel {
  @JsonKey(name: 'UserId')
  String? userId;
  @JsonKey(name: 'TransID')
  String? transId;
  @JsonKey(name: 'JSONString')
  List<MustSellIJsonModel>? jsonString;

  MustSellApproveInModel({this.userId, this.transId, this.jsonString});

  factory MustSellApproveInModel.fromJson(Map<String, dynamic> json) {
    return _$MustSellApproveInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MustSellApproveInModelToJson(this);
}
