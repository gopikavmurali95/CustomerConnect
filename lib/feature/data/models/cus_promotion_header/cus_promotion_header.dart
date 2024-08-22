import 'package:json_annotation/json_annotation.dart';

part 'cus_promotion_header.g.dart';

@JsonSerializable()
class CusPromotionHeader {
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
  @JsonKey(name: 'ArPName')
  String? arPName;

  CusPromotionHeader({
    this.id,
    this.pName,
    this.dateRange,
    this.pCode,
    this.qCode,
    this.aCode,
    this.qid,
    this.aid,
    this.arPName,
  });

  factory CusPromotionHeader.fromJson(Map<String, dynamic> json) {
    return _$CusPromotionHeaderFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CusPromotionHeaderToJson(this);
}
