import 'package:json_annotation/json_annotation.dart';

part 'van_to_van_details_model.g.dart';

@JsonSerializable()
class VanToVanDetailsModel {
  @JsonKey(name: 'vvd_ID')
  String? vvdId;
  @JsonKey(name: 'prd_Code')
  String? prdCode;
  @JsonKey(name: 'prd_Name')
  String? prdName;
  @JsonKey(name: 'vvd_HUOM')
  String? vvdHuom;
  @JsonKey(name: 'vvd_LUOM')
  String? vvdLuom;
  @JsonKey(name: 'vvd_HQty')
  String? vvdHQty;
  @JsonKey(name: 'vvd_LQty')
  String? vvdLQty;
  @JsonKey(name: 'vvd_ConfirmHQty')
  String? vvdConfirmHQty;
  @JsonKey(name: 'vvd_ConfirmLQty')
  String? vvdConfirmLQty;
  @JsonKey(name: 'vvd_ConfirmHUOM')
  String? vvdConfirmHuom;
  @JsonKey(name: 'vvd_ConfirmLUOM')
  String? vvdConfirmLuom;
  @JsonKey(name: 'AdjHQty')
  String? adjHQty;
  @JsonKey(name: 'AdjLQty')
  String? adjLQty;
  @JsonKey(name: 'Status')
  String? status;

  VanToVanDetailsModel({
    this.vvdId,
    this.prdCode,
    this.prdName,
    this.vvdHuom,
    this.vvdLuom,
    this.vvdHQty,
    this.vvdLQty,
    this.vvdConfirmHQty,
    this.vvdConfirmLQty,
    this.vvdConfirmHuom,
    this.vvdConfirmLuom,
    this.adjHQty,
    this.adjLQty,
    this.status,
  });

  factory VanToVanDetailsModel.fromJson(Map<String, dynamic> json) {
    return _$VanToVanDetailsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VanToVanDetailsModelToJson(this);
}
