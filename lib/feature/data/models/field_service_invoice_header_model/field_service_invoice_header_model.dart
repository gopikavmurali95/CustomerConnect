import 'package:json_annotation/json_annotation.dart';

part 'field_service_invoice_header_model.g.dart';

@JsonSerializable()
class FieldServiceInvoiceHeaderModel {
  @JsonKey(name: 'sah_ID')
  String? sahId;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'TransTime')
  String? transTime;
  @JsonKey(name: 'usr_Name')
  String? usrName;
  @JsonKey(name: 'sjh_Number')
  String? sjhNumber;
  @JsonKey(name: 'snr_Code')
  String? snrCode;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'sah_Total')
  String? sahTotal;
  @JsonKey(name: 'sah_Discount')
  String? sahDiscount;
  @JsonKey(name: 'sah_SubTotal')
  String? sahSubTotal;
  @JsonKey(name: 'sah_VAT')
  String? sahVat;
  @JsonKey(name: 'sah_GrandTotal')
  String? sahGrandTotal;

  FieldServiceInvoiceHeaderModel({
    this.sahId,
    this.cusCode,
    this.cusName,
    this.rotCode,
    this.rotName,
    this.transTime,
    this.usrName,
    this.sjhNumber,
    this.snrCode,
    this.status,
    this.sahTotal,
    this.sahDiscount,
    this.sahSubTotal,
    this.sahVat,
    this.sahGrandTotal,
  });

  factory FieldServiceInvoiceHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$FieldServiceInvoiceHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$FieldServiceInvoiceHeaderModelToJson(this);
  }
}
