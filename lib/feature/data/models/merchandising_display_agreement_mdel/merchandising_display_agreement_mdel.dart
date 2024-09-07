import 'package:json_annotation/json_annotation.dart';

part 'merchandising_display_agreement_mdel.g.dart';

@JsonSerializable()
class MerchandisingDisplayAgreementMdel {
  @JsonKey(name: 'Number')
  String? number;
  @JsonKey(name: 'Type')
  String? type;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'StartDate')
  String? startDate;
  @JsonKey(name: 'EndDate')
  String? endDate;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'ArType')
  String? arType;
  @JsonKey(name: 'cus_ArName')
  String? cusArName;
  @JsonKey(name: 'ArStatus')
  String? arStatus;

  MerchandisingDisplayAgreementMdel({
    this.number,
    this.type,
    this.cusCode,
    this.cusName,
    this.startDate,
    this.endDate,
    this.status,
  });

  factory MerchandisingDisplayAgreementMdel.fromJson(
      Map<String, dynamic> json) {
    return _$MerchandisingDisplayAgreementMdelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MerchandisingDisplayAgreementMdelToJson(this);
  }
}
