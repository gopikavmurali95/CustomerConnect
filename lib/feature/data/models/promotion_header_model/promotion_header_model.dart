import 'package:json_annotation/json_annotation.dart';

part 'promotion_header_model.g.dart';

@JsonSerializable()
class PromotionHeaderModel {
  @JsonKey(name: 'ID')
  String? id;
  @JsonKey(name: 'PName')
  String? pName;
  @JsonKey(name: 'DateRange')
  String? dateRange;
  @JsonKey(name: 'PCode')
  String? pCode;
  @JsonKey(name: 'QCode')
  String? qCode;
  @JsonKey(name: 'ACode')
  String? aCode;
  @JsonKey(name: 'QID')
  String? qid;
  @JsonKey(name: 'AID')
  String? aid;
  @JsonKey(name: 'PrmName')
  String? prmName;

  PromotionHeaderModel({
    this.id,
    this.pName,
    this.dateRange,
    this.pCode,
    this.qCode,
    this.aCode,
    this.qid,
    this.aid,
    this.prmName,
  });

  factory PromotionHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$PromotionHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PromotionHeaderModelToJson(this);
}
