import 'package:json_annotation/json_annotation.dart';

part 'van_to_van_product_model.g.dart';

@JsonSerializable()
class VanToVanProductModel {
  @JsonKey(name: 'vvd_ID')
  String? vvdId;
  @JsonKey(name: 'HQTY')
  String? hqty;
  @JsonKey(name: 'LQTY')
  String? lqty;
  @JsonKey(name: 'Status')
  String? status;

  VanToVanProductModel({this.vvdId, this.hqty, this.lqty, this.status});

  factory VanToVanProductModel.fromJson(Map<String, dynamic> json) {
    return _$VanToVanProductModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VanToVanProductModelToJson(this);
}
