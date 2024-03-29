import 'package:json_annotation/json_annotation.dart';

part 'cus_ins_inv_type_model.g.dart';

@JsonSerializable()
class CusInsInvTypeModel {
  @JsonKey(name: 'Type')
  String? type;
  @JsonKey(name: 'Discount')
  String? discount;
  @JsonKey(name: 'VAT')
  String? vat;
  @JsonKey(name: 'Value')
  String? value;
  @JsonKey(name: 'SubTotal')
  String? subTotal;

  CusInsInvTypeModel({
    this.type,
    this.discount,
    this.vat,
    this.value,
    this.subTotal,
  });

  factory CusInsInvTypeModel.fromJson(Map<String, dynamic> json) {
    return _$CusInsInvTypeModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CusInsInvTypeModelToJson(this);
}
