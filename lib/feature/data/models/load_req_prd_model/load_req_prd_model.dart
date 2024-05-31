import 'package:json_annotation/json_annotation.dart';

part 'load_req_prd_model.g.dart';

@JsonSerializable()
class LoadReqPrdModel {
  @JsonKey(name: 'lrd_prd_ID')
  String? lrdPrdId;
  @JsonKey(name: 'lrd_HQty')
  String? lrdHQty;
  @JsonKey(name: 'lrd_LQty')
  String? lrdLQty;
  @JsonKey(name: 'lrd_LUOM')
  String? lrdLuom;
  @JsonKey(name: 'lrd_HUOM')
  String? lrdHuom;
  @JsonKey(name: 'lrd_totalQty')
  String? lrdTotalQty;
  @JsonKey(name: 'txt_apv_HQty')
  String? txtApvHQty;
  @JsonKey(name: 'txt_apv_LQty')
  String? txtApvLQty;
  @JsonKey(name: 'lrd_ID')
  String? lrdId;

  LoadReqPrdModel({
    this.lrdPrdId,
    this.lrdHQty,
    this.lrdLQty,
    this.lrdLuom,
    this.lrdHuom,
    this.lrdTotalQty,
    this.txtApvHQty,
    this.txtApvLQty,
    this.lrdId,
  });

  factory LoadReqPrdModel.fromJson(Map<String, dynamic> json) {
    return _$LoadReqPrdModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoadReqPrdModelToJson(this);
}
