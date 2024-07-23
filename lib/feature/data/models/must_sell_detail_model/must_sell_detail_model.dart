import 'package:json_annotation/json_annotation.dart';

part 'must_sell_detail_model.g.dart';

@JsonSerializable()
class MustSellDetailModel {
  @JsonKey(name: 'msd_id')
  String? msdId;
  @JsonKey(name: 'msd_msa_id')
  String? msdMsaId;
  @JsonKey(name: 'msd_prd_id')
  String? msdPrdId;
  @JsonKey(name: 'prd_Code')
  String? prdCode;
  @JsonKey(name: 'prd_Name')
  String? prdName;
  @JsonKey(name: 'msd_HQty')
  String? msdHQty;
  @JsonKey(name: 'HUOM')
  String? huom;
  @JsonKey(name: 'msd_LQty')
  String? msdLQty;
  @JsonKey(name: 'LUOM')
  String? luom;
  @JsonKey(name: 'Status')
  String? status;

  MustSellDetailModel({
    this.msdId,
    this.msdMsaId,
    this.msdPrdId,
    this.prdCode,
    this.prdName,
    this.msdHQty,
    this.huom,
    this.msdLQty,
    this.luom,
    this.status,
  });

  factory MustSellDetailModel.fromJson(Map<String, dynamic> json) {
    return _$MustSellDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MustSellDetailModelToJson(this);
}
