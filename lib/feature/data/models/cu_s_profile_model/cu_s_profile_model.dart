import 'package:json_annotation/json_annotation.dart';

part 'cu_s_profile_model.g.dart';

@JsonSerializable()
class CuSProfileModel {
  @JsonKey(name: 'cus_ID')
  String? cusId;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'cus_Address')
  String? cusAddress;
  @JsonKey(name: 'cus_AddressArabic')
  String? cusAddressArabic;
  @JsonKey(name: 'cus_Email')
  String? cusEmail;
  @JsonKey(name: 'cus_GeoCode')
  String? cusGeoCode;
  @JsonKey(name: 'cus_NameArabic')
  String? cusNameArabic;
  @JsonKey(name: 'cus_Phone')
  String? cusPhone;
  @JsonKey(name: 'cus_WhatsappNumber')
  String? cusWhatsappNumber;

  CuSProfileModel({
    this.cusId,
    this.cusCode,
    this.cusName,
    this.cusAddress,
    this.cusAddressArabic,
    this.cusEmail,
    this.cusGeoCode,
    this.cusNameArabic,
    this.cusPhone,
    this.cusWhatsappNumber,
  });

  factory CuSProfileModel.fromJson(Map<String, dynamic> json) {
    return _$CuSProfileModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CuSProfileModelToJson(this);
}
