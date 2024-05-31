import 'package:json_annotation/json_annotation.dart';

part 'matrial_apr_req_prd_model.g.dart';

@JsonSerializable()
class MatrialAprReqPrdModel {
  @JsonKey(name: 'mrd_ID')
  String? mrdId;
  @JsonKey(name: 'prd_ID')
  String? prdId;
  @JsonKey(name: 'ReqHUOM')
  String? reqHuom;
  @JsonKey(name: 'ReqLUOM')
  String? reqLuom;
  @JsonKey(name: 'RequestedHQty')
  String? requestedHQty;
  @JsonKey(name: 'RequestedLQty')
  String? requestedLQty;
  @JsonKey(name: 'HQTY')
  String? hqty;
  @JsonKey(name: 'LQTY')
  String? lqty;

  MatrialAprReqPrdModel({
    this.mrdId,
    this.prdId,
    this.reqHuom,
    this.reqLuom,
    this.requestedHQty,
    this.requestedLQty,
    this.hqty,
    this.lqty,
  });

  factory MatrialAprReqPrdModel.fromJson(Map<String, dynamic> json) {
    return _$MatrialAprReqPrdModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MatrialAprReqPrdModelToJson(this);
}
