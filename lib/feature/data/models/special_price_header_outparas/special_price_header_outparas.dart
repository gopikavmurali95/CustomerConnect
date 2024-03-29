import 'package:json_annotation/json_annotation.dart';

part 'special_price_header_outparas.g.dart';

@JsonSerializable()
class SpecialPriceHeaderOutparas {
  @JsonKey(name: 'prh_ID')
  String? prhId;
  @JsonKey(name: 'prh_Code')
  String? prhCode;
  @JsonKey(name: 'prh_Name')
  String? prhName;
  @JsonKey(name: 'StartDate')
  String? startDate;
  @JsonKey(name: 'EndDate')
  String? endDate;
  @JsonKey(name: 'prh_PayMode')
  String? prhPayMode;

  SpecialPriceHeaderOutparas({
    this.prhId,
    this.prhCode,
    this.prhName,
    this.startDate,
    this.endDate,
    this.prhPayMode,
  });

  factory SpecialPriceHeaderOutparas.fromJson(Map<String, dynamic> json) {
    return _$SpecialPriceHeaderOutparasFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SpecialPriceHeaderOutparasToJson(this);
}
