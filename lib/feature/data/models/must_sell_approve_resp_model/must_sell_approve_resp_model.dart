import 'package:json_annotation/json_annotation.dart';

part 'must_sell_approve_resp_model.g.dart';

@JsonSerializable()
class MustSellApproveRespModel {
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'Res')
  String? res;

  MustSellApproveRespModel({this.status, this.res});

  factory MustSellApproveRespModel.fromJson(Map<String, dynamic> json) {
    return _$MustSellApproveRespModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MustSellApproveRespModelToJson(this);
}
